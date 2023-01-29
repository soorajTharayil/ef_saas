<!--
COPY PASTE THIS FILE AND DONT EDIT HERE ONLY FOR VIEWINGS.
IN THE NEW FILE REMOVE THIS COMMENT AND ADD PAGE DESCRIPTION 
-->
<?php 
// Include config file 
#remove sessionCheck if session not used.
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
                            Dashboard <small>Summary of your App</small>
                        </h1>
                    </div>
                </div>

                <!--    ADD YOUR CONTENT HERE    -->






                <!--ADDED TILL HERE-->
            </div>
        </div>
</body>

<?php # FOOTER AND CLOSE HTML INSIDE
include 'includes/templates/footer.php';
?>