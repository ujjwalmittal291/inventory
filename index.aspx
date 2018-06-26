@{
var db = Database.Open("SmallBakery"); 
var query = "SELECT * FROM Product"; 
}
<html> 
<body> 
<h1>Small Bakery Products</h1> 
<table border="1" width="100%"> 
<tr>
<th>Id</th> 
<th>Product</th> 
<th>Description</th> 
<th>Price</th> 
</tr>
@foreach(var row in db.Query(query))
{
<tr> 
<td>@row.Id</td> 
<td>@row.Name</td> 
<td>@row.Description</td> 
<td style="text-align:right">@row.Price</td> 
</tr> 
}
</table> 
</body> 
</html>
