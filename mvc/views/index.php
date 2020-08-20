<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
       table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: center;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
    </style>
</head>
<body>


<table>
  <tr>
    <th>customerName</th>
    <th>contactLastName</th>
    <th>contactFirstName</th>
    <th>phone</th>
    <th>addressLine1</th>
    <!-- <th>addressLine2</th> -->
    <th>city</th>
    <th>state</th>
    <th>postalCode</th>
    <th>country</th>    
    <th>salesRepEmployeeNumber</th>
    <th>creditLimit</th>
    <?php while($row = mysqli_fetch_array($data["Customer"])){  ?>
        </tr>
            <?php  echo "<td>".$row["customerName"]."</td>";?>
            <?php  echo "<td>".$row["contactLastName"]."</td>";?>
            <?php  echo "<td>".$row["contactFirstName"]."</td>";?>
            <?php  echo "<td>".$row["phone"]."</td>";?>
            <?php  echo "<td>".$row["addressLine1"]."</td>";?>
            <!-- <?php  echo "<td>".$row["addressLine2"]."</td>";?> -->
            <?php  echo "<td>".$row["city"]."</td>";?>
            <?php  echo "<td>".$row["state"]."</td>";?>
            <?php  echo "<td>".$row["postalCode"]."</td>";?>
            <?php  echo "<td>".$row["country"]."</td>";?>
            <?php  echo "<td>".$row["salesRepEmployeeNumber"]."</td>";?>
            <?php  echo "<td>".$row["creditLimit"]."</td>";?>
            <tr>
    <?php }?>


</table>
   
</body>
</html>