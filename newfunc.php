<?php
// session start();
$con=mysqli_connect("sql206.infinityfree.com","if0_39797306","QjCCG2F9cJ0dz","if0_39797306_hospitalms");
// if(isset($_POST['submit'])){
//  $username=$_POST['username'];
//  $password=$_POST['password'];
//  $query="select * from logintb where username='$username' and password='$password';";
//  $result=mysqli_query($con,$query);
//  if(mysqli_num_rows($result)==1)
//  {
//   $_SESSION['username']=$username;
//   $_SESSION['pid']=
//   header("Location:admin-panel.php");
//  }
//  else
//   header("Location:error.php");
// }
if(isset($_POST['update_data']))
{
    $contact=$_POST['contact'];
    $status=$_POST['status'];
    $query="update appoinmenttb set payment='$status' where contact='$contact';";
    $result=mysqli_query($con,$query);
    if($result)
        header("Location:updated.php");

}
// function display_docs()
// {
//  global $con;
//  $query="select * from doctb";
//  $result=mysqli_query($con,$query);
//  while($row=mysqli_fetch_array($result))
//  {
//   $username=$row['username'];
//   $price=$row['docFees'];
//   echo '<option value="' .$username. '" data-value="'.$price.'">'.$username.'</option>';
//  }
// }
function display_specs() {
    global $con;
    $query="select distinct(spec) from doctb";
    $result=mysqli_query($con,$query);
    while($row=mysqli_fetch_array($result))
    {
        $spec=$row['spec'];
        echo '<option data-value="'.$spec.'">'.$spec.'</option.';
    }
}
function display_docs()
{
    global $con;
    $query = "select * from doctb";
    $result = mysqli_query($con,$query);
    while ($row = mysqli_fetch_array($result))
        {
            $username = $row['username'];
            $price = $row['docFees'];
            echo '<option value="' .$username.'"data-value="'.$price.'"data_spec="'>' .username. "</option>'
            ;
        }
}
// function display_specs() {
//   global $con;
//   $query = "select distinct(spec) from doctb";
//   $result = mysqli_query($con,$query);
//   while($row = mysqli_fetch_array($result))
//   {
//     $spec = $row['spec'];
//     $username = $row['username'];
//     echo '<option value = "' .$spec. '">'.$spec.'</option>';
//   }
// }
 if(isset($_POST['doc_sub']))
{
    $username=$_POST['username'];
    $query="insert into doctb(username)values('$username')";
    $result=mysqli_query($con,$query);
    if($result)
        header("Location:adddoc,php");
}

?>