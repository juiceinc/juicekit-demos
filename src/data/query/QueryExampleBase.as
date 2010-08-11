package data.query
{
	import org.juicekit.query.Query;
	import org.juicekit.query.methods.*;
	
	[Bindable]
	public class QueryExampleBase
	{
		public var title:String = "Select a single field"
		public var description:String = "No description"
		public var queryStr:XML = new XML(<![CDATA[select('STATE');]]>);			
		public var query:Query = select('STATE');
		
		public function QueryExampleBase(title:String=null, description:String=null, queryStr:XML=null, query:Query=null)
		{
			if (title != null) this.title = title;
			if (description != null) this.description = description;
			if (queryStr != null) this.queryStr = queryStr;
			if (query != null) this.query = query;
		}
	}
}