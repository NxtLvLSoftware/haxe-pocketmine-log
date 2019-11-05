package pocketmine.log;

import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.Type;

class AbstractBuilder {

    macro static public function build():Array<Field> {
        var fields = Context.getBuildFields();
        var cCur = Context.getLocalClass().get();
        var fieldMap = [for (f in fields) f.name => true];
        function loop(c:ClassType) {
            for (f in c.fields.get()) {
                if (f.meta.has(":abstract")) {
                    if (!fieldMap.exists(f.name)) {
                        Context.error("Missing implementation for abstract field " + f.name, cCur.pos);
                    }
                } else {
                    fieldMap.set(f.name, true);
                }
            }
            if (c.superClass != null)
                loop(c.superClass.t.get());
        }
        if (cCur.superClass != null)
            loop(cCur.superClass.t.get());
        return null;
    }

}
