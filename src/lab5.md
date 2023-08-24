# Lab 5

## Arrays and Objects 🧑‍🔬

Labs provide hands-on experience with course material. They have three parts: review questions, guided exercise, open-ended exercise.

The first few Labs provide practice with fundamentals, and the later Labs go hand-in-hand with the term project check-ins.

Tips are at the very bottom. You should read them.

## Part 1/3: Review Questions

Answer the following questions from [our course textbook](https://kctcs.bncollege.com/c/Object-Oriented-Approach-to-Programming-Logic-and-Design/p/MBS_1107391_used?currentCampus=58&rental=false). If you have trouble getting a copy of the book, email me and [check the KCTCS libraries](https://kctcs.primo.exlibrisgroup.com/permalink/01KCTCS_INST/1jou7fq/alma9910949953404756). Type your answers all the way out -- *don't just say "a" or "b" or etc.*

- Chapter 5, Review Questions: 3, 4, 10, 11, 12, 13, 15, and 18
- Chapter 7, Review Questions: 6, 7, 10, and 18
- Chapter 7, Exercises: 1 and 2

Also answer these questions:

1. In a language with zero-based indexing, at what index will the 100th item in an array be?
2. Same as above, but for a language with one-based indexing. 
3. Explain, in your own words, the relationship between for loops and arrays.
4. In your Studio discussion on Blackboard, post the days and times that will work best for you to meet for Studio 3 (which happens two weeks after this Lab is due)
5. (Come back and answer this question after completing the rest of the assignment) What problems, if any, did you encounter at any point in this Lab? What did you do to overcome them?


## Part 2/3: Guided Exercise

In the previous Lab we made methods. In this Lab, we'll make classes/objects.

Since the syntax for this varies a *lot* by language, be sure to consult your favorite documentation, my examples in Reading 12, and me directly (via email). Also save and test your code *often* as you work. We're pulling everything we've learned so far together in this Lab.

*This Lab is the most difficult: Make sure you get each step working before moving on to the next, and **reach out** if you have questions/errors, no problem!* :)

**Regular Reminder: Be familiar with my [plagiarism policy](effort.md). Also avoid Google, as the results it gives will be out of scope for where we are in this class. Instead, use the documentation sites I linked to in [Lab 1 Part 2](lab1.md).**

First, create a new repl for your assigned language.

Second, create a class/struct named `Point2D`. A `Point2D` object should have two members/fields: a number/double named `x` and a number/double named `y`. If necessary in your language, create a simple constructor that accepts two parameters, `x` and `y`. Journal 12 is a great place to start.

Third, create a method called `show` that takes a `Point2D` object as its one parameter. This method should print a message like "x: {x value of the point here}, y: {y value of the point here}."

Fourth, test that your class and method work. In your main or at the bottom of your code, create a few different `Point2D` objects and show their values with your `show` method. Take and embed screenshots.

For example:

![Point2D Julia example](https://cdn.glitch.com/77ee9ffd-8e7c-4214-b055-09d8b7f57665%2Fa12cb3f4-5250-48e2-89b4-8f18eedd13ea.image.png?v=1609604708911)

**Regular Reminder: My examples in Julia show the flow of logic and expected results in the Console pane. My examples will NOT have the same syntax as yours. Practice separating (a) the flow of logic for solving a problem in general from (b) the nitty gritty of different programming syntaxes.**

Fifth, refer to documention for your language about "generate random number," "initialize object array of size N" (compiled languages), and "list append" (interpreted langauges).

Sixth, if you have a compiled language, in your main initialize an array that can hold 20 `Point2D` objects. If you have an interpreted language, at the bottom of your code create an empty array that can hold `Point2D` objects.

Seventh, after that, in a for loop, twenty times create a `Point2D` with randomly generated `x` and `y` values and add that point to your array.

Finally, after that, in another for loop, call `show` on each item in your list so you can check that everything works. Take and embed screenshots. For example:

![Array of Point2D Julia example](https://cdn.glitch.com/77ee9ffd-8e7c-4214-b055-09d8b7f57665%2Fcc178cfd-6091-4510-b590-9f8e65031674.image.png?v=1609604974430)

Keep your code around. We're going to add to it in Part 3 below.

## Optional Fun Exercise

This is completely optional, not worth extra credit or anything, just a fun warm up. I do encourage you to, as you best see fit, try basing a few Tinker journals on these optional exercises though.

Now that we've covered objects and arrays, we can begin making simple video games!

Start by viewing this Java repl: [https://repl.it/@OrionSmith/Console-Dodgem#Main.java](https://repl.it/@OrionSmith/Console-Dodgem#Main.java)

Hit run and play the game for a little bit to get an idea of what is going on.

Then find line 104 of the `Main.java` file. Get the gist of what is going on in this loop.

Then find line 121. Again get the gist.

Then line 148.

Then line 158.

Then line 178.

Then take a peek at the other `.java` files. These describe one class each, which get used in the Main logic you just looked through.

When you're ready to start modifying this code, press the Fork button next to the Run button. Then try making changes such as:

- By default the player is represented with an A. Make it an X instead.
- By default the barriers are represented with 0s. Make them #'s instead.
- By default, `difficulty` is used to determine how much percent of the grid is filled with barriers. Make it so that 50% of the grid is barriers (impossibly hard). Or just 2%.
- By default, the barriers just move left and right. Make them "fall" as well. (Hint: lines 167 and 169, replace `b.getY()` with `(b.getY()+1) % grid.getHeight()`)

And when you're done\*, embed screenshots showing me your art!

\* "When is art done? When the check clears."


## Part 3/3: Open-Ended Exercise

Continuing from Part 2, now that we have an array of `Point2D`, let's find the [centroid](https://en.wikipedia.org/wiki/Centroid) of those points. A centroid is a point at the average position of a set of other points. In other words, the x-position of the centroid is equal to the average x-position of all the other points; and same for the y.

First, at the bottom of your code, using a third for loop, find the sum of the x values of each of your points. Then after that for loop, divide that sum by twenty to find the average. Save this into `averageX`. Then do something similar to find the `averageY`.

Second, create a `Point2D` object named `centroid`, with x value equal to `averageX` and y value equal to `averageY`, and display it using `show`. Check that things work as expected. For example, if your points are randomly placed between (0, 0) and (1, 1), then I expect the centroid to be near (0.5, 0.5).

Finally, adjust your code so that it uses 1000 points instead of 20. Make any final tweaks to your output, then take and embed screenshots of your final code and output.

## Submission

Complete Parts 1, 2, and 3 in a single Word/etc. document, then submit your document as a Word or PDF file (NOT a .pages file) to Blackboard.

## Grading

Each Lab is worth 6/100 towards your final grade.

6/6 - Great job, maximum points! The student completes the Lab accurately and sufficiently and honestly, demonstrating the best of their ability. 

3/6 - Student completes most but not all of the Lab. Or, student completes the Lab, but only to the minimal letter of the prompt, not actually applying the concepts of the unit. If you encounter problems or have questions, be sure to send me an email well before 24 hours before the due date, then continue to attempt to resolve the issue on your own while you wait for a reply. 

1/6 - Student completes less than half of the Lab with sufficient work, or student leaves entire sections blank. Make sure that you are leaving yourself enough time to complete assignments, as usually students submit incomplete work because they were rushed at the last minute. 

0/6 - Student does not submit on time or submits plagiarized or unacceptable work. Double check that you have submitted the right file, as usually students get zeros because they submitted a previous week's work by accident.

## Tips

**How do I make a class/struct?**

See Reading 12 for language-by-language examples.