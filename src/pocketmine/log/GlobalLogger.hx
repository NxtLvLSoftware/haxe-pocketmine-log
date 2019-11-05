package pocketmine.log;

/**
 * Global accessor for logger
 */
@:native("GlobalLogger")
@:final extern class GlobalLogger {

    public function new();

    private static var logger:Null<Logger>;

    static function get():Logger;

    static function set(logger:Logger):Void;

}
