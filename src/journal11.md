# Reading / Journal 11

## Arrays and Files ✏️

Journals are a combination of a few things. First, the "journal." This is a very small weekly assignment where you write 200+ words (option 1) or submit  "tinker" code (option 2). Second, the "reading." This is where I direct you to read from a book, an online article, or watch a video, and I supplement those with my own lecture notes, graphs, figures, quotes, or so on.

All other assignments and lectures build upon these. Usually, there will be more reading at the start of a unit and less at the end.

## Reading

This week I am assigning an entire chapter, and Joyce Farrell does a very good job of explaining and illustrating the topic, so I'll leave the bulk of the explanation to her. This will be much the pace for the rest of the course. My lecture notes try to go into specific details and language comparisons.

---

Before the break, we learned logical tools for creating variables, branches, and loops. We are moving now on to tools that help us think about larger *data* structures, or objects that exist in memory that we can perform operations on that are more complex than a simple variable. (A simple variable like a single int or single character is sometimes called a "scalar" value.)

An *array* is a *list* of values. In compiled language, usually this list must be all of one type, like all integers or all doubles or all strings or so on. In interpreted languages, we usually are allowed to have *mixed-type arrays*.

An array is *indexed*, meaning that we access items in it based on a *numerical offset*. In most languages the first item is at index zero, meaning "zero distance" from the beginning. In others, usually those with a math focus, the first item has an index value of one. Visual Basic and Julia fall into this category.

Finally, arrays and for loops are made for each other.

Often with a list we want to iterate over it and perform some action on one of the items at a time until we are done. There's a reason for this one-by-one iterative thinking: *You cannot write logic that operates on the whole array all at once.* Machines are physically bound by the number of current actions they can take, most simply, one item at a time.

So, we get around this limition by writing logic to carry out some task on a single item, then we perform that step once for each single item in the list.

Think "for each" in programming, not "for all."

**Now read Chapter 5**

---

Arrays are stored in *temporary* memory. Files are similar in structure, but stored in *persistent* memory.

Files are like an "array of bytes" stored on a hard disk or other long-term storage device. Both arrays and files use the concept of "indexing" or "offset" or "read position" to access particular parts of the file/array.

When writing programs that read and write to files, the steps are generally:

1. Attempt to open the file, receiving a "file pointer" (on Windows also a "file lock") from the OS. We have three options for opening: Read mode, Write mode (clears the file contents first), and Append mode (keeps old contents, new content goes at the end)
2. Use that file pointer to either read a byte or bytes from the current "cursor," or tell the OS to write a byte or bytes at the current cursor
3. Close the file pointer so the OS knows it can write any cached changes to the disk (on Windows, so it also knows to unlock the file so other programs can access it)

*Be sure* to remember to close the file when you are done with it in your code. Although this is automatically done for you when the program closes (maybe not in C, depends on the setup), in a larger program that might be open for a while, the file pointer might be kept open, meaning that the changes might not be saved to the disk when you expect, so if you read from the same file later it might not have the contents your program expects it to have.

---

Even with correct logic, there are several errors that might pop up when using files:

- Our program tried to open a file for reading, but that file does not exist. (Typical of user-input error)
- Our program tried to open a file for reading, it exists, but another program has that file "locked" so we can't open it. (Typical of Windows)
- Our program tried to open a file for reading, it exists, it is not locked, but it belongs to another user on the computer so the OS won't grant our program permission to touch it. (Typical of Mac/Linux)
- Our program successfully opened the file for reading, but it accidentally tried to read more lines of text than what was in the file. (Typical of programmer-logic error)
- Our program tried to open a file for writing, but the folder we want to put that file in does not exist. (Typical of user-input or programmer-logic error)
- Our program tried to open a file for writing, the folder exists, but the folder belongs to another user so the OS won't grant our program permission to touch that folder. (Typical of Mac/Linux)
- Our program successfully opened the file for writing, but the disk ran out of space while it was writing. (Rare unless catastrophic)
- Our program successfully opened the file for writing, but we forgot to "close" the file, so the OS did not save the last few bytes we wrote to the disk and now the file appears "corrupt." (Typical of programmer-logic error)

For languages like Java, there are so many different tools available to handle reading/writing files in specific situations and you are *forced* to handle the errors we listed earlier. And for languages like Javascript, for good security reasons, you actually can't read/write files like you can in other languages, requiring some interface that appropriately leaves the user in control of selecting files themselves, an interface that requires learning HTML, which is outside the scope of this course. So, the requirements in Labs and the Case Study will be minimum with respect to discussing how file I/O is handled in your language.

