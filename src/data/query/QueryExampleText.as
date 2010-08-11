package data.query
{
	import org.juicekit.query.Query;
	import org.juicekit.query.methods.*;

	public class QueryExampleText
	{
		
		public static var x1:XML = new XML(<![CDATA[
select('STATE').groupby('STATE')
]]>);
		public static var q1:Query = select('STATE').groupby('STATE');
		
		public static var x2:XML = new XML(<![CDATA[
select('STATE',{'POP2008': sum('POP2008')})
.groupby('STATE')
]]>);
		public static var q2:Query = select('STATE',{'POP2008': sum('POP2008')}).groupby('STATE');
		
		public static var x3:XML = new XML(<![CDATA[
select({'STATE': 'STATE',
'POP2000': sum('POP2000'),
'POP2008': sum('POP2008'),
'Pct Change': pctchange('POP2008','POP2000')})
.groupby('STATE')
]]>);
		public static var q3:Query = select({'STATE': 'STATE',
			'POP2000': sum('POP2000'),
			'POP2008': sum('POP2008'),
			'Pct Change': pctchange('POP2008','POP2000')})
			.groupby('STATE');
		
		public static var x4:XML = new XML(<![CDATA[
select({
  'First 3': fn('SUBSTRING', 'STATE', 0, 3),
  'UPPERCASE': fn('UPPER', 'STATE'),
  'Std Dev 2008': stddev('POP2008')
})
.groupby('STATE');
]]>);
		public static var q4:Query = select({'First 3': fn('SUBSTRING', 'STATE', 0, 3),
			'Upper': fn('UPPER', 'STATE'), 'Std Dev 2008': stddev('POP2008')}).groupby('STATE');
		
		
		public static var x5:XML = new XML(<![CDATA[
select({'STATE': 'STATE',
'POP2000': sum('POP2000'),
'POP2008': sum('POP2008'),
'Pct Change': pctchange('POP2008','POP2000')})
.groupby('STATE')
.where(eq('STATE',_('California')))
]]>);
		public static var q5:Query = select({'STATE': 'STATE',
			'POP2000': sum('POP2000'),
			'POP2008': sum('POP2008'),
			'Pct Change': pctchange('POP2008','POP2000')})
			.groupby('STATE')
			.where(eq('STATE',_('California')))
			;
		
		
		public static var x6:XML = new XML(<![CDATA[
select({'STATE': 'STATE',
'AGE': 'AGE',
'POP2000': sum('POP2000'),
'POP2008': sum('POP2008')})
.groupby('STATE', 'AGE')
.where(and(eq('STATE',_('California')),gt('AGE', _(40))))
]]>);
		public static var q6:Query = select({'STATE': 'STATE',
			'AGE': 'AGE',
			'POP2000': sum('POP2000'),
			'POP2008': sum('POP2008')})
			.groupby('STATE', 'AGE')
			.where(and(eq('STATE',_('California')),gt('AGE', _(40))))
			;
		
		public static var x7:XML = new XML(<![CDATA[
select({'STATE': 'STATE',
'AGE': 'AGE',
'POP2000': sum('POP2000'),
'POP2008': sum('POP2008')})
.groupby('STATE', 'AGE')
.where(eq('STATE',_('California')))
.where(gt('AGE', _(40)))
]]>);
		public static var q7:Query = select({'STATE': 'STATE',
			'AGE': 'AGE',
			'POP2000': sum('POP2000'),
			'POP2008': sum('POP2008')})
			.groupby('STATE', 'AGE')
			.where(eq('STATE',_('California')))
			.where(gt('AGE', _(40)))
			.orderby('-AGE')
			;
		
		
		public static var x8:XML = new XML(<![CDATA[
select('STATE', 
'AGE', 
'SEX', 
'POP2008', 
'POP2000',
{'Oldsters': iff(gt('AGE', _(80)), 'POP2008', _(0))},
{'Diff': sub('POP2008', 'POP2000')},
{'Add': add('POP2008', 'POP2000')},
{'Div': div('POP2008', 'POP2000')},
{'Mult': mul('POP2008', 'POP2000')})
.orderby('-POP2000')
]]>);
		public static var q8:Query = select('STATE', 
			'AGE', 
			'SEX', 
			'POP2008', 
			'POP2000',
			{'Oldsters': iff(gt('AGE', _(80)), 'POP2008', _(0))},
			{'Diff': sub('POP2008', 'POP2000')},
			{'Add': add('POP2008', 'POP2000')},
			{'Div': div('POP2008', 'POP2000')},
			{'Mult': mul('POP2008', 'POP2000')})
			.orderby('POP2000')
			;
		
		public static var x9:XML = new XML(<![CDATA[
select({total: sum('POP2000'), chg: pctchange('POP2008','POP2000')});
]]>);
		public static var q9:Query = select({total: sum('POP2000')});
		
		public static var x10:XML = new XML(<![CDATA[
select('STATE', 'AGE', 'SEX', 'POP2000'
{ pctOfTotal: div('POP2000', sum('POP2000'))})
.map();
]]>);
		public static var q10:Query = select('STATE', 'AGE', 'SEX', 'POP2000',
			{ pctOfTotal: div('POP2000', sum('POP2000'))}).map();
		
		
		public static var x11:XML = new XML(<![CDATA[
update('STATE', 
'AGE', 
'SEX', 
'POP2000', 
{'POP2008': _(1)});
]]>);
		public static var q11:Query = update('STATE', 'AGE', 'SEX', 'POP2000', {'POP2008': _(1)});
		
		
		

		
		
		public function QueryExampleText()
		{
		}
	}
}