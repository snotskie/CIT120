# Reading / Journal 15

## Algorithms ✏️

Journals are a combination of a few things. First, the "journal." This is a very small weekly assignment where you write 200+ words (option 1) or submit  "tinker" code (option 2). Second, the "reading." This is where I direct you to read from a book, an online article, or watch a video, and I supplement those with my own lecture notes, graphs, figures, quotes, or so on.

All other assignments and lectures build upon these. Usually, there will be more reading at the start of a unit and less at the end.

## Reading

We've talked about if and while conditions (true/false logics) briefly before. Boolean Algebra is today's topic, and this "math of true/false" statements gets at the core of the theory behind algorithms.

In typical boolean algebra, we use multiplication to represent AND and addition to represent OR. There is no division or subtraction. There are parentheses and some way to represent negation, or NOT, usually with a minus sign or an overbar.

I'll use `&&` to represent AND, `||` to represent OR, and `!(...)` to represent NOT, since these are the most common symbols used for this in our languages.

In boolean algebra, we would start with a phrase, like:

`(A && B) || C`

and ask questions like:

- is there any solution (true/false values for `A`, `B`, and `C` such that the whole expression equates to true) to this phrase?
- how many solutions to this phrase are there?
- what is a particular solution to this phrase?
- what is the list of all solutions to this phrase?
- is there a solution where the phrase `A && !C` is also true?

Here is a special case:

`A && !A`

This is a "contradiction," or a phrase which can only every be false.

Here is another:

`A || !A`

This is a 'tautology," or a phrase which can only ever be true.

To answer questions like those listed above--for very complex phrases--we try to apply a set of known simplification techniques and turn our phrase into a shorter one for which we know the answer. It is this idea--known as "reduction"--that underpins what we talk about when we talk about algorithms in theoretical computer science courses.

---

Here, we'll see those basics, those simplification techniques. These can help you rephrase your logic into something simpler.

The first four are:

`A && !A == false`

`A || !A == true`

`A && A == A`

`A || A == A`

The rest come from applying transformations to phrases like:

`A || B || C || D`

If we apply NOT to the above, we get:

`!(A || B || C || D) == !A && !B && !C && !D`

The vice versa pattern is also true. The rule here is that all operations inside the parentheses must either be AND or OR, not a mix of the two.

What if we do have a mix?

`A || B || C && D`

Here, we have to ask, does AND or OR happen first? Remember how I said that AND was written as multiplication before? That means we can rewrite this as:

`A || B || (C && D)`

That keeps the same meaning. Now we have three terms separated by OR, `A`, `B`, and the expression `C && D`.

Negating this, we get:

`!(A || B || (C && D)) == !A && !B && !(C && D) == !A && !B && (!C || !D)`

---

So what good is negating things?

Negating can take a phrase made up of ANDs and turn it into a phrase made up of ORs, and vice versa. Depending on your question, one of these will be easier to work with.

`A || (...)`

In the phrase above, I can ignore whatever the `...` is, no matter how complicated it is, since I can just say "making `A` true makes the whole thing true."

Likewise,

`A && (...)`

in that phrase, I can say, "making `A` false makes the whole thing false."

---

So how hard is it to see if a complex phrase has a solution?

I'll tell you this: All (or most) computer security is founded on the assumption that it is hard to tell *if* a complex phrase has a solution, but easy to *verify* a solution once you have one.

Consider a phrase with 100 variables. Let's say that this phrase has exactly one solution, exactly one arrangement of true/false values to those variables.

How many possible solutions would we have to guess from to find that solution?

Without using any kind of shortcut, it would be `Math.pow(2, 100)`, or `2*2*2*...`, since there are two options (true and false) for what to set the first variable to, times two options for the second, and so on, for all one hundred variables in that phrase.

Once we find it though, we just plug it in and see if the result of the phrase is true or not. The solution is like a "password" that unlocks the phrase.

But guessing it is not an option, even with the fastest computers on Earth: two raised to the hundredth power is *that* big.

And so, we need some sort of shortcuts. Problem is, for this situation, without knowing any more about the phrase, we can't give any advice that would speed things up fast enough to be computable before the apocalypse.

---

So why do we care?

Recall that computers are binary machines. They take binary in, and spit binary out. A string of binary is exactly like a true/false arrangement over a set of boolean algebra variables, and so being able to quickly transform solutions from one phrase to solutions to another phrase is exactly what algorithm design is all about: finding creative shortcuts to translate phrase A into phrase B.

**Now watch the Video "Intro to Algorithms"** from [https://www.youtube.com/watch?v=rL8X2mlNHPM](https://www.youtube.com/watch?v=rL8X2mlNHPM)

---

Finally, a last journal in a class like this should end on an interesting note, and so I like to cap things off with the following video, showing how to formulate and work through a problem, arriving at a simple mathematical way to represent the result of an iterative process: If you can calculate the result in math, you can do it in one statement, saving yourself the time, for loops, ifs, and so on.

So, for our last bit of reading in the course, **watch the video Josephus Problem** from [https://www.youtube.com/watch?v=uCsD3ZGzMgE](https://www.youtube.com/watch?v=uCsD3ZGzMgE)

Here's pseudocode for how you could set up a "game" that runs this simulation yourself:

```txt
# Set N here equal to a random number
# Set X here equal to N
# Set C here equal to 1
# Set D here equal to 2
# Create PlayerStatuses here as an array of N booleans

for (int i=0; i<N; ++i){
  # Set PlayerStatuses[i] to true here
}

# Prompt user to enter number
# Set P here equal to user input

while (true){

  # Display message that player C deleted player D
  # Set PlayerStatuses[D-1] to false
  # Decrement X
  
  if (D == P){
    # Display message that the human lost
    break;
  } else if (X == 1){
    # Display message that the human won
    break;
  } else {
    C = (D % N) + 1;
    while (!PlayerStatuses[C-1]){
      C = (C % N) + 1;
    }
    
    D = (C % N) + 1;
    while (!PlayerStatuses[D-1]){
      D = (D % N) + 1;
    }
  }
}
```

(Julia and Visual Basic: Use `[C]` instead of `[C-1]` and `[D]` instead of `[D-1]`.)

Feel free to translate and run this in your language as a "tinker" and write about it for your final journal.

## Journal

Choose from one of the following two options as you best see fit:

**Option One:** Submit a brief "200+ Words" reflecting on the reading and/or the course as a whole. These 200+ words are expected to come completely from the student, ignoring words from quotes/etc. The format of these assignments is up to the student as it best helps them: bulleted point notes on the reading; questions directed at the instructor of course material; a paragraph reflecting on the Lab assignment for the week; a poem; a summary of recent technology news; anything, so long as it is turned in on time, is relevant to the course, and meets the required length. 

**Option Two:** Submit a brief "Tinker" where you have attempted to "program" something, using the tools of the course, that is not directly related to another course assignment. Include screenshots of the input work done and the output result (even if it does not work), along with a brief statement of your intentions, the approach you took in getting it to work, and your thoughts on your result so far. Make sure it is clear what code came from you and what came from online/the reading/etc.

!!! note "Short on Words?"
    
    Short a few words in your journal and don't know what else to write about?

    This week's "get to know you" question is:

    *Share a photo or describe a fashion trend you once loved (and maybe now cringe at).* [(Credit)](https://jonitrythall.com/daily-discussion-prompts-wiggle-work-way)

    Feel free to write about this a little bit in your journal.

## Submission

Submit your journal as a Word/PDF (NOT a .pages) document to Blackboard.

## Grading

Journals are each worth 1/100 towards your final grade. Grading is pass/fail based on meeting the requirements of the chosen option.