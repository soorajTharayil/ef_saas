<!--
Listing Hospitals under 1 Parent Institution
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
                            Listing: Hospitals
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
                                                <th>Domain</th>
                                                <th>Status</th>
                                                <th>Start Date</th>
                                                <th>End Date</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td><a href="hospitalStats">Secure Mysore</a></td>
                                                <td>securemys.efeedor.com</td>
                                                <td>Live</td>
                                                <td>02-01-2023</td>
                                                <td>03-01-2024</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Secure Bengaluru</td>
                                                <td>secureblr.efeedor.com</td>
                                                <td>Live</td>
                                                <td>02-01-2023</td>
                                                <td>03-01-2024</td>
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