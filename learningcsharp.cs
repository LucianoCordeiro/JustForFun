using System;

class Programm {
  
  static int Number(int x) {
    return x + 4;
  }

  static void Word(string y) {
    Console.WriteLine(y + " word");
  }

  
  public static void Main () {
  
    int jej = Number(4);
    Console.WriteLine(jej);
  }
}
