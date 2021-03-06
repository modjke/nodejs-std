package nodejs.webkit;

@:jsRequire("nw.gui", "Window")
extern class Window {
	public var window : js.html.DOMWindow;
	public var x : Int;
	public var y : Int;
	public var width : Int;
	public var height : Int;
	public var title : String;
	public var isFullScreen : Bool;
	public var isKioskMode : Bool;
	public var zoomLevel : Int;
	public var menu : Menu;
	public function moveTo( x : Int, y : Int ) : Void;
	public function moveBy( x : Int, y : Int ) : Void;
	public function resizeTo( w : Int, h : Int ) : Void;
	public function resizeBy( w : Int, h : Int ) : Void;
	public function focus() : Void;
	public function blur() : Void;
	public function show() : Void;
	public function hide() : Void;
	public function close( ?force : Bool ) : Void;
	public function reload() : Void;
	public function reloadIgnoringCache() : Void;
	public function maximize() : Void;
	public function unmaximize() : Void;
	public function minimize() : Void;
	public function restore() : Void;
	public function enterFullscreen() : Void;
	public function leaveFullscreen() : Void;
	public function showDevTools( ?id : String, ?headless : Bool ) : Void;
	public function closeDevTools() : Void;
	public function enterKioskMode() : Void;
	public function leaveKioskMode(): Void;	
	public function capturePage(callback:String->Void):Void;
	public function isDevToolsOpen():Bool;
	
	@:overload(function( event : String, callb : Dynamic -> Dynamic ) : Void {})
	@:overload(function( event : String, callb : Void -> Dynamic ) : Void {})
	@:overload(function( event : String, callb : Dynamic -> Void ) : Void {})
	public function on( event : String, callb : Void -> Void ) : Void;
	
	@:overload(function( event : String, callb : Dynamic -> Dynamic ) : Void {})
	@:overload(function( event : String, callb : Void -> Dynamic ) : Void {})
	@:overload(function( event : String, callb : Dynamic -> Void ) : Void {})
	public function once( event : String, callb : Void -> Void ) : Void;
	
	@:overload(function( event : String, callb : Dynamic -> Dynamic ) : Void {})
	@:overload(function( event : String, callb : Void -> Dynamic ) : Void {})
	@:overload(function( event : String, callb : Dynamic -> Void ) : Void {})
	public function removeListener(event:String, callb:Void->Void):Void;
	
	public static function get() : Window;
	public static function open( url : String, ?options : { } ) : Window;
	
}

class WindowC
{
	public static inline var EVENT_ENTER_FULLSCREEN = "enter-fullscreen";
	public static inline var EVENT_LEAVE_FULLSCREEN = "leave-fullscreen";
	public static inline var EVENT_CLOSE = "close";
	public static inline var EVENT_CLOSED = "closed";
	public static inline var EVENT_LOADING = "loading";
	public static inline var EVENT_LOADED = "loaded";
	public static inline var EVENT_DOCUMENT_START = "document-start";
	public static inline var EVENT_DOCUMENT_END = "document-end";
	public static inline var EVENT_FOCUS = "focus";
	public static inline var EVENT_BLUR = "blur";
	public static inline var EVENT_MINIMIZE = "minimize";
	public static inline var EVENT_RESTORE = "restore";
	public static inline var EVENT_MAXIMIZE = "maximize";
	public static inline var EVENT_UNMAXIMIZE = "unmaximize";
	public static inline var EVENT_MOVE = "move";
	public static inline var EVENT_RESIZE = "resize";
	public static inline var EVENT_ZOOM = "zoom";
	public static inline var EVENT_CAPTUREPAGEDONE = "capturepagedone";
	public static inline var EVENT_DEVTOOLS_OPENED = "devtools-opened";
	public static inline var EVENT_NEW_WIN_POLICY = "new-win-policy";
	
}