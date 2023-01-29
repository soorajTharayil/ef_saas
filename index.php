<!--
COPY PASTE THIS FILE AND DONT EDIT HERE ONLY FOR VIEWINGS.
IN THE NEW FILE REMOVE THIS COMMENT AND ADD PAGE DESCRIPTION 
-->
<?php
// Include config file
require_once "includes/sessionCheck.php";
require_once "includes/connection.php";

$user=$_SESSION["name"];
$totalInstance = 0;
$demo=0; $account=0;
$institution=0;
// Fetch data from the 'table_name' table
$query = "SELECT  * from instance";
$result = mysqli_query($conn, $query);
$row = mysqli_num_rows($result);
if ($result) {
    if ($row) {
        $totalInstance = $row;
    }
    else $totalInstance=0;
}

$query2 = "SELECT  * from instance_history where inst_type='ACCOUNT'";
$result2 = mysqli_query($conn, $query2);
$row2 = mysqli_num_rows($result2);
if ($result2) {
    if ($row2) {
        $account = $row2;
    }
    else $account=0;
}


$query3 = "SELECT  * from instance_history where inst_type='DEMO'";
$result3 = mysqli_query($conn, $query3);
$row3 = mysqli_num_rows($result3);
if ($result3) {
    if ($row3) {
        $demo = $row3;
    }
    else $demo;
}


$query5 = "SELECT  * from institution ";
$result5 = mysqli_query($conn, $query5);
$row5 = mysqli_num_rows($result5);
if ($result5) {
    if ($row5) {
        $institution = $row5;
    }
    else $institution=0;
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
                        <h3>
                            Hi, <?php echo $user; ?> 
                        </h3>
                    </div>
                    <div class="col-md-12">
                        <h1 class="page-header">
                            Dashboard <small>Overall Summary</small>
                        </h1>
                    </div>
                </div>

                <!--    ADD YOUR CONTENT HERE    -->

                <div class="row">
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="panel panel-primary text-center no-boder bg-color-green">
                            <div class="panel-body">
                                <i class="fa fa-sitemap fa-5x"></i>
                                <h3><?php echo $totalInstance; ?></h3>
                            </div>
                            <div class="panel-footer back-footer-green">
                                Total Instances

                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="panel panel-primary text-center no-boder bg-color-blue">
                            <div class="panel-body">
                                <i class="fa fa-dollar fa-5x"></i>
                                <h3><?php echo $account; ?> </h3>
                            </div>
                            <div class="panel-footer back-footer-blue">
                              Accounts 
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="panel panel-primary text-center no-boder bg-color-red">
                            <div class="panel-body">
                                <i class="fa fa-gift fa-5x"></i>
                                <h3><?php echo $demo; ?> </h3>
                            </div>
                            <div class="panel-footer back-footer-red">
                                Demos
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="panel panel-primary text-center no-boder bg-color-brown">
                            <div class="panel-body">
                                <i class="fa fa-list fa-5x"></i>
                                <h3><?php echo $institution; ?></h3>
                            </div>
                            <div class="panel-footer back-footer-brown">
                                Total institutions
                            </div>
                        </div>
                    </div>
                </div>





                <!--ADDED TILL HERE-->
            </div>
        </div>
</body>

<?php # FOOTER AND CLOSE HTML INSIDE
include 'includes/templates/footer.php';
?>