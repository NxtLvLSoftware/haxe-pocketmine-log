package pocketmine.log;

import php.TypedArray;
import php.interfaces.Throwable;

@:native("SimpleLogger")
extern class SimpleLogger {

    public function new();

    function emergency(message:String):Void;

    function alert(message:String):Void;

    function critical(message:String):Void;

    function error(message:String):Void;

    function warning(message:String):Void;

    function notice(message:String):Void;

    function info(message:String):Void;

    function debug(message:String):Void;

    function log(level:String, message:String):Void;

    function logException(e:Throwable, trace:TypedArray<Int, String>):Void;

}
