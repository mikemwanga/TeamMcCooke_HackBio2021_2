$Slack_username = "\@Gautami";  
$Twitter_username = "\@GPATKI_"; 
$a = length($Slack_username);

$HAM = 0 ;
for ($i=1; $i<=$a; $i++)
 {
     $c = chop($Slack_username);
     $d = chop($Twitter_username);
     
     if (($c cmp $d) !=0) 
  { 
      $HAM = $HAM + 1;
  }
}

print "Name: Gautami Patki\nEmail ID: gautamipatki\@gmail.com\nSlack username: \@Gautami\nBiostack: Genomics\nTwitter username: \@GPATKI_\nHamming Distance= $HAM\n";

