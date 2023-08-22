# Lab 2

## Variables and Input/Output 🧑‍🔬

Labs provide hands-on experience with course material. They have three parts: review questions, guided exercise, open-ended exercise.

The first few Labs provide practice with fundamentals, and the later Labs go hand-in-hand with the term project check-ins.

Tips are at the very bottom. You should read them.

## Part 1/3: Review Questions

Answer the following questions from [our course textbook](https://kctcs.bncollege.com/c/Object-Oriented-Approach-to-Programming-Logic-and-Design/p/MBS_1107391_used?currentCampus=58&rental=false). If you have trouble getting a copy of the book, email me and [check the KCTCS libraries](https://kctcs.primo.exlibrisgroup.com/permalink/01KCTCS_INST/1jou7fq/alma9910949953404756). Type your answers all the way out -- *don't just say "a" or "b" or etc.*

- Chapter 2, Review Questions: 2, 5, 7, 9, 14, 15, 16, 17, 18, 19
- Chapter 2, Exercises: 2, 4, and 7

Also answer these questions:

1. Briefly define, in your own words and as it relates to what we've learned so far, the terms variable, data type, standard input, standard output, concatenation, interpolation, and type conversation.
2. In your Studio discussion on Blackboard, post a photo of your favorite kind of animal
3. *Story Problem:* ACME Corp. released the following code (for telling a laser to cut a square out of a sheet of metal) by mistake. All the lines got scrambled! Put the code back in the correct order. If there are multiple correct orders, make a case for why yours is the best.
```py
start_laser() # turn the laser on
size = int(input("How big? ")) # get user input
move_laser(0, size) # move to top left corner
end_laser() # turn the laser off
move_laser(0, 0) # move to the bottom left corner
move_laser(size, size) # move to top right corner
move_laser(0, 0) # move back to bottom left corner
from totally.real.package import start_laser, end_laser, move_laser # load laser tools
move_laser(size, 0) # move to bottom right corner
```
4. (Come back and answer this question after completing the rest of the assignment) What problems, if any, did you encounter at any point in this Lab? What did you do to overcome them?

## Part 2/3: Guided Exercise

Let's write a simple program that builds on what we've learned so far. The purpose of this program will be to teach you how to refer to and use documentation on your language and to get past some of the early tricky details of coding text-based input/output. The first tricky thing is string concatentation/interpolation.

**Regular Reminder: Be familiar with my [plagiarism policy](effort.md). Also avoid Google, as the results it gives will be out of scope for where we are in this class. Instead, use the documentation sites I linked to in [Lab 1 Part 2](lab1.md).**

First, write a program in your assigned langauge (on Repl.it) that declares a string variable `name`. Set `name` equal to your name.

Second, refer to documentation about your language for "string interpolation" and "string concatenation." You are looking for the simplest way to insert the value of a variable into a message to be printed. I'll give short examples below, but it's always good to have official documentation on hand. I cannot stress that enough. Take your time finding the option that makes the most sense to you, and send me an email if you have problems/errors/questions/etc.

Third, add a print statement to your program that displays at least three creepy messages using your name, such as "I know what you did last summer, {value of name variable here}." Run it to make sure it works. Change the value of `name` and run it again to make sure that the output changes as expected. Take and embed screenshots at this point.

For example, in Julia this looks like:

![Creepy message Julia example](https://cdn.glitch.com/77ee9ffd-8e7c-4214-b055-09d8b7f57665%2Fe5abecac-dd13-4c3e-ba0f-9c9acdfee0f5.image.png?v=1609430940244)

**Regular Reminder: My examples in Julia show the flow of logic and expected results in the Console pane. My examples will NOT have the same syntax as yours. Practice separating (a) the flow of logic for solving a problem in general from (b) the nitty gritty of different programming syntaxes.**

The string interpolation on the second line is pretty similar to how we do it in PHP and Python. For the other languages, well, things can look pretty different.

C:

```c
printf("I know what you did last summer, %s", name);
```

C++:

```cpp
cout << "I know what you did last summer, " << name << endl;
```

C# and Visual Basic:

```cs
Console.WriteLine("I know what you did last summer, {0}", name);
```

Java:

```java
System.out.printf("I know what you did last summer, %s", name);
```

JavaScript:

```js
console.log(`I know what you did last summer, ${name}`); // note the backticks instead of regular quotes!
```

PHP:

```php
echo "I know what you did last summer, $name";
```

Python:

```python
print(f"I know what you did last summer, {name}") # note the f before the string!
```

Swift:

```swift
print("I know what you did last summer, \(name)")
```

Fourth, refer to documentation about your language for "reading text from standard input." As above, take your time, find the option that makes the most sense for you, and send any questions/errors/etc. to me via email. (Javascript folks: use the `prompt("...")` function for input and `console.log("...")` for output.)

Fifth, modify your program so that `name` is read from the keyboard. If required in your language, be sure to also add a prompt asking the user to enter their name so they know what to type. Make any final tweaks to how your output looks, then take and embed screenshots of your final code and output. Include multiple runs of your program showing it working for different names.

For example:

![Readline Julia example](https://cdn.glitch.com/77ee9ffd-8e7c-4214-b055-09d8b7f57665%2Fec41c7aa-951c-4763-a5b1-5d14006b62d3.image.png?v=1609431085023)

Finally, add a two more "exchanges" with the user, for a total of three. For example, your first question could ask them their name, the second one could ask them their favorite animal, and the third one could ask them their favorite color. The point is, three times, ask the user for input, get that input, and display it back in a fun, string-interpolated message.

## Optional Fun Exercise

This is completely optional, not worth extra credit or anything, just a fun warm up. I do encourage you to, as you best see fit, try basing a few Tinker journals on these optional exercises though.

Create a new Javascript repl ([https://repl.it/new/html](https://repl.it/new/html)).

Replace the `index.html` file contents with this:

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>repl.it</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <img id="myImage" src="https://http.cat/100" style="display:none">
    <canvas id="myCanvas"
            width="300"
            height="300"
            style="border:1px solid #000000;">
    </canvas>
    <script src="script.js"></script>
  </body>
</html>
```

And replace the `script.js` file contents with this:

```js
// Variables to reference parts of the page
var ctx = document.getElementById("myCanvas").getContext("2d");
var img = document.getElementById("myImage");

// Draw the cat where we want it, and how big we want it
var pos_x = 10;
var pos_y = 10;
var width = 280;
var height = 280

ctx.drawImage(img, pos_x, pos_y, width, height);

// Draw a line where we want it and the color we want it
var color = "red";
var thickness = 5;
var start_x = 0;
var start_y = 0;
var end_x = 300;
var end_y = 300;

ctx.strokeStyle = color;
ctx.lineWidth = thickness;
ctx.moveTo(start_x, start_y);
ctx.lineTo(end_x, end_y);
ctx.stroke();
```

Add to and modify the `source.js` file (trial and error) to draw:

- A straight red line over the cat's mouth
- Three green whiskers on either side of the cat's mouth
- Blue squares around the cat's eyes, then connect the squares so they look like glasses

Embed screenshots showing me your art!

## Part 3/3: Open-Ended Exercise

In part 2, we read *words* from the keyboard. But the second tricky thing in text-based programs is reading *numbers* from the keyboard.

Refer to documentation in your language for converting strings to numbers and for reading numbers from the keyboard. This may involve up to three steps, depending on your language: setting up a Scanner (Java) to read from the keyboard; reading data from the keyboard as text; and converting the text data to a number. As always, take your time, find the option that makes the most sense for you, and send any questions/errors/etc. to me via email.

Create a program that will prompt the user to enter three numbers (one at a time). Tell the user that these numbers should be their grades on three Lab assignments, Lab 1, Lab 2, and Lab 3. After collecting these three numbers from your user, compute how many more points they will need to earn in this course to get an A, and display that result back to the user in a friendly message.

For example, if you get 3/6 on Lab 1, 6/6 on Lab 2, and 6/6 on Lab 3, you have earned 15 points so far. Since you need 90 points to get an A, you will need to earn at least 75 more points in this course to get that grade. That is, `pointsNeeded = 90 - lab1Grade - lab2Grade - lab3Grade`.

Embed screenshots of your final version of your code and a few test runs of your program showing that it works for different user inputs.

## Submission

Complete Parts 1, 2, and 3 in a single Word/etc. document, then submit your document as a Word or PDF file (NOT a .pages file) to Blackboard.

## Grading

Each Lab is worth 6/100 towards your final grade.

6/6 - Great job, maximum points! The student completes the Lab accurately and sufficiently and honestly, demonstrating the best of their ability. 

3/6 - Student completes most but not all of the Lab. Or, student completes the Lab, but only to the minimal letter of the prompt, not actually applying the concepts of the unit. If you encounter problems or have questions, be sure to send me an email well before 24 hours before the due date, then continue to attempt to resolve the issue on your own while you wait for a reply. 

1/6 - Student completes less than half of the Lab with sufficient work, or student leaves entire sections blank. Make sure that you are leaving yourself enough time to complete assignments, as usually students submit incomplete work because they were rushed at the last minute. 

0/6 - Student does not submit on time or submits plagiarized or unacceptable work. Double check that you have submitted the right file, as usually students get zeros because they submitted a previous week's work by accident.

## Tips

**How Do I Make Variables?**

Consult the documentation I linked to in Lab 1 for more information, but I'll give some quick examples here.

In C:

```c
// Inside the main...
int age = 100;
double gpa = 3.4;
string name = "Alice";
```

C is a language that requires us to specify the type in the variable declaration. Java does this too. This way they know how much space to reserve for us in RAM for that variable.

In Python:

```python
age = 100
gpa = 3.4
name = "Alice"
```

Python detects the type from the right-hand side, and treats the first time a variable is used as its declaration. (This can lead to logic errors if you aren't careful.) PHP does this too. They reserve space more dynamically, which can lead to slower execution compared to C, but takes some of the burden off your shoulders.

In Javascript:

```js
var age = 100;
var gpa = 3.4;
var name = "Alice";
```

Javascript requires the `var` keyword to denote that this is a declaration of a new variable, and not an update to an old one, but it also detects the type of the variable from the right-hand side like Python.

C#, Swift, and Visual Basic all give you the choice of specifying the type yourself (like C/Java) or letting it be auto-detected (like Javascript).

**How Do I Read a Number from the Keyboard?**

Age is a number. Asking for the user's age can require a few extra steps, since we have to first read in the *text* version of their input, then convert it into a number.

The basic form of this logic is:

```julia
age = 0
age_text = ""
println("What is your age?")
age_text = readline()
age = convert(Int, age_text)
println("You are $age years old!")
```

However, this *will* vary by language. I used Julia to give an example of the flow of the steps.

This uses two variables (one text, one numeric) and a type conversion near the end. Julia has the `convert` tool to turn a string into a number. C# has a similar `Convert` class. But, the exact type conversion syntax varies widely by language. Google search "Convert String to Int (your language name)" and "Convert String to Double (your language name)" to see what your options are.