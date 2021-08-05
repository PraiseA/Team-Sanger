<?php
// php code
// Assign variables
?>

<?php
$name = "Ruth Nanjala";
$email = "ruthnanjala97@gmail.com";
$suname = "@Nanje";
$Biostack = "Genomics & Data Science";
$twitter = "@Ruthnanje";

// Calculate hamming distance

$d=0;

if (strlen($suname) == strlen($twitter)) {
  // echo "Slack length is equal to twitter length!\n";
  for ($i = 0; $i < strlen($suname); $i++) {
    if ($suname[$i] != $twitter[$i]){
      $d=$d+1;
    }
  }
}elseif (strlen($suname) > strlen($twitter)) {
  // echo "Slack length is greater than twitter length!\n";
  $diff=strlen($suname)-strlen($twitter);
  for ($i = 0; $i < strlen($twitter); $i++) {
    if ($suname[$i] != $twitter[$i]){
      $d=$d+1;
    }
  }
  $d=$d+$diff;
} else {
  // echo "Twitter length is greater than slack length!\n";
  $diff=strlen($twitter)-strlen($suname);
  for ($i = 0; $i < strlen($suname); $i++) {
    if ($suname[$i] != $twitter[$i]){
      $d=$d+1;
    }
  }
  $d=$d+$diff;
}

echo "$name,$email,$suname,$Biostack,$twitter,$d\n";
?>
