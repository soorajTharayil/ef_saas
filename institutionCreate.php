<!--
creating an instituion includes
instituion name, Instituion Description,
-->
<?php
// Include config file
require_once "includes/sessionCheck.php";
require_once "includes/connection.php";


// Define variables and initialize with empty values
$title = $description = "";

// Processing form data when form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $title = $_POST["title"];
    $description = $_POST["description"];
    $userid = $_SESSION["id"];


    //insert into DB -Instituiton table values of title and description with session userId
    $sql = "INSERT INTO institution (title,description, user_id) VALUES (?, ?, ?)";

    
    if ($stmt = mysqli_prepare($conn, $sql)) {
        // Bind variables to the prepared statement as parameters
        $stmt->bind_param("ssi", $title, $description, $userid);
        if (mysqli_stmt_execute($stmt)) {
            // Redirect to index page
            //   header("location: index");

?>      
 <!-- <h3>Data saved</h3> -->
<?php
        } else {
            echo "Something went wrong. Please try again later.";
        }

        // Close statement
        mysqli_stmt_close($stmt);
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
                            Create: Instituion
                        </h1>
                    </div>
                </div>

                <!--    ADD YOUR CONTENT HERE    -->

                <div class="row">
                    <div class="col-lg-6 col-md-10">
                        <div class="panel-body">
                            <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
                                <div class="form-group">
                                    <label>Instituion Title</label>
                                    <input type="text" name="title" class="form-control" placeholder="Institution Name" required> </input>
                                </div>
                                <div class="form-group">
                                    <label>Instituion Description</label>
                                    <textarea name="description" class="form-control" rows="4" cols="50" placeholder="Add Institution Details" required></textarea>
                                </div>
                                <button type="submit" class="btn btn-primary">Save</button>
                                <button type="reset" class="btn btn-default" data-dismiss="clear">clear</button>

                            </form>
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