<?php
require 'connection.php';

function addGroupUser($_User_ID, $_Group_ID){
    
   $userID = $_User_ID;
   $groupID =  $_Group_ID;

    global $con;
    $sql = "INSERT INTO groupuser (GroupUser_ID, GroupUser_User_ID, GroupUser_Group_ID )
            VALUES (null, '$userID', '$groupID' )";
    
    if ($con->query($sql) === TRUE) {
        echo "New groupUser record created successfully <br>";
    } else {
        echo "Error: " . $sql . "<br>" . $con->error;
    }
    
    mysqli_close($con);

}




function deleteGroupUser($_id){
    $id = $_id;
    global $con;
    
    // $id = $_GET['id'];
    // $query = mysqli_query($con,"SELECT * FROM user WHERE User_ID = '$id'");
    // $imageFile = mysqli_fetch_assoc($query);
    // unlink("img/main/" .$imageFile['name']);
    mysqli_query($con,"DELETE FROM groupuser WHERE GroupUser_ID = '$id'");
    mysqli_close($con);
    // header("location:suadminhome.php");
    echo "Your selection has been deleted";
}



// function editDevice($_Device_id, $_Device_User_ID, $_Device_Phone_Num, $_Device_Name){

//     $device_id = $_Device_id;
//     $user_id = $_Device_User_ID;
//     $phone =  $_Device_Phone_Num;
//     $name = $_Device_Name;

//     global $con;
//     $sql = "UPDATE device 
//             SET Device_ID = '$device_id', Device_User_ID = '$user_id', Device_Phone_Num = '$phone', Device_Name = '$name'
//             WHERE Device_ID = '$device_id'";
    
//     if ($con->query($sql) === TRUE) {
//         echo "New record created successfully";
//     } else {
//         echo "Error: " . $sql . "<br>" . $con->error;
//     }
    
//     $con->close();

// }

// function getDeviceByID($_id){
//     $id = $_id; 
//     global $con;
//     $query = "SELECT * 
//                 FROM `device`
//                 WHERE `Device_ID` = $id";
    
//     if ($result = mysqli_query($con, $query))
//     {
        
//     $row = mysqli_fetch_array($result, MYSQLI_ASSOC); 
    
//     $deviceID = $row['Device_ID'];
//     $deviceUserID = $row['Device_User_ID'];
//     $phone = $row['Device_Phone_Num'];
//     $name = $row['Device_Name'];
  

//         $deviceArray = array(
//             $deviceID,$deviceUserID,$phone,$name
//         );
//     return $deviceArray;
//     } 
//     else 
//     {
//         echo "Error: " . $query . "<br>" . $con->error;
//     }                         
// }
?>