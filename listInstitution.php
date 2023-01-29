<!--
Listing Instituions
-->


<?php

// Include config file
require_once "includes/sessionCheck.php";
require_once "includes/connection.php";


// Perform a query
$query = "SELECT i.institution_id, i.title, i.description, a.username as name FROM institution i, admin a WHERE i.user_id= a.user_id";

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
                            Listing: Institution
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
                                                <th>Instituion Name</th>
                                                <th>Description</th>
                                                <th>Created By</th>
                                                <th>Hospitals</th>
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
                                                    <?php $id = $row['institution_id'];
                                                        echo $sl_no; ?>
                                                </td>
                                                <td>
                                                    <?php echo $row['title']; ?>
                                                </td>
                                                <td>
                                                    <?php echo $row['description']; ?>
                                                </td>

                                                <td>
                                                    <?php echo $row['name']; ?>
                                                </td>

                                                <td><button type="button"><a href="./institutionStats?id=<?php echo $id ?>"><i class="fa fa-eye"></i></a></button> </td>
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

<?php # FOOTER AND CLOSE HTML INSIDE
include 'includes/templates/footer.php';
?>