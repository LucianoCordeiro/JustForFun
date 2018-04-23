<?php
	function factorial($number) {
		$sum = 1;
		while ($number > 1) {
			$sum *= $number;
			$number--;
		}
		return $sum;
	}

echo factorial(5);
?>
