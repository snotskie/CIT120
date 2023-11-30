# Reading / Journal 4

## Evolution ✏️

Journals are a combination of a few things. First, the "journal." This is a very small weekly assignment where you write 200+ words (option 1) or submit  "tinker" code (option 2). Second, the "reading." This is where I direct you to read from a book, an online article, or watch a video, and I supplement those with my own lecture notes, graphs, figures, quotes, or so on.

All other assignments and lectures build upon these. Usually, there will be more reading at the start of a unit and less at the end.

## Reading

The reading this week will give several terms I expect you to know (in bold in the book). It will also introduce you to the structure of modern programs and the two general data types, text and numbers.

Be aware that your language *will* differ from others in terms of:

- how a variable is *declared* for the first time
- how text is subdivided into possibly more specific types, like `char` vs. `string`
- how numbers are subdivided into possibly more specific types, like `int` vs. `double`

In general, you need a variable:

- When you need to hold a value for a long time, like a GPA
- When you need to give a name to a hard to type value, like PI=3.14159...
- When you need to reuse the same value over and over and over
- When you need to split a long calculation up into multiple steps
- When you need to represent an object or parts of a complex object in a large program

Also, it's good to know when to display text to the user and when to read text from their keyboard.

You might use keyboard input/output to:

- Ask someone to enter their SSN
- Ask someone to enter their phone number
- Ask someone to enter how many items they have in a list, then ask them one at a time for the names of those items
- Output the result of a calculation
- Output data arranged into a table or spreadsheet
- Output an ASCII art drawing
- Output an ASCII art drawing of a scientific graph based on the results of several calcuations

---

Towards the end of Chapter 2, the book lists three types of structure for how we organize the instructions for a program. I want to give a little historical context for why we use *these* three and not something else.

The basic building blocks of older programs were just two things:

- carrying out a single step, then moving on to the next step
- jumping to another line elsewhere in the program only when a certain value was 0, or otherwise moving on to the next step

This is the same pattern used by my old TI-83 calculator, and is what we call "goto" programming: We move about the list of instructions by selectively "going to" other lines. However, this style of logic is error prone because of the lack of protection against small human errors when designing the code.

More modern building blocks are what the book lists:

- carry out a step, then move on
- selectively do block A when a condition is true, else do block B
- repeat some block of code until some condition is false

These building blocks are no different, at the *machine* level, than the old ones. The only difference is in the language tools we're using and the way we conceptualize computational problem solving.

For example, this is an if/else statement in C:

```c
if (a < b){
  printf("Hello world!");
} else {
  printf("Goodbye world!");
}
```

We could write this same thing in a (fake) assembly langauage to do it the "goto" way:

```
PUSH a
PUSH b
LESS_THAN?
GOTO_IF_ZERO else
PUSH "Hello world!"
RUN printf
GOTO after
LABEL else
PUSH "Goodbye world!"
RUN printf
LABEL after
```

Even though we *could* still write our programs like this, why would we want to?

The only benefit of writing in an assembly language like this is that we can really get every ounce of speed from the machine. But with improvements in engineering, that isn't such a need anymore. Instead, we'd prefer to have easier to understand, and easier to modify and reuse, code.

So why did we design modern languages to use structures like `if` and `else` the way we do? There were other "structures" that people tended to make in assembly code. These "structures" didn't have a particular shape, and were more like the name for a general strategy you might see in a game of chess. But not all were made "official" in modern languages.

Some assembly-level strategies were easier to put into simpler terms, and others, just, stopped being needed as time went on and computers got better and developed more memory. What survived were those that had real use to programmers when problem solving, while at the same time helping to prevent bugs. These were tools for selecting one of several options, for repeating a set of steps with a small change each time the "loop" ran, and for making a few lines of code be reusable in multiple contexts, thus reducing the total number of lines needed to be written and allowing a team of programmers to better work together.

In all, this movement from general strategy to officially supported control structure is the trend in the evolution of programming languages.

**Now read the rest of Chapter 2**

**And watch the "C++ Console Lesson" video** from [https://www.youtube.com/watch?v=GeXPl2\_4Uok](https://www.youtube.com/watch?v=GeXPl2_4Uok), **or find a similar video** in your language (give me a link in your journal if you do)

## Journal

Choose from one of the following two options as you best see fit:

**Option One:** Submit a brief "200+ Words" reflecting on the reading and/or the course as a whole. These 200+ words are expected to come completely from the student, ignoring words from quotes/etc. The format of these assignments is up to the student as it best helps them: bulleted point notes on the reading; questions directed at the instructor of course material; a paragraph reflecting on the Lab assignment for the week; a poem; a summary of recent technology news; anything, so long as it is turned in on time, is relevant to the course, and meets the required length. 

**Option Two:** Submit a brief "Tinker" where you have attempted to "program" something, using the tools of the course, that is not directly related to another course assignment. Include screenshots of the input work done and the output result (even if it does not work), along with a brief statement of your intentions, the approach you took in getting it to work, and your thoughts on your result so far. Make sure it is clear what code came from you and what came from online/the reading/etc.

!!! note "Short on Words?"
    
    Short a few words in your journal and don't know what else to write about?

    This week's "get to know you" question is:

    *Share a tech tip, shortcut, or hack that you find invaluable* [(Credit)](https://jonitrythall.com/daily-discussion-prompts-wiggle-work-way)

    Feel free to write about this a little bit in your journal.

## Submission

Submit your journal as a Word/PDF (NOT a .pages) document to Blackboard.

## Grading

Journals are each worth 1/100 towards your final grade. Grading is pass/fail based on meeting the requirements of the chosen option.