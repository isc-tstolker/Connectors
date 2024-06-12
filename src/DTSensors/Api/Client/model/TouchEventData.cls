Class DTSensors.Api.Client.model.TouchEventData Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// 
/// * This property is required.
Property touch As DTSensors.Api.Client.model.Touch;

Storage Default
{
<Data name="TouchEventDataState">
<Value name="1">
<Value>touch</Value>
</Value>
</Data>
<State>TouchEventDataState</State>
<StreamLocation>^DTSensors.AD1EA.TouchEventDataS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
