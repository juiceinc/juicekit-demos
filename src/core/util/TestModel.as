package core.util
{
	/**
	 * A simple model object to use for demos
	 */
	[Bindable]
	public class TestModel
	{
		public var name:String = 'Undefined';
		public var val:Number = 0;
		public var anum:String = 'File1';
		
		public function TestModel(name:String, val:Number, anum:String)
		{
			this.name = name;
			this.val = val;
			this.anum = anum;
		}
	}
}