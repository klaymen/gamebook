<?php
  session_start();
  include('header.php');
  include('config.php');

  if (isset($_GET['chapter']))
  {
    $chapter = strtolower(trim($_GET['chapter']));
  } else {
    $chapter = $gb_default;
  }
  
  $connection = mysqli_connect($mysql_host, $mysql_user, $mysql_pass);
  $database = mysqli_select_db($connection, $mysql_data);

  mysqli_query($connection, "SET NAMES 'utf8'");

  $result = mysqli_query($connection, "SELECT * FROM chapters WHERE NAME='".$chapter."'");
  
  mysqli_close($connection);
  
  if ($row = mysqli_fetch_assoc($result))
  {
    $img      = $row['IMG'];
    $name     = $row['NAME'];
    $content  = $row['CONTENT'];
    $fwd      = $row['FWD'];
  } else {
    $img      = gb_notfound['img'];
    $name     = gb_notfound['name'];
    $content  = gb_notfound['content'];
    $fwd      = gb_notfound['fwd'];
  }
  
  $options = '';
  
  foreach(explode(";", $fwd) as $option)
  {
    if (strlen($option) > 2)
    {
      $option_part = explode("|", $option);
      $options .= ("<li><a href=\"".$gb_url."?chapter=".$option_part[1]."\">".$option_part[0]."</a></li>");
    }
  }
    include('page.php');
    include('footer.php');
?>