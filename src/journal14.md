# Reading / Journal 14

## Object Oriented ✏️

Journals are a combination of a few things. First, the "journal." This is a very small weekly assignment where you write 200+ words (option 1) or submit  "tinker" code (option 2). Second, the "reading." This is where I direct you to read from a book, an online article, or watch a video, and I supplement those with my own lecture notes, graphs, figures, quotes, or so on.

All other assignments and lectures build upon these. Usually, there will be more reading at the start of a unit and less at the end.

## Reading

A few weeks ago, we learned how to code objects/classes in our various languages. I mentioned that, for small programs like that, we were bound to over-engineer things, but that there was a trade-off in our favor in larger programs.

Where do those trade-offs actually come into play?

The techniques that allow us to reduce the number of lines we write, related to objects and classes, and create easier to debug and revise code, fall under the idea of Object Oriented Programming.

This week's reading spells those techniques out. Figure 8-14 in the textbook is *very* important to understand in this reading: Objects share logic between each other in a "family tree" kind of structure.

The most important sections to focus on are:

- Understanding Inheritance
- Understanding Inheritance Terminology
- Understanding How Constructors are Called During Inheritance
- Understanding How a Derived Class Object...
- Using Inheritance to Achieve Good Software Design
- Chapter Summary

For the sections on constructors, destructors, and private/public, I suggest a skim and, if your language is one that draws on those, read as you best see fit to help flesh out your understanding of your language. Java *will* benefit from these sections, and Javascript *likely won't*, to give an idea of where that line is.

**Now read Chapter 8**

Finally, I suggest revisiting Chapter 6 for the sections you did not read early in the semester, now that we've learned a bit more to help understand those sections with deeper appreciation.

---

Now, let's learn our final topic, Try / Catch statements.

The best way to use a Try / Catch is to write your code such that a Try / Catch is not needed.

The book gives an example of division by zero errors and how those are caught. A better ("cleaner") approach is to reduce your need to use division operations at all (they are costly at the assembly level anyway), and when you *do* need to divide, you can use an If / Else to give easier to understand code:

```julia
x = ...
y = ...
if y == 0
  println("We can't divide like that")
else
  println("x / y = ${x/y}")
end
```

For cases like file exceptions, I listed this a few weeks ago:

> Even with correct logic, there are several errors that might pop up:
>
> - Our program tried to open a file for reading, but that file does not exist. (Typical of user-input error)
> - Our program tried to open a file for reading, it exists, but another program has that file "locked" so we can't open it. (Typical of Windows)
> - Our program tried to open a file for reading, it exists, it is not locked, but it belongs to another user on the computer so the OS won't grant our program permission to touch it. (Typical of Mac/Linux)
> - Our program successfully opened the file for reading, but it accidentally tried to read more lines of text than what was in the file. (Typical of programmer-logic error)
> - Our program tried to open a file for writing, but the folder we want to put that file in does not exist. (Typical of user-input or programmer-logic error)
> - Our program tried to open a file for writing, the folder exists, but the folder belongs to another user so the OS won't grant our program permission to touch that folder. (Typical of Mac/Linux)
> - Our program successfully opened the file for writing, but the disk ran out of space while it was writing. (Rare unless catastrophic)
> - Our program successfully opened the file for writing, but we forgot to "close" the file, so the OS did not save the last few bytes we wrote to the disk and now the file appears "corrupt." (Typical of programmer-logic error)

A sequence of If / Else checking for each of those errors and handling it gracefully may give a cleaner structure overall.

So why do we need Try / Catch statements, or exception handling at all, if we can use well-written If / Else statements?

In Object Oriented Programming, you are likely using code (invoking the methods of an object of some class) that was written by someone else. There may be a certain scenario or use of that object that is non-logical, or produces an error. In order to use the If / Else approach in an ecosystem like this, we would *have to know and understand all possible non-logical issues that could arise in everyone else's code*. Exceptions and Try / Catch are a way for you to *tell other programmers* who are using your code that a non-logical thing has occured.

And so, for the size of programs we have written in this course, and the size of programs you are likely to write in an intro course in college, this "ecosystem" issue does not arise all that often.

An If / Else will do just fine.

But at some point, you will encounter an "error"--more accurately, a non-logical situation detected by someone else's code that you are invoking--, and a Try / Catch is the right way to "interface" your code with those in deciding how to handle the issue and respond to the user *gracefully*.

**Now read Chapter 10**

## Journal

Choose from one of the following two options as you best see fit:

**Option One:** Submit a brief "200+ Words" reflecting on the reading and/or the course as a whole. These 200+ words are expected to come completely from the student, ignoring words from quotes/etc. The format of these assignments is up to the student as it best helps them: bulleted point notes on the reading; questions directed at the instructor of course material; a paragraph reflecting on the Lab assignment for the week; a poem; a summary of recent technology news; anything, so long as it is turned in on time, is relevant to the course, and meets the required length. 

**Option Two:** Submit a brief "Tinker" where you have attempted to "program" something, using the tools of the course, that is not directly related to another course assignment. Include screenshots of the input work done and the output result (even if it does not work), along with a brief statement of your intentions, the approach you took in getting it to work, and your thoughts on your result so far. Make sure it is clear what code came from you and what came from online/the reading/etc.

## Submission

Submit your journal as a Word/PDF (NOT a .pages) document to Blackboard.

## Grading

Journals are each worth 1/100 towards your final grade. Grading is pass/fail based on meeting the requirements of the chosen option.