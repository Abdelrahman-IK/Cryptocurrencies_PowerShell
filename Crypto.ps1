$json = Invoke-WebRequest -Uri https://api.coinmarketcap.com/v1/ticker/?limit=10 | ConvertFrom-Json | Select-Object
$json |  Select-Object  @{Name="Symbol";Expression={$_.symbol}},@{Name="Coin Name" ;Expression={$_.name}},@{Name="Price/USD";Expression={$_.price_usd}},@{Name="Change Last 24h";Expression={$_.percent_change_24h}}
