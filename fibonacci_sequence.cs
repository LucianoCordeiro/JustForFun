using System;

class Fibonacci {
  public static int[] FibonacciSequence(int array_size) {
    int[] y = new int[array_size];
    y[0] = 0;
    y[1] = 1;
    for(int i = 2; i < array_size; i++) {
      y[i] = y[i - 2] + y[i - 1];
    }
    return y;
  }  
  
  public static void Main (string[] args) {
    
    var g = Fibonacci.FibonacciSequence(15);  
    Console.WriteLine(string.Join(", ", g)); //0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377
  }
}
