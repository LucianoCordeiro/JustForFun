<?php
	function fibonacci_sequence($num_of_factors) {
		$fib_array = array(0, 1);
		$i = 2;
		while ($i < $num_of_factors) {
		  array_push($fib_array, $fib_array[$i - 2] + $fib_array[$i - 1]);
		  $i++;
		}
		return $fib_array;
	}

print_r(fibonacci_sequence(10)) // => Array ( [0] => 0 [1] => 1 [2] => 1 [3] => 2 [4] => 3 [5] => 5 [6] => 8 [7] => 13 [8] => 21 [9] => 34 );
?>
