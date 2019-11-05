package pocketmine.log;

@:native("PrefixedLogger")
extern class PrefixedLogger extends SimpleLogger{

    private var delegate:Logger;

    private var prefix:String;

    function new(delegate:Logger, prefix:String);

    override function log(level:String, message:String):Void;

    function getPrefix():String;

    function setPrefix(prefix:String):Void;

}
