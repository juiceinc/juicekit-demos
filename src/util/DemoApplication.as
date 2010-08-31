package util
{
	import mx.events.FlexEvent;
	
	import spark.components.Application;
	
	public class DemoApplication extends Application
	{
		public var helpCode:String = '';
		public var helpText:String = '';
		public var helpTitle:String = '';
		
		public function DemoApplication()
		{
			super();
			addEventListener(FlexEvent.CONTENT_CREATION_COMPLETE, function():void {
				var sidebar:DemoApplicationSidebar = new DemoApplicationSidebar();
								
				addElement(sidebar);

				sidebar.helpCode = helpCode;
				sidebar.helpText = helpText;
				sidebar.title = helpTitle;
//				if (hasOwnProperty('helpCode') && this['helpCode'] is String) 
//					sidebar.helpCode = this['helpCode'] as String;
//				if (hasOwnProperty('helpText') && this['helpText'] is String) 
//					sidebar.helpText = this['helpText'] as String;
				
			});
		}
	}
}