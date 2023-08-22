# Lab 4

## Loops and Methods 🧑‍🔬

Labs provide hands-on experience with course material. They have three parts: review questions, guided exercise, open-ended exercise.

The first few Labs provide practice with fundamentals, and the later Labs go hand-in-hand with the term project check-ins.

Tips are at the very bottom. You should read them.

## Part 1/3: Review Questions

Answer the following questions from [our course textbook](https://kctcs.bncollege.com/c/Object-Oriented-Approach-to-Programming-Logic-and-Design/p/MBS_1107391_used?currentCampus=58&rental=false). If you have trouble getting a copy of the book, email me and [check the KCTCS libraries](https://kctcs.primo.exlibrisgroup.com/permalink/01KCTCS_INST/1jou7fq/alma9910949953404756). Type your answers all the way out -- *don't just say "a" or "b" or etc.*

- Chapter 4, Review Questions: 4, 5, 6, 7, 8, and 12
- Chapter 4, Exercises: 1
- Chapter 6, Review Questions: 2, 6, 9, 10, 11, 12, and 13

Also answer these questions:

1. How does our textbook define "desk checking"?
2. This is a common coding interview question: Desk check the following logic, and explain what this code has the computer do. How many times will it output the word "FizzBuzz"? Explain your reasoning. (Note: I am not asking you to *run* this code, I am asking you to *explain* it yourself by hand. This *really is* a common interview question.)
```txt
i = 1
while i <= 50
    if i % 15 == 0
        output "FizzBuzz!"
    elseif i % 5 == 0
        output "Buzz!"
    elseif i % 3 == 0
        output "Fizz!"
    else
        output i
    endif
endwhile
```
3. How does the book define "scope?" What logic errors does it mention related to this?
4. Send me an email that says hello
5. *Story Problem:* ACME Corp. released the following code by mistake. All the lines got scrambled! Put the code back in the correct order and add proper indentation. There is only one correct order.
```php
return $result;
function multiply($a, $b) {
}
$result = $a * $b;
```
6. (Come back and answer this question after completing the rest of the assignment) What problems, if any, did you encounter at any point in this Lab? What did you do to overcome them?

## Part 2/3: Guided Exercise

Let's practice making and calling methods in your assigned language. See Journal 9 for examples.

**Regular Reminder: Be familiar with my [plagiarism policy](effort.md). Also avoid Google, as the results it gives will be out of scope for where we are in this class. Instead, use the documentation sites I linked to in [Lab 1 Part 2](lab1.md).**

First, create a void method with no parameter inputs. Call it `displayCopyrightInfo`. Inside it's logic, just have it display a minimal copyright text.

Run your code to make sure it compiles and you have no syntax errors. You *shouldn't* see any output yet, since you haven't called your method yet. Embed a screenshot of your code at this point.

For example:

![void function Julia example](https://cdn.glitch.com/77ee9ffd-8e7c-4214-b055-09d8b7f57665%2Fca46b5e5-188a-49d6-8d6a-8c3e67dc9215.image.png?v=1609600045401)

**Regular Reminder: My examples in Julia show the flow of logic and expected results in the Console pane. My examples will NOT have the same syntax as yours. Practice separating (a) the flow of logic for solving a problem in general from (b) the nitty gritty of different programming syntaxes.**

Second, if you are using an interpreted language, call your method at the bottom of your code. If you are using a compiled language, call your method inside your main. Run it again and take another screenshot. For example:

![Calling method Julia example](https://cdn.glitch.com/77ee9ffd-8e7c-4214-b055-09d8b7f57665%2F0fedfe85-c12a-4a0e-8ef3-86d7048695ea.image.png?v=1609600147030)

Third, modify `displayCopyrightInfo` so that it takes one integer parameter, `year`. And modify it so that it inserts that variable into the message it displays.

Fourth, update your call in your "main" so that it calls `displayCopyrightInfo(2020)` instead. Then copy and paste that line a few times so it prints a copyright message for the years 2019, 2020, and 2021. Run and take another screenshot. For example:

![Method parameter Julia example](https://cdn.glitch.com/77ee9ffd-8e7c-4214-b055-09d8b7f57665%2Fde215eda-fe31-4d83-abdd-568a07ee957a.image.png?v=1609600313948)

Fifth, create a method that will return a number/double. Call it `addTaxRate`. Have it accept two number/double parameters, `subtotal` and `rate`. Inside its logic, just have it compute the `total` by multiplying `subtotal` with `rate`, then return the `total`.

Sixth, call `addTaxRate(10, 1.07)` in your main. You should *not* see any output yet, since we have not told the program to print anything about that method. Run and take another screenshot. For example:

![Returning a value Julia example](https://cdn.glitch.com/77ee9ffd-8e7c-4214-b055-09d8b7f57665%2F53ebf293-69c9-476a-9e40-021f74088223.image.png?v=1609600600432)

Seventh, capture the return value of that method in your main with a new variable named `total`. *Think carefully about the scoping going on here.* There should be one variable named `total` inside `addTaxRate` and *another* variable named `total` inside the main. Two different variables, that happen to have the same name, and that happen to hold the same value.

Eighth, print the value of `total` inside the main. Run and take a final screenshot. For example:

![Using a returned value Julia example](https://cdn.glitch.com/77ee9ffd-8e7c-4214-b055-09d8b7f57665%2Ffc8c1991-25e7-45cf-9867-886faa0a775d.image.png?v=1609600835359)

Finally, create a method named `applyDiscount`, similar to `addTaxRate`. It should be set up to take a subtotal and the percent we want to take off, so for example `applyDiscount(10.00, 0.20)` should return `8.0`. Call it in your main and embed screenshots of you testing it for a few different values.

## Optional Fun Exercise

This is completely optional, not worth extra credit or anything, just a fun warm up. I do encourage you to, as you best see fit, try basing a few Tinker journals on these optional exercises though.

This time, let's generate images with loops.

Create a new PHP web server repl using [https://repl.it/new/php7](https://repl.it/new/php7). We'll use this to generate random [SVG images](https://developer.mozilla.org/en-US/docs/Web/SVG/Tutorial/Basic_Shapes).

Replace the `index.php` file contents with:

```php
<?php
  header('Content-Type: image/svg+xml')
?>
<svg xmlns="http://www.w3.org/2000/svg" version="1.1">
<?php

  // Shape templates we can reuse
  // The %s marks are placeholders we can fill in later
  $circle_template = '<circle
    cx="%s"
    cy="%s"
    r="%s"
    stroke="%s"
    stroke-width="2"
    fill="%s" />';
    
  $rect_template = '<rect
    x="%s"
    y="%s"
    width="%s"
    height="%s"
    stroke="%s"
    stroke-width="2"
    fill="%s" />';


  // Call printf to fill in one of the templates
  printf($circle_template, 100, 80, 100, "black", "red");
  printf($rect_template, 60, 40, 80, 80, "black", "yellow");

  // Make some random circles
  // Start at a random location
  // Then each loop, move a little in some direction
  // Then change the direction we're heading in just a tad
  $cx = rand(100, 200);
  $cy = rand(100, 200);
  $heading_x = 10;
  $heading_y = 0;
  for ($i=0; $i < 50; ++$i){
    $heading_x += rand(-3, 3);
    $heading_y += rand(-3, 3);
    $cx += $heading_x;
    $cy += $heading_y;
    printf($circle_template, $cx, $cy, 40, "transparent", "orange");
  }
  
?>
</svg>
```

Hit Run. You should see a red circle, a yellow square, and an orange "doodle". To re-run your code, don't press Stop then Run again. Instead, hit Repl.it's little refresh button that looks like this:

<svg width="14" height="14" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" fill="transparent" style="vertical-align: middle;"><path d="M23 4V10H17" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M20.4899 15C19.8399 16.8399 18.6094 18.4187 16.984 19.4985C15.3586 20.5783 13.4263 21.1006 11.4783 20.9866C9.53026 20.8726 7.67203 20.1286 6.18363 18.8667C4.69524 17.6047 3.6573 15.8932 3.22625 13.9901C2.79519 12.0869 2.99436 10.0952 3.79374 8.31508C4.59313 6.53496 5.94942 5.06288 7.65823 4.12065C9.36705 3.17843 11.3358 2.81711 13.2678 3.09116C15.1999 3.3652 16.9905 4.25975 18.3699 5.64001L22.9999 10" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path></svg>

Next, look at the Manolo examples I have at the bottom of my [Generative Art](https://cdn.glitch.com/4d1ce3eb-1449-4924-ae06-785bd41e996a%2FGenerative_Art.pdf?v=1569862153378) PDF. Try to notice the shapes in one of those drawings. Where do you see a square? a circle? a line? What colors are those shapes? Where are they placed? How big are they? Which are in the back (ie, drawn first) and which are in the front (ie, drawn last)? And how might you generate drawings like that using loops?

For example, in the very very last image in that PDF, there is a blue squiggle in the top left. That squiggle is made out of a bunch of circles drawn right on top of each other, just moved a little each time. It seems like Manolo picked a random x/y position, drew a big white circle there, then drew a smaller blue circle on top of that, then moved his x/y position a little, then drew another blue circle, and so on.

The idea here is to "decompose" the art of others into the steps and shapes that make it up, then take some ideas from that to get our own ideas going.

Then, experiment with what you can make your PHP code do! One big tip if you've never used PHP is that variable names *always* start with a dollar sign.

As you revise, look at your picture and check your gut: what do you like about it, what do you not like about it, and so what one small change might you make to do something better? Then check your gut and revise again. Maybe you hate the color. Maybe you hate the size. Maybe you hate the emptyness and want to add another shape. The world is your oyster.

And when you're done\*, embed screenshots showing me your art!

\* "When is art done? When the check clears."

## Part 3/3: Open-Ended Exercise

Write a program with two methods, `tallRectangle` and `wideRectangle`. Both of these are void methods, and both of these accept a single integer parameter named `size`.

The `tallRectangle` method should print an ASCII rectangle made of `*` symbols. This rectangle should be 5 stars wide and `size` stars tall.

For example, `tallRectangle(7)` should print:

```txt
*****
*****
*****
*****
*****
*****
*****
```

Use a for loop to accomplish this method.

Similarly, the `wideRectangle` should print an ASCII rectangle that is 5 stars tall and `size` stars wide.

For example, `wideRectangle(10)` should print:

```txt
**********
**********
**********
**********
**********
```

Use multiple for loops to accomplish this method. There are multiple ways to go about this one, but if it works, it works.

In your "main," call both methods on the values 5, 10, and 15. Embed screenshots showing your final code and output. Use multiple screenshots if you need to scroll to show everything.

## Submission

Complete Parts 1, 2, and 3 in a single Word/etc. document, then submit your document as a Word or PDF file (NOT a .pages file) to Blackboard.

## Grading

Each Lab is worth 6/100 towards your final grade.

6/6 - Great job, maximum points! The student completes the Lab accurately and sufficiently and honestly, demonstrating the best of their ability. 

3/6 - Student completes most but not all of the Lab. Or, student completes the Lab, but only to the minimal letter of the prompt, not actually applying the concepts of the unit. If you encounter problems or have questions, be sure to send me an email well before 24 hours before the due date, then continue to attempt to resolve the issue on your own while you wait for a reply. 

1/6 - Student completes less than half of the Lab with sufficient work, or student leaves entire sections blank. Make sure that you are leaving yourself enough time to complete assignments, as usually students submit incomplete work because they were rushed at the last minute. 

0/6 - Student does not submit on time or submits plagiarized or unacceptable work. Double check that you have submitted the right file, as usually students get zeros because they submitted a previous week's work by accident.

## Tips

**How Do I Make a Method?**

Just for quick reference, a good place to start is watching someone else, such as these or a similar video in your language:

- [#33 Python Tutorial for Beginners | Function Arguments in Python](https://www.youtube.com/watch?v=ijXMGpoMkhQ)
- [Methods | C# | Tutorial 12](https://www.youtube.com/watch?v=MkDroqxS8LY)

Also continue to refer to whatever documentation has been most helpful to you so far, and reach out to me via email with any unanswered questions you have.

<!-- **For Loop Example: Sums**

In this example we'll be answering the question, what is `1+2+...+1000`?

For example, in Julia:

```julia
# Input Variables
cutoff = 1000

# Let's calculate the answer
sum = 0
for x = 1:cutoff
    sum += x
end

# Let's format the message
message = "The total of 1+2+...+$cutoff is $sum"

# And let's output the message and be done
println(message)
```

(Julia uses a simplified for loop syntax like Python. Your language might resemble the following C code instead:)

```c
int sum = 0;
for (int x=1; x <= cutoff; ++x){
  sum += x;
}
```

**Altogether Loop Example: FizzBuzz**

There is this party game for children called "fizz buzz."

The way it works is the first child says "one" and the second child says "two" and so on around the circle, counting up as they go. However, on a multiple of three, a child is supposed to say "Fizz!" instead. If a child ever says the wrong thing, they are out!

For example, in Julia:

```julia
# Input Variables
num = 7

# Let's play the game!
for i = 1:num
    if mod(i, 3) == 0
        println("Fizz!")
    else
        println(i)
    end
end

# Result:
# 1
# 2
# Fizz!
# 4
# 5
# Fizz!
# 7
```

(Julia uses the `mod` function to calculate the remainder of division. Mod is short for the term modulo. Most languages would use `i % 3 == 0` here instead. If the result of a mod is zero, that means it's an "is evenly divisble by" case. This is why we have `== 0` as our comparison.)

A harder version of this game has an extra rule: on a multiple of five, you say "Buzz!" This means on a multiple of fifteen, you would say *both* words, yielding "FizzBuzz!"

This harder version of the problem is a common programming interview question you should know how to write in multiple languages. -->

<!-- How much is 1+2+...+10? How much is 1+2+...+100? How much is 1+2+...+1000000? What is a 7% tax on 1+2+...+1000000?

Let's write a program to help us solve this.

We'll break this up into two tasks: computing a sum, and computing a tax.

First, refer to documentation for your language about "defining methods."

Second, create a method called `computeSum` that takes one argument named `N`. Depending on your language, these details might be important:

- `computeSum` will return an integer
- `N` is an integer
- `computeSum` can be public or private, and should be static (Java, C#)

Third, inside the method, declare an integer named `sum` and set it equal to zero.

Fourth, right after setting `sum` equal to zero, create a for loop that takes `i` from 1 to `N`.

Fifth, inside the for loop, set `sum` equal to `sum + i`. Then after the for loop, return the value of `sum`.

Just to illustrate, here's what this looks like in Julia:

```julia
function computeSum(N)
  sum = 0
  for i = 1:N
      sum = sum + i
  end
  
  return sum
end
```

(Remember, NEVER copy and paste the Julia code in and try to revise it piece by piece. That will just lead to errors that are hard to debug it. Follow the first/second/third/... instructions above and write it in your own language from scratch. Just look to my example as a reference for the order and nesting of the logic.)

Sixth, inside your main (compiled languages) or at the very end of your code (interpreted languages), print the result of `computeSum(10)`, `computeSum(100)`, and `computeSum(1000)`.

Just to illustrate:

```julia
function computeSum(N)
  sum = 0
  for i = 1:N
      sum = sum + i
  end
  
  return sum
end

println(computeSum(10))
println(computeSum(100))
println(computeSum(1000))
```

You should see 55, 5050, and 500500 as your output. Take and embed screenshots.

Seventh, let's move on to the other method, taxes. Create a method called `computeTax` that takes two arguments, `subtotal` and `rate`. Full details:

- `computeTax` returns a double
- both `subtotal` and `rate` are doubles
- `computeTax` can be public or private, and should be static (Java, C#)

Inside the method, simply return the value of `rate * subtotal`.

Eigtht, inside your main or at the bottom of your code, print the result of `computeTax(10, 1.06)`, `computeTax(20, 1.06)`, and `computeTax(20, 1.07)`. Verify that the results match what you'd expect, then take and embed screenshots.

Finally, use what you've made to compute and output a 7% tax on 1+2+...+1000000. Make any final tweaks to your output, then take and embed screenshots of your final code and output. -->


<!-- Put some thought into these:

1. Suppose you wrote a program that you suspect is in an infinite loop because it keeps running for several minutes with no output and without ending. What could you add to your program to help you discover the origin of the problem? Think of three specific ideas.
2. In the following Julia code, the loop ends almost immediately when `a=0.5` on the first line, but appears to go infinite when I change it to `a=0.4` instead. Why do you think this is? Can you give me *proof* that the loop really is infinite when `a=0.4`, or if it just takes a very long time?
```julia
a = 0.5
b = 0.9
while a < b
  global a, b
  println("Thinking: $a $b")
  a *= b
  b -= a
end

println("DONE: $a $b")
```
3. A key skill in team programming is documenting what methods should do without knowing the exact language/tools/etc. someone else might use to write them. Read the [Python Docstring conventions](https://www.python.org/dev/peps/pep-0257/) page, which has a good convention of do's and dont's you can apply to any language. Then, write, in plain-but-formal English, documentation describing to someone else a `DaysUntil` method. This should return the number of days until a given date. Be sure to specify in your documentation umabiguously how someone should pass a date into your method: Will you use a string like "2017-09-01", three integers, a single integer, something else? Will you care about minutes and seconds? etc. -->