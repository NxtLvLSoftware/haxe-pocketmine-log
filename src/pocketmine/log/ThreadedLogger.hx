package pocketmine.log;

import php.interfaces.Throwable;
import php.pthreads.Thread;
import php.TypedArray;

@:autoBuild(pocketmine.log.AbstractBuilder.build())
@:native("ThreadedLogger")
extern class ThreadedLogger extends Thread implements Logger{

    private function new();

    @:abstract function emergency(message:String):Void;

    @:abstract function alert(message:String):Void;

    @:abstract function critical(message:String):Void;

    @:abstract function error(message:String):Void;

    @:abstract function warning(message:String):Void;

    @:abstract function notice(message:String):Void;

    @:abstract function info(message:String):Void;

    @:abstract function debug(message:String):Void;

    @:abstract function log(level:String, message:String):Void;

    @:abstract function logException(e:Throwable, trace:TypedArray<Int, String>):Void;

}
