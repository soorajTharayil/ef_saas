<!--
creating an instance includes
hospital name, respective institution ,subdomain,
database, type of account, module access, start date, end date.
-->

<?php
// Include config file
require_once "includes/sessionCheck.php";
require_once "includes/connection.php";

// Define variables and initialize with empty values
$subdomain  = $subdomain_err = "";
$hospital_name = $hospital_name_err = "";
$dbname = $dbname_err = "";
$id = 0;


// Processing form data when form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {


    // Validate subdomain
    if (empty(trim($_POST["subdomain"]))) {
        $subdomain_err = "Please enter the subdomain.";
    } else {
        // Prepare a select statement
        $sql = "SELECT slug FROM instance WHERE slug = ? ";

        if ($stmt = mysqli_prepare($conn, $sql)) {
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "s", $param_subdomain);

            // Set parameters
            $param_subdomain = trim($_POST["subdomain"]);

            // Attempt to execute the prepared statement
            if (mysqli_stmt_execute($stmt)) {
                /* store result */
                mysqli_stmt_store_result($stmt);

                if (mysqli_stmt_num_rows($stmt) == 1) {
                    $subdomain_err = "This subdomain is already being used";
                } else {
                    $subdomain = trim($_POST["subdomain"]);
                }
            } else {
                echo "Oops! Something went wrong. Please try again later.";
            }

            // Close statement
            mysqli_stmt_close($stmt);
        }
    }

    //hospital_name Validation
    if (strlen($_POST['hospital_name']) == 0) {
        $hospital_name_err = "Enter hospital Name";
    } else {
        $hospital_name = $_POST["hospital_name"];
    }

    //DatabaseName Validation
    if (strlen($_POST['dbname']) == 0) {
        $dbname_err = "Add database";
    } else {
        $dbname = $_POST["dbname"];
        // $GLOBALS[$dbname] = $dbname;
        // require_once 'function.php';
        // createDB($dbname);
    }


    // Instance Created By Validation  
    $id = $_SESSION["id"];


    // Check input errors before inserting in database
    if (empty($subdomain_err) && empty($hospital_name_err)) {

        // Prepare an insert statement
        $sql = "INSERT INTO instance (slug,hospital_name,dbname,user_id) VALUES (?,?,?,?)";

        if ($stmt = mysqli_prepare($conn, $sql)) {
            // Bind variables to the prepared statement as parameters
            $stmt->bind_param("sssi", $param_subdomain, $hospital_name, $dbname, $id);

            // Set parameters
            $param_subdomain = $subdomain;

            // Attempt to execute the prepared statement
            if (mysqli_stmt_execute($stmt)) {
                // Redirect to login page
                header("location: makeItLive");
            } else {
                echo "Something went wrong. Please try again later.";
            }
            // Close statement
            mysqli_stmt_close($stmt);
        }
    }

    // Close connection
    mysqli_close($conn);
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
                            Create: Instance
                        </h1>
                    </div>
                </div>

                <!--    ADD YOUR CONTENT HERE    -->
                <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
                    <div class="row">
                        <div class="col-lg-6 col-md-10">
                            <div class="panel-body">
                                <!--Adding Subdomain-->
                                <div class="form-group <?php echo (!empty($subdomain_err)) ? 'has-error' : ''; ?>">
                                    <label><b>Add the Subdomain</b></label>
                                    <input type="text" name="subdomain" placeholder="xyz.efeedor.com" class="form-control" size="20" value="<?php echo $subdomain; ?>">.efeedor.com
                                    <span class="help-block">
                                        <?php echo $subdomain_err; ?>
                                    </span>
                                </div>

                                <!--Adding Hospital Name-->
                                <div class="form-group <?php echo (!empty($hospital_name_err)) ? 'has-error' : ''; ?>">
                                    <label><b>Hospital Name</b></label>
                                    <input type="text" name="hospital_name" placeholder="xyz" class="form-control" size="20" value="<?php echo $hospital_name; ?>">
                                    <span class="help-block">
                                        <?php echo $hospital_name_err; ?>
                                    </span>
                                </div>

                                <!--Adding Database Name-->
                                <div class="form-group <?php echo (!empty($dbname_err)) ? 'has-error' : ''; ?>">
                                    <label><b>Database Name</b></label>
                                    <input type="text" name="dbname" placeholder="xyz" class="form-control" size="20" value="<?php echo $dbname; ?>">
                                    <span class="help-block">
                                        <?php echo $dbname_err; ?>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-10">
                        <button type="submit" class="btn btn-primary">Save changes</button>
                        <button type="reset" class="btn btn-default" data-dismiss="clear">clear</button>
                    </div>
                </form>





                <!--ADDED TILL HERE-->
            </div>
        </div>
</body>

<?php # FOOTER AND CLOSE HTML INSIDE
include 'includes/templates/footer.php';
?>