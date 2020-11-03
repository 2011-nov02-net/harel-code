using System;

namespace day2
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter a phrase you want an acronym for");
            var phrase = Console.ReadLine().Split(' ');
            string acronym = "";
            foreach (string word in phrase) {
                acronym += word[0];
            }
            Console.WriteLine($"the acronym is {acronym.ToUpper()}");
        }
    }
}
