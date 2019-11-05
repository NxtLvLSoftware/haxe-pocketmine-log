package pocketmine.log;

import php.Syntax;

@:native("LogLevel")
extern interface LogLevel {

    public static var EMERGENCY(get, never):String;

    private static inline function get_EMERGENCY():String return Syntax.code("LogLevel::EMERGENCY");

    public static var ALERT(get, never):String;

    private static inline function get_ALERT():String return Syntax.code("LogLevel::ALERT");

    public static var CRITICAL(get, never):String;

    private static inline function get_CRITICAL():String return Syntax.code("LogLevel::CRITICAL");

    public static var ERROR(get, never):String;

    private static inline function get_ERROR():String return Syntax.code("LogLevel::ERROR");

    public static var WARNING(get, never):String;

    private static inline function get_WARNING():String return Syntax.code("LogLevel::WARNING");

    public static var NOTICE(get, never):String;

    private static inline function get_NOTICE():String return Syntax.code("LogLevel::NOTICE");

    public static var INFO(get, never):String;

    private static inline function get_INFO():String return Syntax.code("LogLevel::INFO");

    public static var DEBUG(get, never):String;

    private static inline function get_DEBUG():String return Syntax.code("LogLevel::DEBUG");

}
