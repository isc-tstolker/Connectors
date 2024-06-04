/// Adding timestamps to record.
Class ChangeLog.DB.PersistentWithTimestampsAndChangelog Extends (ChangeLog.DB.ChangeLogWriter, %JSON.Adaptor)
{

/// When was the record created (ISO 8601)
Property CreatedAt As %String(%JSONFIELDNAME = "createdAt", MAXLEN = 25) [ InitialExpression = {$ZDATETIME($ZTIMESTAMP, 3, 7, 3)} ];

/// When was therecord last updated (ISO 8601)
Property ModifiedAt As %String(%JSONFIELDNAME = "modifiedAt", MAXLEN = 25) [ SqlComputeCode = { set {*} = $ZDATETIME($ZTIMESTAMP, 3, 7, 3) }, SqlComputed, SqlComputeOnChange = %%UPDATE ];

Storage Default
{
<Data name="PersistentWithTimestampsAndChangelogDefaultData">
<Subscript>"PersistentWithTimestampsAndChangelog"</Subscript>
<Value name="1">
<Value>CreatedAt</Value>
</Value>
<Value name="2">
<Value>ModifiedAt</Value>
</Value>
</Data>
<DefaultData>PersistentWithTimestampsAndChangelogDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
