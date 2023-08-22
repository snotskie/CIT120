# Reading / Journal 5

## Comparisons ✏️

Journals are a combination of a few things. First, the "journal." This is a very small weekly assignment where you write 200+ words (option 1) or submit  "tinker" code (option 2). Second, the "reading." This is where I direct you to read from a book, an online article, or watch a video, and I supplement those with my own lecture notes, graphs, figures, quotes, or so on.

All other assignments and lectures build upon these. Usually, there will be more reading at the start of a unit and less at the end.

## Reading

So far we've made simple sequential programs. These teach us how to declare variables, convert types, and handle console input/output. So let's turn to non-sequential programs.

But first, so far we've only dealt with two broad data types: text and numbers. But there is another that we'll talk about at length in this chapter's reading, and that's booleans. Booleans are true/false values, and they are at the heart of non-sequential programs.

Booleans are named after George Boole, who invented Boolean algebra, a math of true/false statements that was important in the development of computer science. Usually a Boolean variable is simply called a `bool`.

In older C code, a `bool` is just a number. Zero means false, and any other number (-2, 18, 3.14) would mean true. Like the assembly code we saw in last week's reading, this approach could lead to messy errors.

Modern versions of languages have a `true` and `false` keyword (capitalized in Python as `True` and `False`). These words *are* the values of bools, and they are the only two possible values a bool could have.

We could create a bool by declaring a variable (of the `bool` type if your language requires it) and assigning it to the value `true` or `false`, like so:

```julia
isRaining = true
isSnowing = false
```

We would call these variables "flags" usually. Notice how I wrote their names: Boolean variables are best to name like yes/no questions to make their meaning clear. Nothing forces us to do this--it's just good habit.

---

We can deal with boolean *variables*, and we can deal with boolean *values*. Values are the result of some computation.

Consider how `1 + 1` is an expression that takes two numbers and gives back a number. (The result is `2`, which is a number.) The same happens with `2 * 4` and `8 / 3`. All are computations taking two numbers and returning a third number.

*Relational comparisons*, in the same way, are computations that take two numbers, but they return a boolean value. For example, `1 < 1` and `2 >= 4`. Both take in two numbers and return the value `false`. The value `false` is not a number--it is a boolean.

*Logical operators* go the next step up. They take in two bools and return a bool. For example, `isRaining && isSnowing` would return false. It is not, according to the values I gave the flags above, raining *and* snowing. (`&&` is the symbol for `and` in most languages.)

This table summarizes those points:

 Operation Type | Takes in Two | Returns One 
----------------|--------------|-------------
 Math Operator  | Numbers      | Number
 Comparison Op. | Numbers      | Bool
 Logical Op.    | Bools        | Bool

Study how these work together to let us say:

```julia
if a+b < b+c && b+c < c+d
  println("b+c is between a+b and c+d")
end
```

**Now read from Chapter 3, sections "Evaluating Boolean Expressions" and "Using Relational Comparison Operators**

**And read the tutorial "Javascript If...Else Statements"** from [https://www.w3schools.com/js/js_if_else.asp](https://www.w3schools.com/js/js_if_else.asp)

(This guide on Javascript if/else has good tips for all of our languages about chaining multiple if/else together and how to indent it properly.)

## Journal

Choose from one of the following two options as you best see fit:

**Option One:** Submit a brief "200+ Words" reflecting on the reading and/or the course as a whole. These 200+ words are expected to come completely from the student, ignoring words from quotes/etc. The format of these assignments is up to the student as it best helps them: bulleted point notes on the reading; questions directed at the instructor of course material; a paragraph reflecting on the Lab assignment for the week; a poem; a summary of recent technology news; anything, so long as it is turned in on time, is relevant to the course, and meets the required length. 

**Option Two:** Submit a brief "Tinker" where you have attempted to "program" something, using the tools of the course, that is not directly related to another course assignment. Include screenshots of the input work done and the output result (even if it does not work), along with a brief statement of your intentions, the approach you took in getting it to work, and your thoughts on your result so far. Make sure it is clear what code came from you and what came from online/the reading/etc.

## Submission

Submit your journal as a Word/PDF (NOT a .pages) document to Blackboard.

## Grading

Journals are each worth 1/100 towards your final grade. Grading is pass/fail based on meeting the requirements of the chosen option.