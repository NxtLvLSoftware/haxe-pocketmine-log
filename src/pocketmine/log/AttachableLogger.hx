package pocketmine.log;

import php.TypedArray;

@:native("AttachableLogger")
extern interface AttachableLogger {

    function addAttachment(attachment:LoggerAttachment):Void;

    function removeAttachment(attachment:LoggerAttachment):Void;

    function removeAttachments():Void;

    function getAttachments():TypedArray<Int, LoggerAttachment>;

}
