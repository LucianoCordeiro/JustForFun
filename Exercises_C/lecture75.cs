using System.IO;

namespace ConsoleApp2
{
    class Program
    {
        static void Main(string[] args)
        {
            var path = @"c:\Sites\switch_on_off.html";

            var read = File.ReadAllText(path).Split(' ');
            Console.WriteLine(read.Length);

            string longestWord = read[0];
            foreach (string word in read) { 
                if (word.Length > longestWord.Length)
                    longestWord = word;
            }
            Console.WriteLine(longestWord);

        }
    }
    
}
