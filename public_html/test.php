<body>
<?php
        //open a connection to dbase server
        include 'open.php';


        $year = $_POST['year'];
        $type = $_POST['type'];
        echo "<br><br>";
        echo "You entered <br>";
        echo $year;
        echo $type;

        if (!empty($year)){
                echo "not empty";
                $query = "SELECT * FROM TitleBasics WHERE startYear='$year'";
                // $result = $mysqli->query($query);
                // echo $result->num_rows;
                // if ($result->num_rows > 0) {
                //    echo "display graph??? here";
                // }
                if (mysqli_query($mysqli, $query)) {
                        echo "retrieved query";
                } else {
                        echo "Error querying: " . mysqli_error($conn);
                }
        }

        // $sql = "SELECT * FROM TitleBasics WHERE startYear = $year AND titleType = $type";

        // if($mysqli->query($sql) === false) {
        //         echo "ERROR: Could not able to execute $sql. ". $mysqli->error;
        // }

        // $query = "SELECT * FROM Rawscores WHERE SSN='$num'";
       

        // $result = $mysqli->query($query);

        // if ($result->num_rows > 0){
        //         // echo "7"
        //         echo "Showing Titles:<br>";
        //         echo "<table>";
        //         echo "<tr><td> SSN </td><td> LName </td><td> FName </td><td> Section </td><td> HW1 </td><td> HW2a </td><td> HW2b </td><td> Midterm </td><td> HW3 </td><td> FExam </td></tr>";
        //         while($row = $result->fetch_assoc()) {
        //             // printf("+----------------------------------------------------------------------------------+<br>");
        //             echo "<tr><td>".$row['tconst'].$row['titleType']."</td><td>".$row['primaryTitle']."</td><td>".$row['originalTitle']."</td><td>".$row['isAdult']."</td><td>".$row['startYear']."</td><td>".$row['endYear']."</td><td>".$row['runtimeMinutes']."</td><td>".$row['genres']."</td></tr>";
        //             // printf("+----------------------------------------------------------------------------------+<br>");
        //         }
        //         echo "</table>";
            
        // } else {
        //         // echo "8 ";
        //         echo "Student Not Found";
        // }

  

        //close the connection to dbase
        mysqli_close($conn);

?>
</body>