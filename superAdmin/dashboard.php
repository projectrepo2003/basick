<?php

include '../components/connect.php';

if(isset($_COOKIE['admin_id'])){
   $admin_id = $_COOKIE['admin_id'];
}else{
   $admin_id = '';
   header('location:login.php');
}

$select_tutors = $conn->prepare("SELECT * FROM `tutors`");
$select_tutors->execute();
$total_tutors = $select_tutors->rowCount();

$select_users = $conn->prepare("SELECT * FROM `users`");
$select_users->execute();
$total_users = $select_users->rowCount();

$select_contents = $conn->prepare("SELECT * FROM `content`");
$select_contents->execute();
$total_contents = $select_contents->rowCount();

$select_playlists = $conn->prepare("SELECT * FROM `playlist`");
$select_playlists->execute();
$total_playlists = $select_playlists->rowCount();

$select_likes = $conn->prepare("SELECT * FROM `likes`");
$select_likes->execute();
$total_likes = $select_likes->rowCount();

$select_comments = $conn->prepare("SELECT * FROM `comments`");
$select_comments->execute();
$total_comments = $select_comments->rowCount();

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Admin Dashboard</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="../css/admin_style.css">
   <link rel="stylesheet" href="../css/style_footer.css">

</head>
<body>

<?php include '../components/sadmin_header.php'; ?>
   
<section class="dashboard">

   <h1 class="heading">Welcome, <?= $fetch_profile['name']; ?>!</h1>

   <div class="box-container">

      <div class="box" style="border: 1px solid #3586ff">
         <h3><?= $total_tutors; ?></h3>
         <p>total tutors</p>
      </div>

      <div class="box" style="border: 1px solid #3586ff;">
         <h3><?= $total_users; ?></h3>
         <p>total learners</p>
      </div>

      <div class="box" style="border: 1px solid #3586ff">
         <h3><?= $total_contents; ?></h3>
         <p>total contents</p>
      </div>

      <div class="box" style="border: 1px solid #3586ff">
         <h3><?= $total_playlists; ?></h3>
         <p>total playlists</p>
      </div>

      <div class="box" style="border: 1px solid #3586ff">
         <h3><?= $total_likes; ?></h3>
         <p>total likes</p>
      </div>

      <div class="box" style="border: 1px solid #3586ff">
         <h3><?= $total_comments; ?></h3>
         <p>total comments</p>
      </div>

   </div>

</section>

<script src="../js/admin_script.js"></script>

</body>
</html>