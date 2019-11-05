package pocketmine.log;

import php.pthreads.Volatile;

@:autoBuild(pocketmine.log.AbstractBuilder.build())
@:native("ThreadedLoggerAttachment")
extern class ThreadedLoggerAttachment extends Volatile implements LoggerAttachment {

    private function new();

    @:final function call(level:String, message:String):Void;

    @:abstract function log(level:String, message:String):Void;

}
