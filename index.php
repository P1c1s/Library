<?php
    session_start();
    if(!isset($_SESSION['library']))
       header('Location: login.php');
?>

<!DOCTYPE html>
<html lang="it">
<head>
	<title>Library</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/table.css">
<!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/prova.css">


<link rel="icon" type="image/png" href="favicon.png">

<style>

#myInput {
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

a:link {
  text-decoration: none;
}
a:active {
  text-decoration: none;
}
a:visited {
  text-decoration: none;
}
a:hover {
  text-decoration: underline;
}

</style>

</head>
<body>

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Cerca" title="Type in a name">
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
					<table id="myTable">
						<thead>
							<tr class="table100-head">
								<th class="column1">Titolo</th>
								<th class="column2">Genere</th>
								<th class="column3">Autore</th>
								<th class="column4">Collana</th>
								<th class="column5">Editore</th>
								<th class="column6">Pubblicazione</th>
                                                                <th class="column7">Prezzo</th>
                                                                <th class="column8">ISBN</th>
							</tr>
						</thead>
						<tbody>
                            <?php
                                $dsn = 'mysql:hosy=localhost;dbname=Biblioteca';
                                $username = 'phpmyadmin';
                                $password = 'qss-s3E-IH9_Khz';

                                try{
                                    // connect to mysql
                                    $con = new PDO($dsn,$username,$password);
                                    $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                                }
                            catch (Exception $ex) {
                                echo 'Not Connected '.$ex->getMessage();
                            }
                            // mysql select query
                            $queryBook = $con->prepare('SELECT * FROM Libro ORDER BY Titolo');
                            $queryKind = $con->prepare('SELECT * FROM Genere');
                            $queryWriter = $con->prepare('SELECT TItolo, ISBN, Nome, Cognome FROM Libro, Autore, Libro_Autore WHERE ISBN = fk_Libro AND id_Autore = fk_Autore ORDER BY Titolo');
                            $queryPbHouse = $con->prepare('SELECT * FROM Casa_Editrice');
                            $queryBook->execute();
                            $queryKind->execute();
                            $queryWriter->execute();
                            $queryPbHouse->execute();
                            $result1 = $queryKind->fetchAll();
                            $result2 = $queryWriter->fetchAll();
                            $result3 = $queryPbHouse->fetchAll();
                            $result4 = $queryBook->fetchAll();

                            //KIND
                            $i=1;
                            foreach ($result1 as $row)
                            {
                                $kind[$i]=$row['Genere'];
                                $i++;
                            }

                            //Writer
                            $i=1;
                            foreach ($result2 as $row)
                            {
                                $writer[$i]=$row['Nome'].' '.$row['Cognome'];
                                $isbn[$i]=$row['ISBN'];
                                $i++;
                            }
                            $dim=$i;

                            //Publishing House
                            $i=1;
                            foreach ($result3 as $row)
                            {
                                $pbhouse[$i]=$row['Nome'];
                                $i++;
                            }

                            //Count the Books
                            $counter=0;

                            //Book
                            foreach ($result4 as $row)
                            {
                                echo '<tr>';
                                if($row['Titolo']=='') echo '<td class="column1"><center>-</center></td>'; else echo '<td class="column1"><a href="https://duckduckgo.com/'.$row['Titolo'].'">'.$row['Titolo'].'</a></td>';
                                if($row['fk_Genere']=='') echo '<td class="column2"><center>-</center></td>'; else echo '<td class="column2">'.$kind[$row['fk_Genere']].'</td>';
                                //if($row['fk_Autore']!='') echo '<td class="column3"><center>-</center></td>'; else echo '<td class="column3">'.$writer[].'</td>';
                                //It's for writer
                                echo '<td class="column3">';
                                for ($i = 1; $i <= $dim; $i++)  { if ($isbn[$i]==$row['ISBN']) { echo $writer[$i]; $flag=1; } $i++; }
                                if($flag!=1) echo '-';	
                                echo '</td>';
                                if($row['Collana']=='') echo '<td class="column4"><center>-</center></td>'; else echo '<td class="column4">'.$row['Collana'].'</td>';
                                if($row['fk_Casa_Editrice']=='') echo '<td class="column5"><center>-</center></td>'; else echo '<td class="column5">'.$pbhouse[$row['fk_Casa_Editrice']].'</td>';
                                if($row['Data_pubblicazione']=='') echo '<td class="column6"><center>-</center></td>'; else echo '<td class="column6">'.$row['Data_pubblicazione'].'</td>';
                                if($row['Prezzo']=='') echo '<td class="column7"><center>-</center></td>'; else echo '<td class="column7">€ '.$row['Prezzo'].'</td>';
                                if($row['ISBN']=='') echo '<td class="column8"><center>-</center></td>'; else echo '<td class="column8"> '.$row['ISBN'].'</td>';
                                echo '</tr>';
                                //Count the books
                                $counter++;
                            }

                             echo $counter;

                        ?>



						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

    <script>
    function myFunction() {
      var input, filter, table, tr, td, i, txtValue;
      input = document.getElementById("myInput");
      filter = input.value.toUpperCase();
      table = document.getElementById("myTable");
      tr = table.getElementsByTagName("tr");
      for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[0];
        if (td) {
          txtValue = td.textContent || td.innerText;
          if (txtValue.toUpperCase().indexOf(filter) > -1) {
            tr[i].style.display = "";
          } else {
            tr[i].style.display = "none";
          }
        }
      }
    }
    </script>
	



</body>
</html>
