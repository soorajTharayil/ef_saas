<!--
Page responsible for showing stats for child hospitals
Same page with charts for whatever is displaying here to instituion login

-->

<?php

// Include config file
require_once "includes/sessionCheck.php";
require_once "includes/connection.php";

//condition to check if the id has any valuepresent in it
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    //query to fetch data from instance_history based on the id passed from previous page
    $query = "SELECT *  FROM instance_history WHERE institution_id = '$id'";
    $result = mysqli_query($conn, $query);
  
    //query to fetch data from institution based on the id passed from previous page
    $query1 = "SELECT * FROM institution WHERE institution_id = '$id'";
    $result1 = mysqli_query($conn, $query1);
    while($row = mysqli_fetch_assoc($result1))
    
            {
               $name = $row['title'];
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
                            Showing Stats: Institution-
                            <?php echo $name; ?>
                        </h1>
                    </div>
                </div>

                <!--    ADD YOUR CONTENT HERE    -->

                <div class="row">
                    <div class="col-lg">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <?php
                                                if (mysqli_num_rows($result)==0) {
                                                ?>
                                                    <h2 class="text text-danger"> No data found :)</h2>
                                                <?php } else {   ?>
                                            <tr>
                                                <th>Sl.No</th>
                                                <th>Hospital Name</th>
                                                <th>Total Feedback</th>
                                                <th>Satisfied</th>
                                                <th>Unsatisfied</th>
                                                <th>Total Tickets</th>
                                                <th>Link</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php $sl_no = 1; ?>
                                            <tr>
                                                <?php


                                                    while ($row = mysqli_fetch_array($result)) {
                                                       
                                                ?>
                                            <tr>
                                                <td>
                                                    <?php 
                                                        echo $sl_no; ?>
                                                </td>
                                                <td>
                                                    <?php echo $row['hospital_name']; ?>
                                                </td>
                                                <td>
                                                    <?php //echo $row['description']; 
                                                    ?>
                                                </td>

                                                <td>
                                                    <?php //echo $row['name']; 
                                                    ?>
                                                </td>
                                                <td>
                                                    <?php //echo $row['hospital_name']; 
                                                    ?>
                                                </td>
                                                <td>
                                                    <?php //echo $row['description']; 
                                                    ?>
                                                </td>

                                                <td><button type="button"><a href="https://<?php echo $link ?>.efeedor.com/login"><i class="fa fa-link"></i></a></button> </td>
                                            </tr>

                                    <?php
                                                        $sl_no = $sl_no + 1;
                                                    }
                                                }
                                    ?>


                                        </tbody>
                                    </table>

                                </div>
                            </div>
                        </div>
                        <!-- End  Hover Rows  -->
                    </div>

                    <!-- /. ROW  -->
                </div>





                <!--ADDED TILL HERE-->
            </div>
        </div>
</body>

<?php # FOOTER AND CLOSE HTML INSIDE
include 'includes/templates/footer.php';
?>