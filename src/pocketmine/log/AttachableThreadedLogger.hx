package pocketmine.log;

import php.interfaces.Throwable;
import php.TypedArray;

@:autoBuild(pocketmine.log.AbstractBuilder.build())
@:native("AttachableThreadedLogger")
extern class AttachableThreadedLogger extends ThreadedLogger {

    private var attachments:TypedArray<Int, ThreadedLoggerAttachment>;

    private function new();

    function addAttachment(attachment:ThreadedLoggerAttachment):Void;

    function removeAttachment(attachment:ThreadedLoggerAttachment):Void;
    
    function removeAttachments():Void;
    
    function getAttachments():TypedArray<Int, ThreadedLoggerAttachment>;

    @:abstract override function emergency(message:String):Void;

    @:abstract override function alert(message:String):Void;

    @:abstract override function critical(message:String):Void;

    @:abstract override function error(message:String):Void;

    @:abstract override function warning(message:String):Void;

    @:abstract override function notice(message:String):Void;

    @:abstract override function info(message:String):Void;

    @:abstract override function debug(message:String):Void;

    @:abstract override function log(level:String, message:String):Void;

    @:abstract override function logException(e:Throwable, trace:TypedArray<Int, String>):Void;

}
