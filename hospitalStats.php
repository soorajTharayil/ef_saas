<!--
Page to show hopsital wise stats
-->


<?php
// Include config file
require_once "includes/sessionCheck.php";
require_once "includes/connection.php";

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
                            Hospital Statistics
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
                                                <th>Sl.No</th>
                                                <th>Hospital Name</th>
                                                <th>Total Feedbacks</th>
                                                <th>Total Satisfied</th>
                                                <th>Total Unsatisfied</th>
                                                <th>Total Tickets</th>
                                                <th>NPS</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Secure Mysore</td>
                                                <td>100</td>
                                                <td>60</td>
                                                <td>40</td>
                                                <td>76</td>
                                                <td>72.8%</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
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