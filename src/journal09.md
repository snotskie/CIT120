# Reading / Journal 9

## Methods ✏️

Journals are a combination of a few things. First, the "journal." This is a very small weekly assignment where you write 200+ words (option 1) or submit  "tinker" code (option 2). Second, the "reading." This is where I direct you to read from a book, an online article, or watch a video, and I supplement those with my own lecture notes, graphs, figures, quotes, or so on.

All other assignments and lectures build upon these. Usually, there will be more reading at the start of a unit and less at the end.

## Reading

!!! note "Midpoint Check-in"

    Welcome back from break!

    Since it's the midpoint of our semester, it's a good time check in with how folks are feeling.

    Feel free to reflect in your journal this week on your thoughts on the course so far.

    If you want some survey questions to help get you started, consider these:

    - Approximately how much time have you devoted to this course on a weekly basis thus far?
    - Have you read all of Ms. Knowles' announcements, messages, readings and videos, and other weekly course items? If no, do you pick and choose, or prefer to figure things out on your own?
    - Back in [Lab 1](lab1.md), I had you rank your incoming knowledge on a number of items. Since then, do you feel more knowledgeable with any of those items?
    - Do you have any comments, recommendations, or questions for Ms. Knowles moving forward in the course to help you be successful? Some example things to consider are course design, layout, resources provided, scheduling online meetings, course assistance, assignments, and grades.

The reading from the textbook this week you could say is split into answering two questions:

- Why do we use methods
- How do we code them

I suggest focusing on these sections as you read:

