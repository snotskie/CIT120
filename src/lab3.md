# Lab 3

## If/Else 🧑‍🔬

Labs provide hands-on experience with course material. They have three parts: review questions, guided exercise, open-ended exercise.

The first few Labs provide practice with fundamentals, and the later Labs go hand-in-hand with the term project check-ins.

Tips are at the very bottom. You should read them.

## Part 1/3: Review Questions

Answer the following questions from [our course textbook](https://kctcs.bncollege.com/c/Object-Oriented-Approach-to-Programming-Logic-and-Design/p/MBS_1107391_used?currentCampus=58&rental=false). If you have trouble getting a copy of the book, email me and [check the KCTCS libraries](https://kctcs.primo.exlibrisgroup.com/permalink/01KCTCS_INST/1jou7fq/alma9910949953404756). Type your answers all the way out -- *don't just say "a" or "b" or etc.*

- Chapter 3, Review Questions: 1, 2, 4, 6, 8, 10, 15, and 19
- Chapter 3, Exercises: 1

Also answer these questions:

1. Define, in your own words and as it relates to what we've learned so far, the terms single-alternative selection, dual-alternative selection.
2. In your Studio discussion on Blackboard, post the days and times that will work best for you to meet for Studio 2 (which happens the week after this Lab is due)
3. *Story Problem:* ACME Corp. released the following code (for displaying how much a renter owes in rent) by mistake. All the lines got scrambled! Put the code back in the correct order, and use [conventional indentation for JS Conditionals](https://www.w3schools.com/js/js_conventions.asp). If there are multiple correct orders, make a case for why yours is the best.
   ```js
   } else if (data.amountOwed > 0 && data.dueDate <= today){ // if time left to pay
   if (data.amountOwed === 0){ // if nothing owed
   } // end of the if/else block
   } else { // else, they are past due
   var data = loadTotallyRealRenterInfo(); // get info from our database
   setTotallyRealDisplay(`You are past due! Please pay ${data.amountOwed} immediately!`);
   setTotallyRealDisplay("Thanks! Nothing Owed!");
   var today = new Date(); // look up what today's date is
   setTotallyRealDisplay(`You owe: ${data.amountOwed}`);
   ```
4. (Come back and answer this question after completing the rest of the assignment) What problems, if any, did you encounter at any point in this Lab? What did you do to overcome them?

## Part 2/3: Guided Exercise

In the previous Lab we learned about reading text and numbers from the keyboard and displaying those values back to the user. In this Lab we'll add if/else to those programs.

**Regular Reminder: Be familiar with my [plagiarism policy](effort.md). Also avoid Google, as the results it gives will be out of scope for where we are in this class. Instead, use the documentation sites I linked to in [Lab 1 Part 2](lab1.md).**

First, write a program in your assigned langauge that declares a string variable `name` and an integer variable `age`. Set `name` equal to your name and `age` equal to your age.

Second, add a print statement to your program that says "Your name is {value of name variable here}" and another that says "Your age is {value of age variable here}."

For example:

![String and int variable Julia example](https://cdn.glitch.com/77ee9ffd-8e7c-4214-b055-09d8b7f57665%2F96b60652-fdcc-4abe-8c90-b450ebbff944.image.png?v=1609433900000)

**Regular Reminder: My examples in Julia show the flow of logic and expected results in the Console pane. My examples will NOT have the same syntax as yours. Practice separating (a) the flow of logic for solving a problem in general from (b) the nitty gritty of different programming syntaxes.**

Run your program to make sure it works as you expected, then change the value of your `name` and `age` and run it again to make sure that the output changes as you expected too. Take and embed screenshots at this point.

Third, add an if/else to your program to display a different "scary" message based on the age of the user. If they are less than 18, display a message about bad acne or etc. Otherwise, display a message about taxes etc. For example:

![If/else Julia example](https://cdn.glitch.com/77ee9ffd-8e7c-4214-b055-09d8b7f57665%2Ffa2972ac-a095-4bf6-8cf4-4de75aafb58a.image.png?v=1609434017273)

Change the value of `age` a few times to make sure the if/else logic works as expected. Take and embed screenshots.

Fourth, modify the program so that `age` is read from the keyboard. Be sure to also add a prompt asking the user to enter their age so they know what to type. For example:

![Number input Julia example](https://cdn.glitch.com/77ee9ffd-8e7c-4214-b055-09d8b7f57665%2F9f0494b8-66e8-4bf6-9230-10919e5ccbe4.image.png?v=1609434143075)

Fifth, add at least one else-if to break the age ranges up further. For example:

![else-if Julia example](https://cdn.glitch.com/77ee9ffd-8e7c-4214-b055-09d8b7f57665%2Fc3f4ed28-6378-4ea7-aa6a-12747d1a33c8.image.png?v=1609434209909)

Finally, add two more else-if's, for a total of five logic branches. (One branch is the if, one branch is the else, and three branches are the else-if's.) Test your program thoroughly to make sure that the user can trigger all five messages, just by inputting different numbers when the program runs. Take and embed screenshots showing that all of your test cases work as expected.

## Optional Fun Exercise

This is completely optional, not worth extra credit or anything, just a fun warm up. I do encourage you to, as you best see fit, try basing a few Tinker journals on these optional exercises though.

This time, let's do something with random number generators and if/else instead of drawing. We haven't learned about loops yet, but that's okay. The idea this time is to create a "sim" game: the world randomly changes, then our player responds to it by displaying a message of what they are doing and changing a variable that represents their current "state," like sleeping or being hungry.

Create a new C# program (see repl link in Lab 1) and use this code:

```cs
using System;
using System.Threading;

class MainClass {

  // Values to tell us the possible states of our character
  enum States {
    SLEEPING,
    GROGGY,
    AWAKE,
    ANXIOUS,
    HUNGRY,
    HAPPY,
    INJURED,
    TIRED,
    DEAD
  }
  
  // All our logic goes in here
  public static void Main (string[] args) {

    // A random number generator
    var rng = new Random();

    // Flags to tell us the state of the world
    var isRaining = false;
    var isSunny = true;
    var alarmIsWorking = true;

    // What is the character's current state?
    var current = States.SLEEPING;

    // A loop -- we'll talk all about these next Lab
    while(current != States.DEAD){

      // Randomly change whether it's raining
      // When it is raining, 20% chance it will stop
      // When it is not raining, 5% chance it will start
      if (isRaining){
        if (rng.NextDouble() < 0.20){
          isRaining = false;
          Console.WriteLine("It stopped raining.");
        }
      } else {
        if (rng.NextDouble() < 0.05){
          isRaining = true;
          Console.WriteLine("It started raining.");
        }
      }

      // Same idea, but for the sun
      if (isSunny){
        if (rng.NextDouble() < 0.05){
          isSunny = false;
          Console.WriteLine("The sun is covered by clouds.");
        }
      } else {
        if (rng.NextDouble() < 0.05){
          isSunny = true;
          Console.WriteLine("The sun is out.");
        }
      }

      // The alarm clock is just totally random
      // 50% of the time it works, 50% it doesn't
      if (rng.NextDouble() < 0.50){
        alarmIsWorking = true;
        Console.WriteLine("The alarm clock is working.");
      } else {
        alarmIsWorking = false;
        Console.WriteLine("The alarm clock is on the fritz.");
      }

      // The fun part of the simulation.
      // Based on the character's current state,
      // plus the random states of the world,
      // the player does something,
      // and changes their state for the next round.
      if (current == States.SLEEPING){
        if (alarmIsWorking){
          Console.WriteLine("Player woke up on time for work.");
          current = States.AWAKE;
        } else if (isSunny){
          Console.WriteLine("Player was woken up by the sun.");
          current = States.HAPPY;
        } else {
          Console.WriteLine("Player way overslept.");
          current = States.GROGGY;
        }
      } else if (current == States.GROGGY){
        // TODO
      } else if (current == States.AWAKE){
        // TODO
      } else if (current == States.ANXIOUS){
        // TODO
      } else if (current == States.HUNGRY){
        // TODO
      } else if (current == States.HAPPY){
        // TODO
      } else if (current == States.INJURED){
        // TODO
      } else if (current == States.TIRED){
        // TODO
      }

      // Small chance the character is just hit by a meteor,
      // since we need *something* that will end the loop
      if (rng.NextDouble() < 0.05){
        current = States.DEAD;
        Console.WriteLine("Player was killed by a meteor.");
      }

      // Pause before the next step
      Thread.Sleep(1000);
    }    
  }
}
```

Read through the comments, get a feel for how the logic works, and especially pay attention to the indentation.

Then fill in some of the parts I left marked with "TODO"! Come up with any outrageous adventure/story/events/etc. you want your character to live through in your little "sim world."

Embed screenshots showing me your art!

## Part 3/3: Open-Ended Exercise

You know how groceries are cheaper when you buy them in bulk? What we're doing in this exercise is similar to that, but for buying ads in a newspaper: the more words in your ad, the better the discount.

What we want is a program that will answer the question, "How much money do I owe the newspaper?"

We'll say if you buy less than the bulk cutoff amount, you get the regular price. But if you buy at least the bulk cutoff amount, you get the discounted bulk price.

For example:

![Newspaper Julia example](https://cdn.glitch.com/77ee9ffd-8e7c-4214-b055-09d8b7f57665%2F187a1dc1-ee7e-47d5-b7c0-4288ddfd8439.image.png?v=1609434625290)

Write a program in your language that will ask the user (as a number) how many words are in their ad. Then tell them how much it will cost to run their ad following similar logic to my example above. (If your logic is different but accomplishes the same goal, then that's fine.)

Embed screenshots showing your code working for multiple user inputs, and for multiple configurations:

- Tax rate of 1.06, bulk pricing starts at 100 words, regular price is 10 cents per word, and bulk pricing is 8 cents per word
- Tax rate of 1.055, bulk pricing starts at 200 words, regular price is 15 cents per word, and bulk pricing is 12.5 cents per word

## Submission

Complete Parts 1, 2, and 3 in a single Word/etc. document, then submit your document as a Word or PDF file (NOT a .pages file) to Blackboard.

## Grading

Each Lab is worth 6/100 towards your final grade.

6/6 - Great job, maximum points! The student completes the Lab accurately and sufficiently and honestly, demonstrating the best of their ability. 

3/6 - Student completes most but not all of the Lab. Or, student completes the Lab, but only to the minimal letter of the prompt, not actually applying the concepts of the unit. If you encounter problems or have questions, be sure to send me an email well before 24 hours before the due date, then continue to attempt to resolve the issue on your own while you wait for a reply. 

1/6 - Student completes less than half of the Lab with sufficient work, or student leaves entire sections blank. Make sure that you are leaving yourself enough time to complete assignments, as usually students submit incomplete work because they were rushed at the last minute. 

0/6 - Student does not submit on time or submits plagiarized or unacceptable work. Double check that you have submitted the right file, as usually students get zeros because they submitted a previous week's work by accident.

## Tips

**How do I write a method?**

See Reading 9 for examples.

**How do I indent my code?**

You *must must must* indent your code properly in order to keep track of what's when when you're dealing with nested control structurs, like if/else, loops, methods, and so on.

In Python, this is a requirement of the language, but in all of them, you should make an *extremely* conscious effort to indent your code in a *mind-numbingly consistent way*.

Exactly how you indent your code, where you place your curly brackets, where you put blank lines--all that is up to your own personal style guide.

But, do have a style guide, and stick to it. Sloppy code is unreadable code, and unreadable logic is hard to debug logic. Also, being deliberate about your *style* will help make you deliberate about your *meaning*.

My personal style (across any language I use) is similar what's described in these guides:

- [https://javascript.info/coding-style](https://javascript.info/coding-style)
- [https://www.python.org/dev/peps/pep-0008/](https://www.python.org/dev/peps/pep-0008/)