# Reading / Journal 8

## Purpose ✏️

Journals are a combination of a few things. First, the "journal." This is a very small weekly assignment where you write 200+ words (option 1) or submit  "tinker" code (option 2). Second, the "reading." This is where I direct you to read from a book, an online article, or watch a video, and I supplement those with my own lecture notes, graphs, figures, quotes, or so on.

All other assignments and lectures build upon these. Usually, there will be more reading at the start of a unit and less at the end.

## Reading

In this class we have learned:

1. The variables and operators that make up individual *statements*
2. If/else that allows us to *branch* between two or more sets of statements
3. And for loops that let us *iterate* over a set of statements

In most online tutorials, programming books, and so on, the chapters tend to go in this order:

1. Variables and operators
2. If/else
3. While loops
4. For loops

I am teaching while loops after for loops because:

- You will use for loops *much* more often than while loops in real life
- For loops are *far* more intuitive
- For loops are less prone to coder-miskate errors than while loops
- Good uses for while loops require us talking about either try/catch or theoretical CS

So why do most tutorials teach while loops first? I believe the reason is that, historically, if/else, while, and for loops were created in that order.

In a language that has if/else and the goto statement, we don't need while or for. We can *simulate* a while (in C) like this:

```c
// logic before the loop here

above: // this is a "label"
if (condition){
  // logic inside the loop here
  goto above; // jump to the label "above"
}

// logic after the loop here
```

This is *identical* to this simpler syntax:

```c
// logic before the loop here

while (condition){
  // logic inside the loop here
}

// logic after the loop here
```

Regardless of which, it would execute like this:

1. First, we'd do whatever we'd need to do before our "while" loop.
2. Then we check if we need to start the loop.
3. If so, we run the logic that is inside the loop and go check if we need to run it again, repeating *while* the condition for the if continues to be true.
4. If we don't need to start the loop (because the condition starts out false) or when we complete the loop (when the condition becomes false by the end of a run of the loop), then we move on to the logic after the loop.

While loops then evolved into for loops when simply counting. For example:

```c
int i=0;
while (i < 10){
  printf("The number is %d", i);
  i += 1;
}
```

This is *identical* to this more compact syntax:

```c
for (int i=0; i < 10; ++i){
  printf("The number is %d", i);
}
```

So why do we need two kinds of loops?

"Keep your code readable kids" means signaling your intentions:

- We use a for loop when you know or can calculate, before the loop runs, exactly how many times it will run
- We use a while loop when knowing the number of iterates beforehand is impossible
- These two uses represent unrelated problem solving moments, so having two different control structures helps to signify clearer logical intentions

If we are asking the user to enter a number, and we are repeating the prompt as long as they keep entering non-numeric data until they get it right (aka, "massaging" the user), we can never know, as the computer, how many times it will take them to get it right. It could be in one try, twelve, or forever.

So what is the "logical intention" behind either loop?

- The purpose of the for loop is to repeat some set of steps a known number of times
- The purpose of the while loop is to **make its condition false**

Commit that second bullet point to memory, since it's a non-obvious take-away.

To illustrate, imagine asking the user for a number between 1 and 100. We *want* `1 <= user_input && user_input <= 100`. So the while loop should test for the *logical opposite* of that:

```c
int user_input = ... // prompt the user politely
while (1 > user_input || user_input > 100){
  user_input = ... // prompt again, assertively
}
```

In other words, the purpose of this while loop is to *make the user enter **good** data*.

So, we make the while loop condition test whether *the user enter **bad** data*.

And, don't forget, we *must* do some sort of work inside of the while loop to advance that goal: here, we just prompt the user again. At some point they'll enter a good number, or just close the program.

If you forget to do this last step, or if you get the condition of the while loop backwards, this can lead to an *infinite loop*: a while loop that is impossible to escape, because no work is being done to reverse its condition. The computer will get stuck in that loop forever and no other, more important, work will be done.

**Now watch "De Margan's Laws for Computer Science and Programming"** from [https://www.youtube.com/watch?v=AGyjo2DLxjM](https://www.youtube.com/watch?v=AGyjo2DLxjM)

**Now read the rest of Chapter 4**

**And read the page "The While Loop"** from [http://www.cs.utah.edu/~germain/PPS/Topics/while\_loops.html](http://www.cs.utah.edu/~germain/PPS/Topics/while_loops.html)

---

We've mentioned "type casting" briefly elsewhere. Before we hit our half-way point (usually Fall/Spring break), I wanted to show two examples of this, since it's a small thing that:

- is important to get right in many cases
- is easy to get wrong when just starting out
- and varies *heavily* from language to language.

**Now watch these two videos on type casting**, one for Java from [https://www.youtube.com/watch?v=qJ5Dc8eLyqA](https://www.youtube.com/watch?v=qJ5Dc8eLyqA) and one for PHP from [https://www.youtube.com/watch?v=bkFstTMyivs](https://www.youtube.com/watch?v=bkFstTMyivs), **or find a similar video** in your language (give me a link in your journal if you do)

## Journal

Choose from one of the following two options as you best see fit:

**Option One:** Submit a brief "200+ Words" reflecting on the reading and/or the course as a whole. These 200+ words are expected to come completely from the student, ignoring words from quotes/etc. The format of these assignments is up to the student as it best helps them: bulleted point notes on the reading; questions directed at the instructor of course material; a paragraph reflecting on the Lab assignment for the week; a poem; a summary of recent technology news; anything, so long as it is turned in on time, is relevant to the course, and meets the required length. 

**Option Two:** Submit a brief "Tinker" where you have attempted to "program" something, using the tools of the course, that is not directly related to another course assignment. Include screenshots of the input work done and the output result (even if it does not work), along with a brief statement of your intentions, the approach you took in getting it to work, and your thoughts on your result so far. Make sure it is clear what code came from you and what came from online/the reading/etc.

## Submission

Submit your journal as a Word/PDF (NOT a .pages) document to Blackboard.

## Grading

Journals are each worth 1/100 towards your final grade. Grading is pass/fail based on meeting the requirements of the chosen option.