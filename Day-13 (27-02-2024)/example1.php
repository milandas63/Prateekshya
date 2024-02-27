<html>
	<head>
		<title>PHP Example</title>
	</head>
	<?php
		$servername = "localhost";
		$username = "giftintern";
		$password = "password";

		$conn = mysql_connect($servername, $username, $password);
		if (!$conn) {
			die("Connection failed: " . mysqli_connect_error());
		}
		mysql_select_db('gift2022');
		$str = mysql_query("SELECT e.id AS 'EMP-ID',e.name AS 'EMP-NAME',e.gender AS 'SEX',dn.name AS 'DESINATION',dp.name AS 'DEPARTMENT' FROM employ AS e LEFT JOIN designation AS dn ON e.design_id=dn.id LEFT JOIN department AS dp ON e.depart_id=dp.id");
	?>
	<body>
		<table border='0' cellspacing='0'>
			<?php
			while($stp=mysql_fetch_array($str)) {
				$emp_id      = $stp['EMP-ID'];
				$emp_name    = $stp['EMP-NAME'];
				$emp_sex     = $stp['SEX'];
				$designation = $stp['DESIGNATION'];
				$department  = $stp['DEPARTMENT'];

				echo "<tr>";
				echo "<td>".$emp_id."</td>";
				echo "<td>".$emp_name."</td>";
				echo "<td>".$emp_sex."</td>";
				echo "<td>".$designation."</td>";
				echo "<td>".$department."</td>";
				echo "<td><button onClick=''>Edit</button></td>";
				echo "<td><button onClick=''>Delete</button></td>";
				echo "</tr>";
			}
			?>
		</table>
	</body>
</html>


		while($stp=mysql_fetch_array($str)) {
			$emp_id      = $stp['EMP-ID'];
			$emp_name    = $stp['EMP-NAME'];
			$emp_sex     = $stp['SEX'];
			$designation = $stp['DESIGNATION'];
			$department  = $stp['DEPARTMENT'];

			echo $emp_name;
		}

