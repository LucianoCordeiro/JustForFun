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
            // Exercise 1
            
            Console.WriteLine("Enter some mumbers separated by hyphens:");
            var input = Console.ReadLine().Split('-');

            var list_numbers = new List<int>();
            foreach (string inp in input)
                list_numbers.Add(Convert.ToInt32(inp));


            var isConsecutive = true;
            if (list_numbers[1] == list_numbers[0] - 1)
            {
                for(int i = 1; i < list_numbers.Count; i++)
                {
                    if (list_numbers[i] != list_numbers[i - 1] - 1) {
                        isConsecutive = false;
                        break;
                    }
                }
                
            }

            else if (list_numbers[1] == list_numbers[0] + 1)
            {
                for (int i = 1; i < list_numbers.Count; i++)
                {
                    if (list_numbers[i] != list_numbers[i - 1] + 1)
                    {
                        isConsecutive = false;
                        break;
                    }
                }

            }

            else
                isConsecutive = false;

            var message = isConsecutive ? "Consecutive" : "Not Consecutive";
            Console.WriteLine(message);
            
            
            // Exercise 2

            Console.WriteLine("Enter some mumbers separated by hyphens:");
            var input = Console.ReadLine();

            if (String.IsNullOrEmpty(input))
                return; 

            var inputs = input.Split('-');
            
            var unique = new List<string>();
            foreach(string number in inputs) 
            {
                if (unique.Contains(number)) { 
                    Console.WriteLine("Duplicated");
                    break;
                }
                unique.Add(number);
            }
            
            
            //Exercise 3

            Console.WriteLine("Enter a valid time");
            var input = Console.ReadLine().Split(':');

            try { 
            var numbers = new List<int>();
            foreach (string inp in input)
                numbers.Add(Convert.ToInt32(inp));

            if (0 <= numbers[0] && numbers[0] <= 23 && 0 <= numbers[1] && numbers[0] <= 60)
                Console.WriteLine("Ok");
            else
                Console.WriteLine("Invalid Time");
            }

            catch (Exception)
            {
                Console.WriteLine("Invalid Time");
            }
            
            //Exercise 4

            Console.WriteLine("Enter a sentence:");
            var input = Console.ReadLine().Split(' ');
            var pascalCase = "";
 
            foreach(string word in input)
            {
                var built_string = Char.ToUpper(word[0]) + word.ToLower().Substring(1);
                pascalCase += built_string;   
            }
            Console.WriteLine(pascalCase);
            
            //Exercise 5

            Console.WriteLine("This is the vowel counter. Enter a word:");
            var input = Console.ReadLine();
            var vowels = new List<char>() { 'a', 'e', 'i', 'o', 'u' };

            var vowelsCounter = 0;
            foreach(char c in input)
            {
                if (vowels.Contains(c))
                    vowelsCounter++;
            }
            Console.WriteLine(vowelsCounter);

        }   

    }
}