1. Understanding the Advantages of Modularization ("why")
2. Modularizing a Program ("how")
3. Take a break from the book to read up online about the general syntax for how to write methods in your language (I also give some examples below, but don't rely on *just* those)
4. Creating Methods that Require Parameters ("how")
5. Creating Methods that Return a Value ("how")
6. Take a break to read up how to create methods in your language that accept no parameters, one parameter, two parameters, and so on; and methods that do not return a value, methods that return an integer, methods that return a string, and so on.
7. Finally, read the summary and the key terms from the textbook

This will cut out about half of the chapter's reading. Because of the way methods are tied to object-oriented-ness, it will be better for you to return to those cut-out sections in a few weeks once we've covered object-oriented-ness in more depth.

**Now read Chapter 6**

---

Informally, the two types of methods are "void methods," and "value methods."

A void method is one that does not return a value. These are the "do something" methods. For example, in Java:

```java
public static void SayHello()
{
    System.out.println("Hello!");
}
```

We know this is a void method because it uses the word "void" in its definition.

The same in Python:

```py
def SayHello():
  print("Hello!")
```

We know this is a void method because it does not contain a `return` statement.

---

A value method has a `return` statement and value. These are the "calculate something" methods. For example, in C#:

```cs
public static double PlusOne(double X)
{
    double answer = X + 1;
    return answer;
}
```

We know this is a value method because it has `double` instead of `void` in the signature, specifying the data type of the value it promises to return.

The same in Javascript:

```
function PlusOne(X){
  var answer = X + 1;
  return answer;
}
```

We know this is a value method because it contains a `return` statement. We cannot know the data type of the returned value without knowing the data type of the input value, `X`. By the logic and the naming, we *expect* the return type to be numeric, but this is not enforced in this language, so be careful. This is a general issue with our interpreted languages.

---

A method cannot contribute to the logic of your program or affect the output in any way unless it is called within the main (or the equivalent starting point for your language), or called by one of those methods, or called by one of *those*, so on and so forth.

In all our languages, calling methods takes the form:

```c
function_name_here(variables, for_the_input, here)
```

You have already been doing this yourself several times so far. When you display output to the user or read input from the keyboard, you have been calling methods prepared for you by programmers in the past.

You will now be able to write methods of your own to call as you best see fit.

---

I promised examples. Between all our languages, methods (sometimes called functions or subroutines) always contain two parts:

- A signature
- A body

The signature describes the rules for what can go in and out of this "box." The body contains the code that is executed within that "box," and takes the input to produce the output. Not all methods have input, not all have output, and some have neither and some have both. A method can have as many values as input as you want. A method can only output one or none. A method cannot output two or more values. (Python lets you do this, but it wraps your "two or more" up into a single tuple that gets returned, so it's kind of cheating.)

In all of the examples to follow, we have exactly four lines of code:

1. The signature for a method named `addOne` that takes an input of a single integer `x` and returns an integer result
2. First line of the method body, creating a variable named `answer`
3. Returning the `answer` to whoever invoked `addOne`
4. Closing the method body (Python marks this by a decrease in indentation)

I recommend comparing the first line (the signature) of all of these examples, since it shows how some languages are more specific on the requirements than others. C, for example, requires specification of data types in and data types out. Python, on the other hand, can't specify these by default, which shortens the code but leaves room for type mismatches.

In C/C++ (compare to C# and Java):

```c
int addOne(int x){
  int answer = x + 1;
  return answer;
}
```

In C# and Java (compare to C/C++):

```java
public static int addOne(int x){
  int answer = x + 1;
  return answer;
}
```

In Javascript (compare to PHP):

```js
function addOne(x){
  var answer = x + 1;
  return answer;
}
```

In Julia:

```julia
function addOne(x)
  answer = x + 1
  return answer
end
```

In PHP (compare to Javascript):

```php
function addOne($x){
  $answer = $x + 1;
  return $answer;
}
```

In Python:

```py
def addOne(x):
  answer = x + 1
  return answer

```

In Swift (compare to Visual Basic):

```swift
func addOne(_ x: Int) -> Int {
  var answer: Int = x + 1
  return answer
}
```

In Visual Basic (compare to Swift):

```vb
Function addOne(ByVal x As Integer) As Integer
  Dim answer As Integer = x + 1
  Return answer
End Function
```

---

So what do we *write* inside a method? The "why" part of the reading begins to introduce this. Answering this question in full is the goal of theoretical computer science, and this is the general approach we take:

1. A method is formally defined as a solution to a problem
2. A solution to a problem is a valid mapping of acceptable inputs to the corresponding correct outputs
3. For example, the addOne problem would map any given integer input to an integer one higher than the input as the output. We never accept non-integer inputs, and we should never produce non-integer outputs, or any output where that output is not exactly one higher than the input.
4. A computable method is a step of unambigious directions to transform the input into the output in an efficient number of steps.
5. Efficient means that if our input is of size `N` then, following those instructions word for word, we will always produce an output in no more than `N^k` steps, where `k` is a fixed number for this problem. (`N^k` roughly corresponds to `k` for loops nested inside of each other. `N^3`, or three nested loops, is the most we see for *most* problems in practice.)

So how do you come up with this set of instructions? That's the art of programming right there.

Practice is always the most wise.

One final word of advice: a method should only ever accomplish one thing. If you find your method working towards two or more goals at once, you should split it into two or more single-task-focused methods.

We will revisit algorithms in more depth in a later week.

## Journal

Choose from one of the following two options as you best see fit:

**Option One:** Submit a brief "200+ Words" reflecting on the reading and/or the course as a whole. These 200+ words are expected to come completely from the student, ignoring words from quotes/etc. The format of these assignments is up to the student as it best helps them: bulleted point notes on the reading; questions directed at the instructor of course material; a paragraph reflecting on the Lab assignment for the week; a poem; a summary of recent technology news; anything, so long as it is turned in on time, is relevant to the course, and meets the required length. 

**Option Two:** Submit a brief "Tinker" where you have attempted to "program" something, using the tools of the course, that is not directly related to another course assignment. Include screenshots of the input work done and the output result (even if it does not work), along with a brief statement of your intentions, the approach you took in getting it to work, and your thoughts on your result so far. Make sure it is clear what code came from you and what came from online/the reading/etc.

## Submission

Submit your journal as a Word/PDF (NOT a .pages) document to Blackboard.

## Grading

Journals are each worth 1/100 towards your final grade. Grading is pass/fail based on meeting the requirements of the chosen option.