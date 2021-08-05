
<?php
// PHP program to find hamming distance b/w
// two string
 
// function to calculate
// Hamming distance
function hammingDist($str1, $str2)
{
    $i = 0; $count = 0;
    while (isset($str1[$i]) != '')
    {
        if ($str1[$i] != $str2[$i])
            $count++;
        $i++;
    }
    return $count;
}

    $str1 = "@Nanje";
    $str2 = "@Ruthnanje"

$name = "Ruth Nanjala";
$email = "ruthnanjala97@gmail.com";
$suname = "@Nanje";
$Biostack = "Genomics & Data Science";
$Twitter
echo "$name,$email,$suname,$Biostack\n";
?>
