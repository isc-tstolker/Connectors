/// Changelog, keep track of changes to any table
Class ChangeLog.DB.ChangeLog Extends (%Persistent, %JSON.Adaptor)
{

/// Action 
Property Action As %String(%JSONFIELDNAME = "action", DISPLAYLIST = ",Create,Update,Delete", MAXLEN = 1, VALUELIST = ",0,1,2");

/// Classname of the %Persistent class
Property ClassName As %String(%JSONFIELDNAME = "table", MAXLEN = "") [ SqlFieldName = TableName ];

/// ID of the record
Property DRecordId As %String(%JSONFIELDNAME = "id") [ SqlFieldName = RecordId ];

/// Name of the user that made the change
Property DUsername As %String(%JSONFIELDNAME = "user") [ SqlFieldName = Username ];

/// ISO 8601 formatted UTC timestamp e.g 2023-03-20T15:14:45.7384083Z
Property ETimestamp As %String(%JSONFIELDNAME = "timestamp", MAXLEN = 28) [ SqlFieldName = Timestamp ];

/// Changed Data (only there for Action < 2)
Property NewData As %String(%JSONFIELDNAME = "changed-data", MAXLEN = "");

/// Old Data (only there for Action > 0)
Property OldData As %String(%JSONFIELDNAME = "old-data", MAXLEN = "");

Storage Default
{
<Data name="ChangeLogDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Action</Value>
</Value>
<Value name="3">
<Value>ClassName</Value>
</Value>
<Value name="4">
<Value>DRecordId</Value>
</Value>
<Value name="5">
<Value>DUsername</Value>
</Value>
<Value name="6">
<Value>ETimestamp</Value>
</Value>
<Value name="7">
<Value>NewData</Value>
</Value>
<Value name="8">
<Value>OldData</Value>
</Value>
</Data>
<DataLocation>^ChangeLog.DB.ChangeLogD</DataLocation>
<DefaultData>ChangeLogDefaultData</DefaultData>
<ExtentSize>1</ExtentSize>
<IdLocation>^ChangeLog.DB.ChangeLogD</IdLocation>
<IndexLocation>^ChangeLog.DB.ChangeLogI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="Action">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:0</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="ClassName">
<AverageFieldSize>12</AverageFieldSize>
<OutlierSelectivity>.999999:"NameValues"</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="DRecordId">
<AverageFieldSize>3</AverageFieldSize>
<OutlierSelectivity>.999999:1</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="DUsername">
<AverageFieldSize>9</AverageFieldSize>
<OutlierSelectivity>.999999:"_SYSTEM"</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="ETimestamp">
<AverageFieldSize>30</AverageFieldSize>
<OutlierSelectivity>.999999:"2024-04-16T10:53:38.3627375Z"</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="NewData">
<AverageFieldSize>32</AverageFieldSize>
<OutlierSelectivity>.999999:"{""name"":""name"",""value"":""theo""}"</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="OldData">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^ChangeLog.DB.ChangeLogS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
