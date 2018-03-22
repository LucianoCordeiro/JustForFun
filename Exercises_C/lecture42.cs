using System;
using System.Linq;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            //Exercise 1

            Console.WriteLine("Enter a number between 1 and 10");
            int a = Convert.ToInt32(Console.ReadLine());
            if (a >= 1 && a <= 10)
                Console.WriteLine("Valid");
            else
                Console.WriteLine("Invalid");

            //Exercise 2

            var first = 4;
            var second = 3;

            if (first < second)
                Console.WriteLine(second);
            else
                Console.WriteLine(first);
            

            //Exercise 3 

            Console.WriteLine("Enter a width");
            int width = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter a height");
            int height = Convert.ToInt32(Console.ReadLine());

            if (height >= width)
                Console.WriteLine("It is a portrait");
            else
                Console.WriteLine("It is a landscape");
            

            //Exercise 4 

            Console.WriteLine("Enter the limit speed");
            int limitSpeed = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter the current speed");
            int currentSpeed = Convert.ToInt32(Console.ReadLine());

            if (currentSpeed <= limitSpeed)
                Console.WriteLine("Ok");


            else if (currentSpeed > limitSpeed)
            {

                int diff = currentSpeed - limitSpeed;
                int points = (int)(0.2 * diff);

                if (points < 12)
                    Console.WriteLine("You got {0} points", points);
                else
                    Console.WriteLine("You got {0} points. License suspended", points);
                
            }   
        }
    }
}
