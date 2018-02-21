<?php
  $link=mysqli_connect("localhost", "root", "" ,"online1");
session_start();
  if (isset($_SESSION['admin_id'])){
    $voters_id = $_SESSION['admin_id'];
    $firstname = $_SESSION['firstname'];
    
  }
  else{
    header("Location:../../");
  }
?>
<!DOCTYPE html>
<html>
<head>
  <title>ADMIN PAGE </title>
  <script type="text/javascript">
    function alert(){
      confirm("Do you really want to flush the data");
    }
  </script>
  <!-- Materlize-->
  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/css/materialize.min.css">

  <!-- Bootstrap-->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>
<body style="font-family:roboto">
<div class="container">
<div class="row" >
  
  <div class="col-md-2"></div>
  <div class="col-md-2"></div>
  <div class="col-md-2"></div>
  <div class="col-md-2"align="right"><a href="analysis.php" > analysis</a></div>
  <div class="col-md-2" align="right"><a href="empty.php" onclick="alert()"> EMPTY</a></div>
  <div class="col-md-2"><a href="adminlogout.php">Logout</a> </div>

</div>

  <hr width="85%">


 <center><h3> VICE PRESIDENT</h3> </center>
 <hr width="85%">
 <?php
 //vice president
  $queryvp="SELECT candidate,votes from vice_president";
  $finalvp=mysqli_query($link,$queryvp);
echo "<table >
      <tr><b>
         <th><center>Candidate</center></th>
         <th><center>Number of votes</center></th></b>
      </tr>";

   while ( $vprow=mysqli_fetch_array($finalvp,MYSQL_ASSOC)) {
      echo "<tr>";
      echo "<td><center>" . $vprow['candidate'] . "</center></td>";
      echo "<td><center>" . $vprow['votes'] . "</center></td>";
      echo "</tr>";
   }
   echo "</table>";

?>

<hr width="85%">


 <center><h3> JOINT SECRETARY</h3> </center>
 <hr width="85%"> 
 
    
 <?php
//JOINTSECRETARY
 
  $queryjs="SELECT candidate,votes from joint_secretary";
  $finaljs=mysqli_query($link,$queryjs);
 echo "<table >
      <tr><b>
        <th><center>Candidate</center></th>
         <th><center>Number of votes</center></th></b>
      </tr>";

  while ( $jsrow=mysqli_fetch_array($finaljs,MYSQL_ASSOC)) {
      echo "<tr>";
      echo "<td><center>" . $jsrow['candidate'] . "</center></td>";
      echo "<td><center>" . $jsrow['votes'] . "</center></td>";
      echo "</tr>";
   }
   echo "</table>";
 

?>
    
<hr width="85%">


 <center><h3> JOINT TREASURER</h3> </center>
 <hr width="85%">
 <?php 
//JOINTTREASURER
 
  $queryjt="SELECT candidate,votes from joint_treasurer";
  $finaljt=mysqli_query($link,$queryjt);

  echo "<table >
      <tr>
         <th><center>Candidate</center></th>
         <th><center>Number of votes</center></th></b>
      </tr>";

  while ( $jtrow=mysqli_fetch_array($finaljt,MYSQL_ASSOC)) {
      echo "<tr>";
      echo "<td><center>" . $jtrow['candidate'] . "</center></td>";
      echo "<td><center>" . $jtrow['votes'] . "</center></td>";
      echo "</tr>";
   }
   echo "</table>";
 

?>
</div>



  
  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/js/materialize.min.js"></script>

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>
</html>