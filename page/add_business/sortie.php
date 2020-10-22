<!DOCTYPE html>
<html>
<head>
	<title>sortie</title>
	<style type="text/css">
		.content_table{
			border-collapse: collapse;
			margin: 25px 0;
			font-size: 0.9em;
			min-width: 400px;
		}
		.content_table thead tr {
			background-color: #009879;
			color: #ffffff;
			text-align: left;
			font-weight: bold; 
		}
		.content_table tbody tr td{
			border: 1px solid #000;
			vertical-align: top;
		}
		.content_table th,
		.content_table td{
			padding: 20px 30px;
		}
		table{
			border-bottom: 7px solid #009879;
			color: white;
			background-color: #00979D;
			border-bottom: 2px solid black;

		}
		
		th{
			font-size: 20px;
			padding: 20px;
		}
		td{
			padding: 20px 20px;
			font-size: 20px;
		}
		
		/*tr:nth-child(event){
			background-color: #181b2f;
		}
		tr:nth-child(odd){
			background-color: #000;
		}
		*/
	</style>
</head>
<body>
	<table class="content_table">
			<tr>
				<thead colspan="7">
					<h2>NEW CITE RECORD</h2>
				</thead>
			</tr>
			<thead>
				<tr>
					<th>date</th>
					<th>cite_name</th>
					<th>latitude</th>
					<th>longitude</th>
					<th>event</th>
					<th>historic</th>
					<th>comment</th>
				</tr>	
			</thead>
		</tr>
		<?php
		$conn = mysqli_connect("localhost","root","","mapsdb") or die("connection fail ...");
		
		$sql = "SELECT * FROM register_new_cite";
		$result = $conn-> query($sql);

		if ($result-> num_rows > 0) {
			while ($row = $result-> fetch_assoc()) {
				echo "<tbody><tr><td>".$row["date"]."<td>".$row["cite_name"]."</td><td>".$row["latitude"]."</td><td>".$row["longitude"]."</td><td>".$row["event"]."</td><td>".$row["historic"]."</td><td>".$row["comment"]."</td></tr>";
			}
			echo "</tbody></table>";
		}
		else{
			echo "0 result";
		}
		$conn-> close();
		?>
	</table>
</body>
</html>