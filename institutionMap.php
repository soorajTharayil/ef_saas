<!--
Page responsible for mapping an hospital to a parent organization.

-->

<?php
// Include config file
require_once "includes/sessionCheck.php";
require_once "includes/connection.php";

// Fetch data from the 'instance' table
$query = "SELECT * FROM instance " ;
$result = mysqli_query($conn, $query);


// Processing form data when form is submitted
if(isset($_POST['submit'])) {
    $selected_val = $_POST['dropdown'];
    $query1 = "SELECT * FROM institution WHERE institution_id='$selected_val'";
    $result1 = mysqli_query($conn, $query1);

    $update_ids = array();
    foreach($_POST['checkbox'] as $checkbox) {
        $update_ids[] = $checkbox;
    }
    $update_ids = implode(",", $update_ids);
    $query2 = "UPDATE instance_history SET institution_id='$selected_val' WHERE instance_id IN ($update_ids)";
    $result2 = mysqli_query($conn, $query2);
    if ($result2) {
       
       // header("location: index");
        echo "<script>alert('Record updated successfully')</script>";
    } else {
        echo "Error updating record: " . mysqli_error($conn);
    }
}


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
                            Mapping: Hospital to an institution
                        </h1>


                        <form action=""  method="post">
                            <label>Select Institution:</label><br>
                            <select name="dropdown">
        <option value="">Select Institution</option>
        <?php
            $query3 = "SELECT title,institution_id FROM institution";
            $result3 = mysqli_query($conn, $query3);
            while($row = mysqli_fetch_assoc($result3)) {
                echo "<option value='".$row['institution_id']."'>".$row['title']."</option>";
            }
        ?>
    </select>
                                <br><br>


                    </div>
                </div>



                <!--    ADD YOUR CONTENT HERE    -->


                <div class="panel panel-default">
                    <!-- <div class="panel-heading">
                            Mapping to {Hospital name}
                        </div> -->
                    <div class="panel-head">

                    </div>

                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <?php
                                                if (mysqli_num_rows($result) == 0) {
                                                ?>
                                        <h2 class="text text-danger"> No data found :)</h2>
                                        <?php } else {   ?>
                                    <tr>
                                        <th>Sl.No</th>
                                        <th>Hospital Name</th>
                                        <th>Domain</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <?php $sl_no = 1;
                                                    while ($row = mysqli_fetch_array($result)) { 
                                                ?>
                                        <td>
                                            <?php echo $sl_no;?>
                                        </td>
                                        <td>
                                            <?php echo $row['hospital_name']; ?>
                                        </td>
                                        <td>
                                            <?php echo $row['slug'] . ".efeedor.com"; ?>
                                        </td>

                                        <td><?php echo "<input type='checkbox' name='checkbox[]' value='".$row['instance_id']."'>";?>
                                            
                                        </td>
                                    </tr>
                                    <?php
                                    $sl_no = $sl_no + 1;
                                                    }
                                                }
                                                ?>


                                </tbody>
                            </table>


                            <button type="submit" name="submit" class="btn btn-primary">Save Changes</button>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- End  Hover Rows  -->
            </div>

        </div>
        <!-- /. ROW  -->





        <!--ADDED TILL HERE-->
    </div>
    </div>
</body>

<?php # FOOTER AND CLOSE HTML INSIDE
include 'includes/templates/footer.php';
?>