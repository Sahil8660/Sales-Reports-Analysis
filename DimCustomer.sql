SELECT 
  c.customerkey as CustomerKey
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  , 
  c.firstname as [FirstName] 
  --,[MiddleName]
  , 
  c.lastname as [LastName], 
  c.firstname + ' ' + c.lastname as [Full Name] 
  --,[NameStyle]
  , 
  [BirthDate] --,[MaritalStatus]
  --,[Suffix]
  , 
  case c.Gender when 'M' then 'Male' when 'F' then 'Female' end as gender --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  , 
  c.datefirstpurchase as [DateFirstPurchase] --,[CommuteDistance]
  , 
  g.city as [Customer City] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] as c 
  left join [AdventureWorksDW2019].[dbo].[DimGeography] as g ON g.geographyKey = c.geographyKey 
order by 
  customerkey asc
