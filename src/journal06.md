# Reading / Journal 6

## Logic ✏️

Journals are a combination of a few things. First, the "journal." This is a very small weekly assignment where you write 200+ words (option 1) or submit  "tinker" code (option 2). Second, the "reading." This is where I direct you to read from a book, an online article, or watch a video, and I supplement those with my own lecture notes, graphs, figures, quotes, or so on.

All other assignments and lectures build upon these. Usually, there will be more reading at the start of a unit and less at the end.

## Reading

Last week we read about the boolean data type and logical operators. This week we are continuing to talk about if/else structures.

There are four points you will want to focus on this unit:

- The syntax of if/else if your language
- The syntax and meaning behind the "and" and "or" logical operators in your language
- The way and reason we represent logical ranges in programming
- And the same above points for loops

---

In most languages, if/else has the following general structure

```js
if (first condition here){
  do something
} else if (second condition here){
  do something
} else {
  do something
}
```

In this, we check if the first condition is true. If so, we do the instructions at the first `do something` line. If the first condition is false but the second condition is true, then we do the instructions at the second `do something` line. Otherwise, when all conditions are false, we do the last `do something` line's instructions.

Note the placement of the `(parentheses)` and `{braces}` here. Also note the indentation.

Swift uses the above syntax, but without parentheses.

Python has a simplified if/else:

```py
if first condition here:
  do something
elif second condition here:
  do something
else:
  do something
```

Note there are no parentheses, but there is a colon. The indentation is also *required* in Python, not just recommended.

And in Visual Basic it is more spelled out like in English:

```vb
If first condition here Then
  do something
ElseIf second condition here Then
  do something
Else
  do something
End If
```

Julia, the language I use for my examples, is between Python and Visual Basic:

```julia
if first condition here
  do something
elseif second condition here
  do something
else
  do something
end
```

---

In most languages, we represent logical "and" and "or" with `&&` (meaning and) and `||` (meaning or), respectively.

For example:

```js
if (isRaining && isCold){
  isSnowing = true;
}
```

Python and Visual Basic use the keywords `and` and `or` instead, as in:

```vb
If isRaining And isCode Then
  isSnowing = True
End If
```

---

Finally, at several points in programming you'll want to check if a value lies in a certain range. For example, when outputing grades, if the number grade is between 80 and 90, the letter grade is a B.

To do one range check, we need two comparisons. The first one checks if we are above the lower bound, and the second checks if we are below the upper bound. In C this would look like:

```c
if (90 <= number_grade && number_grade < 100){
  printf("You get an A");
} else if (80 <= number_grade && number_grade < 90){
  printf("You get a B");
} ...
```

I tend to write my code so the "arrows" always "point left" in cases like this. This makes a range check look like it does in math, "80 <= N < 90," and thus helps to signal the intention of that code.

Keep your code readable kids: Signal the intentions of your code with consistency and convention.

**Now read the rest of Chapter 3**

**And watch the video "Logical AND OR NOT"** from [https://www.youtube.com/watch?v=f8osL\_iz-LY](https://www.youtube.com/watch?v=f8osL_iz-LY)

## Journal

Choose from one of the following two options as you best see fit:

**Option One:** Submit a brief "200+ Words" reflecting on the reading and/or the course as a whole. These 200+ words are expected to come completely from the student, ignoring words from quotes/etc. The format of these assignments is up to the student as it best helps them: bulleted point notes on the reading; questions directed at the instructor of course material; a paragraph reflecting on the Lab assignment for the week; a poem; a summary of recent technology news; anything, so long as it is turned in on time, is relevant to the course, and meets the required length. 

**Option Two:** Submit a brief "Tinker" where you have attempted to "program" something, using the tools of the course, that is not directly related to another course assignment. Include screenshots of the input work done and the output result (even if it does not work), along with a brief statement of your intentions, the approach you took in getting it to work, and your thoughts on your result so far. Make sure it is clear what code came from you and what came from online/the reading/etc.

## Submission

Submit your journal as a Word/PDF (NOT a .pages) document to Blackboard.

## Grading

Journals are each worth 1/100 towards your final grade. Grading is pass/fail based on meeting the requirements of the chosen option.