<!DOCTYPE html>
<html>
<body>

<?php  
for ($i= 0; $i <= 50; $i++) { 
			if ( $hasil= $i % 3 ) {
				echo 'Foo <br>'.$i;
			}elseif($hasil = $i % 5){
            echo 'Bar <br>'.$i;
			}else{
            	echo 'FooBar <br>'.$i;
            }
           }
?>  

</body>
</html>
