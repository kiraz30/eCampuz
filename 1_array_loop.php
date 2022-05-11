<!DOCTYPE html>
<html>
<body>

<?php  
$aplikasi = ['gtAkademik','gtFinansi','gtPerizinan','eCampus','eOvis'];
$i = 0;
while($i < count($aplikasi))
{
	echo '$aplikasi['.$i.'] = '.$aplikasi[$i]."<br>";
	$i++;
}
?>  

</body>
</html>
