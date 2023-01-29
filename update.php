
<?php
require_once "includes/connection.php";

$id = $_GET['id'];


if (isset($_POST['submit'])) {
    // Get the form data
    $startdate = $_POST['startdate'];
    $enddate = $_POST['enddate'];

    $sql = "UPDATE instance SET startdate = '$startdate', enddate = '$enddate'  WHERE instance_id = '$id'";
    if (mysqli_query($conn, $sql)) {
        echo "Record updated successfully";
    } else {
        echo "Error updating record: " . mysqli_error($conn);
    }
}

// Close the connection
mysqli_close($conn);

?>


<form action="update.php?id=<?php echo $id; ?>" method="post">
  <input type="hidden" name="id" value="<?php echo $id; ?>">
        <div class="imgcontainer">    
            <h3>Editing</h3>
        </div>
        <div class="container" style="text-align:center; align-items:center;">
            <label for="startdate"><b>Start Date</b></label><br>
            <input type="date" value="<?php echo $startdate; ?>" name="startdate" required><br><br>

            <label for="enddate"><b>End Date</b></label><br>
            <input type="date" value="<?php echo $enddate; ?>" name="enddate" required><br><br>
            <div class="text-center">
                <button type="submit" name="submit">Save</button>
            </div>

        </div>

    </form>