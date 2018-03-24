//Exercise 1

for (int i = 1; i <= 100; i++) {
    if (i % 3 == 0)
        Console.WriteLine(i);
}


//Exercise 2

var sum = 0;
while (true) {
    Console.WriteLine("Enter a number or exit the console:");
    var input = Console.ReadLine();
    if (input == "ok") {
        Console.WriteLine(sum);
        break;
    }
    else {
        sum += Convert.ToInt32(input);
    }
}


//Exercise 3

Console.WriteLine("Factorial calculator. Enter a number:");
var input = Convert.ToInt32(Console.ReadLine());
var factorial = 1;
while(input >= 1)
{
    factorial *= input;
    input--;
}
Console.WriteLine(factorial);


//Exercise 4

var random = new Random();
var random_number = random.Next(1, 10);
Console.WriteLine("Guess the number we have chosen. It is between 1 and 10.");

for (var i = 0; i < 4; i++) { 
    var input = Convert.ToInt32(Console.ReadLine());
    if (input == random_number) { 
        Console.WriteLine("Congratulations! You have guessed the number.");
        break;
    }
    else if (i < 3) { 
        Console.WriteLine("You typed a wrong number. Try it again.");
    }
    else {
        Console.WriteLine("Game over. The number we chose is " + random_number);
    }
}


//Exercise 5 

Console.WriteLine ("Write some numbers");
var input = Console.ReadLine();
var numbers = input.Replace(" ", "").Split(',');

var max_value = Convert.ToInt32(numbers[0]);
for(var i = 0; i < numbers.Length; i++) {
    var number = Convert.ToInt32(numbers[i]);
    if (number > max_value)
        max_value = number; 
}
Console.WriteLine (max_value);   
