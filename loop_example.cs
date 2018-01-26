using System;

class MainClass {
  public static void Main (string[] args) {
    
    int y = 0;
    for(int i=1; i<=20; i++) {
      if (i % 3 == 0) {
        y += i;
      }
    }
    Console.WriteLine(y); //63
  }
}