**Now watch the Video "Files and File Systems"** from [https://www.youtube.com/watch?v=KN8YgJnShPM](https://www.youtube.com/watch?v=KN8YgJnShPM)

**And watch the Video "File I/O"** from [https://www.youtube.com/watch?v=KwvObCA04dU](https://www.youtube.com/watch?v=KwvObCA04dU)

---

Finally, what if you want a list that can grow and shrink as the program continues to run, and perhaps one that contains entries of all one type or a mix of types?

In most languages, by "array" you mean a collection of pre-determined ("bounded") size containing data of all one type. By "list" you mean a collection of unbounded size containing data of all one type or a mix of types. You might also see the terms vector or tuple. I'll use list and array interchangably here to just talk about the general concept of a "collection style" complex type. Within more specific contexts though, you'll need to check the formal definitions people are using for array, list, vector, tuple, and so on for your language. And in C/C++, you are guaranteed to also encounter the term "pointer."

So regardless of your language, let's talk about pointers, since that's the meat here.

---

To create a complex variable that references a list of data, we need a large space in memory to store those entries.

We will reserve a space in memory large enough for our needs on the *heap*. Then, we will record, in a single number, the address location of that reserved space, and store that in a variable named in the *stack*. This named variable is called a *pointer*, and it allows the program's logic to link a single name to a location containing multiple entries. (Side note: This is also the same technique used for managing "compound style" objects in memory, next week's reading topic.) All of this is managed for you by your language, in one way or another.

Then, by *index* we mean which entry within that space.

Given the syntax `myList[4]`, in all our languages except Julia and Visual Basic, we mean to go to the location in memory pointed to by `myList`, and then move 4 steps down the list. Or in other words, we go to the *fifth* entry.

The first entry would correspond to `myList[0]`, aka, go to the reserved location in memory and do not step any further. (I think of this as "0 distance from the start.")

Julia and Visual Basic both start counting at 1 instead of 0. Apart from that, the logic is the same as above, and they manage the translation from "1" meaning first at the human-level to "0" meaning first at the machine-level for us.

---

So, as you are researching arrays in your language, be sure to see if by default your language:

- requires lists to have a fixed size, or if they can change dynamically over time
- requires lists to have only data of a single type, or if they can contain a mix of types all at once
- the syntax for creating a new list, with no starting values, and with starting values
- the syntax for looking up the length of the list
- whether your language starts at 0 or at 1 for array indexing

The logic you will find yourself writing in larger or more complex programs will be heavily influenced by those details, so it is good to know your options now.

---

Oh, before we go, let's see some examples.

In each of the following, I:

1. Create an array (or list) for containing integers. In languages with bounded arrays, I specify that we'll need enough room for 20 integers
2. Run a for loop 20 times
3. Create a value to put in the array
4. Put the value in the array
5. Run another for loop over the items in our array
7. Print that value

In C:

```c
// in the main
int numbers[20];
for (int i=0; i < 20; ++i){
  int num = i * 2 + 1;
  numbers[i] = num;
}

for (int i=0; i < 20; ++i){
  int num = numbers[i];
  printf("The number is %d\n", num);
}
```

In C++:

```cpp
// in the main
int numbers[20];
for (int i=0; i < 20; ++i){
  int num = i * 2 + 1;
  numbers[i] = num;
}

for (int num : numbers){
  cout << "The number is " << num << endl;
}
```

In C#:

```cs
// in the main
int[] numbers = new int[20];
for (int i=0; i < 20; ++i){
  int num = i * 2 + 1;
  numbers[i] = num;
}

foreach (int num in numbers){
  Console.WriteLine($"The number is {num}");
}
```

In Java:

```java
// in the main
int[] numbers = new int[20];
for (int i=0; i < 20; ++i){
  int num = i * 2 + 1;
  numbers[i] = num;
}

for (int num : numbers){
  System.out.printf("The number is %d\n", num);
}
```

In Javascript:

```js
// in script.js
var numbers = [];
for (var i=0; i < 20; ++i){
  var num = i * 2 + 1;
  numbers.push(num);
}

for (var num of numbers){
  console.log("The number is", num);
}
```

In PHP:

```php
$numbers = array();
for ($i=0; $i < 20; ++$i){
  $num = $i * 2 + 1;
  $numbers []= $num;
}

foreach ($numbers as $num){
  echo "The number is $num\n";
}
```

In Python:

```py
numbers = []
for i in range(20):
  num = i * 2 + 1
  numbers.append(num)

for num in numbers:
  print(f"The number is {num}")
```

In Swift:

```swift
var numbers: [Int] = []
for i in 0...20 {
  let num: Int = i * 2 + 1
  numbers.append(num)
}

for num in numbers {
  print("The number is \(num)")
}
```

In Visual Basic:

TODO

## Journal

Choose from one of the following two options as you best see fit:

**Option One:** Submit a brief "200+ Words" reflecting on the reading and/or the course as a whole. These 200+ words are expected to come completely from the student, ignoring words from quotes/etc. The format of these assignments is up to the student as it best helps them: bulleted point notes on the reading; questions directed at the instructor of course material; a paragraph reflecting on the Lab assignment for the week; a poem; a summary of recent technology news; anything, so long as it is turned in on time, is relevant to the course, and meets the required length. 

**Option Two:** Submit a brief "Tinker" where you have attempted to "program" something, using the tools of the course, that is not directly related to another course assignment. Include screenshots of the input work done and the output result (even if it does not work), along with a brief statement of your intentions, the approach you took in getting it to work, and your thoughts on your result so far. Make sure it is clear what code came from you and what came from online/the reading/etc.

!!! note "Short on Words?"
    
    Short a few words in your journal and don't know what else to write about?

    This week's "get to know you" question is:

    *Describe a challenging situation you’ve overcome and the wisdom you gained from it.* [(Credit)](https://jonitrythall.com/daily-discussion-prompts-wiggle-work-way)

    Feel free to write about this a little bit in your journal.

## Submission

Submit your journal as a Word/PDF (NOT a .pages) document to Blackboard.

## Grading

Journals are each worth 1/100 towards your final grade. Grading is pass/fail based on meeting the requirements of the chosen option.