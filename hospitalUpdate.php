<!--
Page responsbile to update hospital status. 
Checks module access, and based on access,
add departments, change questions
-->

<?php
require_once "includes/connection.php";
require_once "includes/sessionCheck.php";
$name = "";
$id = $_GET['id'];
$type = $type_err = "";
$query1 = "SELECT * FROM instance_history WHERE ih_id = '$id'";
$result1 = mysqli_query($conn, $query1);
while($row = mysqli_fetch_assoc($result1))

        {
           $name = $row['hospital_name'];
        }


$query3 = "SELECT * FROM institution";
$result3 = mysqli_query($conn, $query3);




if (isset($_POST['submit'])) {
  // Get the form data
  $startdate = $_POST['startdate'];
  $enddate = $_POST['enddate'];
  $instid=$_POST['dropdown'];
  $status=$_POST['status'];
$uid=$_SESSION["id"];  
if (strlen($_POST['type']) == 0) {
  $type_err = "Select the type";
} else {
  $type = $_POST["type"];
}

  $sql = "UPDATE  instance_history SET startdate = '$startdate', enddate = '$enddate', institution_id = '$instid', status = '$status', inst_type = '$type' WHERE ih_id = '$id'";
    $res=(mysqli_query($conn, $sql));
  if($res){   
    //header("location: index ");
    echo "<script>alert('Record updated successfully')</script>";

  } else {
    echo "Error updating record: " . mysqli_error($conn);
  }
}


// Close the connection
mysqli_close($conn);

?>

<?php # HTML HEAD WITH SCRIPT.PHP
include 'includes/templates/head.php';
?>

<body>
  <div id="wrapper">
    <?php # TOP AND SIDE NAVIGATION BAR
    include 'includes/templates/topnavbar.php';
    include 'includes/templates/sidenavbar.php';
    ?>
    <div id="page-wrapper">
      <div id="page-inner">
        <!--    CHANGE PAGE TITLE    -->
        <div class="row">
          <div class="col-md-12">
            <h1 class="page-header">
             Updating  Hospital Details:
              <?php echo $name; ?>
            </h1>
          </div>
        </div>

        <!--    ADD YOUR CONTENT HERE    -->


        <form action="" method="post">
          <input type="hidden" name="id" value="<?php echo $id; ?>">


          <div class="row">
            <div class="col-md-12">
              <label for="startdate"><b>Start Date</b></label><br>
              <input type="date" value="<?php echo $startdate; ?>" name="startdate" required><br><br>

              <label for="enddate"><b>End Date</b></label><br>
              <input type="date" value="<?php echo $enddate; ?>" name="enddate" required><br><br>

              <label ><b>Mapping to instituion</b></label><br>
              <select name="dropdown">
                <option value="0">Select Institution</option>
                <?php
                while ($row = mysqli_fetch_assoc($result3)) {
                  ?>

                <option value="<?php echo $row['institution_id']; ?>">
                  <?php echo $row['title']; ?>
                </option>
                <?php  }
                ?>
                <br>
              </select><br><br>
              <lable><b>Status</b></lable><br>

               <input type="radio" id="status" name="status" value="1">
               <label>Live</label><br>
               <input type="radio" id="status" name="status" value="0">
               <label>Not Live</label><br><br>

               <div class="form-group <?php echo (!empty($type_err)) ? 'has-error' : ''; ?>">
                  <label><b>Instance Type:</b></label>
                  <select type="text" name="type">
                    <option value="DEMO" <?php if ($type == 'DEMO') {
                                            echo 'selected';
                                          } ?>>DEMO</option>
                    <option value="ACCOUNT" <?php if ($type == 'ACCOUNT') {
                                              echo 'selected';
                                            } ?>>ACCOUNT </option>
                  </select>
                  <span class="help-block">
                    <?php echo $type_err; ?>
                  </span>
                </div>

              <div class="text">
                <button type="submit" name="submit" class="btn btn-primary">Save</button>
              </div>

            </div>
          </div>

        </form>



        <!-- /. ROW  -->
        <!--ADDED TILL HERE-->
      </div>
    </div>
</body>

<?php # FOOTER AND CLOSE HTML INSIDE
include 'includes/templates/footer.php';
?>