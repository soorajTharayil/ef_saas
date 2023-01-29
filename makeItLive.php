<!--
Listing accounts with type==account
-->

<?php

// Include config file
require_once "includes/sessionCheck.php";
require_once "includes/connection.php";


// Perform a query
$query = "SELECT * FROM instance ORDER BY `created_at` ASC";

$result = mysqli_query($conn, $query);

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
                            Listing: instances and making it live.
                        </h1>
                    </div>
                </div>

                <!--    ADD YOUR CONTENT HERE    -->
                <div class="row">


                    <div class="col-lg">
                        <!--    Hover Rows  -->
                        <div class="panel panel-default">
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
                                                    <td><?php $id = $row['instance_id'];
                                                        echo $sl_no; ?></td>
                                                    <td><?php echo $row['hospital_name']; ?></td>
                                                    <td><?php echo $row['slug'] . ".efeedor.com"; ?></td>
                                                    
                                                    <td><button type="button"><a href="./insertValues?id=<?php echo $id ?>"><i class="fa fa-edit"></i></a></button>
                                                        </li>
                                                        </ul>
                                                    </td>
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
                </div>
                <!-- /. ROW  -->
                <!--ADDED TILL HERE-->
            </div>
        </div>



</body>