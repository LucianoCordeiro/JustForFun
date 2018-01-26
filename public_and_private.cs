using System;

public class MyBaseC {
  private static int x = 99;
  
  public static int getInt(int y) {
    return x * y;
  }
    
}

class MainClass {
  public static void Main (string[] args) {
  
  Console.WriteLine(MyBaseC.getInt(3)); //297
  Console.WriteLine(MyBaseC.x); //MyBaseC.x' is inaccessible due to its protection level
    
  }
}
