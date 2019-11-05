package pocketmine.log;

@:native("LoggerAttachment")
extern interface LoggerAttachment {

    function log(level:String, message:String):Void;

}
