Class data.commande Extends (%Persistent, %Populate, %JSON.Adaptor, %XML.Adaptor)
{

Index orderCurrencyIndex On orderCurrency [ Type = bitmap ];

// Index orderCurrencyIndex On orderCurrency;

/// order status
Property orderStatus As %String(MAXLEN = 128, VALUELIST = ",annulé,approuvé,en cours");

Property requestedShipDate As %TimeStamp [ InitialExpression = {$zdt($h+$r(21)+5,3)} ];

/// requested ship date
/// requested delivery date
Property requestedDeliveryDate As %TimeStamp [ InitialExpression = {$zdt($h+$r(21)+15,3)} ];

/// order placed date
Property orderPlacedDate As %TimeStamp [ InitialExpression = {$zdt($h-$r(100)-10,3)} ];

/// order value
Property orderValue As %Numeric;

/// order currency
Property orderCurrency As %String(VALUELIST = ",EUR,USD,GBP,YEN,TND,CNY,JPY,MAD,DZD,TRY");

Storage Default
{
<Data name="commandeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>orderStatus</Value>
</Value>
<Value name="3">
<Value>requestedShipDate</Value>
</Value>
<Value name="4">
<Value>requestedDeliveryDate</Value>
</Value>
<Value name="5">
<Value>orderPlacedDate</Value>
</Value>
<Value name="6">
<Value>orderValue</Value>
</Value>
<Value name="7">
<Value>orderCurrency</Value>
</Value>
</Data>
<DataLocation>^data.commandeD</DataLocation>
<DefaultData>commandeDefaultData</DefaultData>
<IdLocation>^data.commandeD</IdLocation>
<IndexLocation>^data.commandeI</IndexLocation>
<StreamLocation>^data.commandeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
