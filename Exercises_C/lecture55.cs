using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp2
{
    class Program
    {
        static void Main(string[] args)
        {
            //Exercise 1

            var names = new List<string>();
            Console.WriteLine("Enter the names of the people that like your post");
            
            while(true) { 
                var input = Console.ReadLine();
                if (input.Length == 0)
                    break;      
                names.Add(input);
            }

            if(names.Count == 0)
                Console.WriteLine("");
            else if(names.Count == 1)
                Console.WriteLine("{0} likes your post", names[0]);
            else if (names.Count == 2)
                Console.WriteLine("{0} and {1} like your post", names[0], names[1]);
            else
                Console.WriteLine("{0}, {1} and {2} other friends like your post", names[0], names[1], names.Count - 2);

            //Exercise 2

            Console.WriteLine("Enter your name:");
            var inpute = Console.ReadLine().ToCharArray();
            var str = new StringBuilder();
            for (int i = inpute.Length - 1; i >= 0; i--) {
                if (i == inpute.Length - 1)
                    str = str.Append(Char.ToUpper(inpute[i]));
                else
                    str = str.Append(Char.ToLower(inpute[i]));
            }
            Console.WriteLine(str);

            //Exercise 2 (another version)

            Console.Write("What's your name? ");
            var name = Console.ReadLine();

            var array = new char[name.Length];
            for (var g = name.Length; g > 0; g--)
                array[name.Length - g] = name[g - 1];
            var reversed = new string(array);
            Console.WriteLine("Reversed name: " + reversed);

            //Exercise 3 

            var numbers = new List<int>();
            Console.WriteLine("Enter five numbers");
            while (numbers.Count < 5) 
            {
                var number = Convert.ToInt32(Console.ReadLine());

                if (!numbers.Contains(number))  
                    numbers.Add(number);
                else
                    Console.WriteLine("Repeated number. Enter another one");
            }

            numbers.Sort();
            Console.Write("There are your sorted numbers: {0}", string.Join(", ", numbers));
            Console.WriteLine();

            //Exercise 4 

            var nums = new List<int>();
            Console.WriteLine("Enter some numbers");
            while (true)
            {
                var inp = Console.ReadLine().ToLower();
                if (inp == "quit")
                    break;
                
                nums.Add(Convert.ToInt32(inp));
                
            }
            var unique_nums = new List<int>();

            foreach(int n in nums)
            {
                if (!unique_nums.Contains(n))
                    unique_nums.Add(n);
            }

            foreach (int u in unique_nums)
                Console.WriteLine(u);
                
            // Exercise 5

            Console.WriteLine("Enter a list of at least five numbers");

            while (true) { 
                var input = Console.ReadLine().Replace(" ", "").Split(',');
                var arr_numbers = new List<int>();
                foreach (string i in input)
                    arr_numbers.Add(Convert.ToInt32(i));
                arr_numbers.Sort();
                if (arr_numbers.Count < 5)
                    Console.WriteLine("Invalid List. Try again");
                else { 
                    Console.WriteLine("The smallest numbers are {0}, {1} and {2}", arr_numbers[0], arr_numbers[1], arr_numbers[2]);
                    break;
                }
            }

        }   

    }
}
