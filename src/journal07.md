# Reading / Journal 7

## Loops ✏️

Journals are a combination of a few things. First, the "journal." This is a very small weekly assignment where you write 200+ words (option 1) or submit  "tinker" code (option 2). Second, the "reading." This is where I direct you to read from a book, an online article, or watch a video, and I supplement those with my own lecture notes, graphs, figures, quotes, or so on.

All other assignments and lectures build upon these. Usually, there will be more reading at the start of a unit and less at the end.

## Reading

This week we are beginning to learn loops. We've seen simple sequential programs, sequential programs that "branch" between two or more decisions, and now we'll see programs that can repeat a section of code a predetermined number of times, or until a certain condition becomes true.

We will continue to talk about these more in depth next week when we see the while loop.

For now I'll say that loops are best taught visually. I've included three videos below you can choose from, or you can watch all of them. Each is in a different language from our course.

Loops are also fairly intuitive, and prone to being over-thought, so I try to use simple and visual/interactive examples.

When I teach Python loops to kids at summer camps, for example, I first teach them how to draw a simple line on the screen. Then I challenge them to draw a five pointed star. They end up writing code like this:

```py
import turtle as t

t.forward(100)
t.right(2 * 360 / 5)
t.forward(100)
t.right(2 * 360 / 5)
t.forward(100)
t.right(2 * 360 / 5)
t.forward(100)
t.right(2 * 360 / 5)
t.forward(100)
t.right(2 * 360 / 5)
```

This works. This gets the job done. And this is readable. But it could be written without all the repetition.

So once the kids learn loops, they see how to shorthand it like this:

```py
import turtle as t

for i in range(5):
  t.forward(100)
  t.right(2 * 360 / 5)
```

And then from there they learn that they can easily draw 7, 9, or even 121-point stars, in the same number of lines:

```py
import turtle as t

for i in range(121):
  t.forward(100)
  t.right(50 * 360 / 121)
```

And at that point in the summer camp, we segue to talk about complexity: a 121-point star may be more *visually* complex than a 5-point star, but *computationally* they are the same. Either size of star just requires the same underlying code: A single "for loop."

**Now read from Chapter 4, sections "Understanding the Loop Structure," "Using a Loop Control Variable," and "Avoiding Common Loop Mistakes"**

**And read through the "metaphors" of for loops on the post "Teaching For Loops"** from [https://software-carpentry.org/blog/2015/12/teaching-for-loops.html](https://software-carpentry.org/blog/2015/12/teaching-for-loops.html)

**And watch "Day 5 of Code: Loops!"** from [https://www.youtube.com/watch?v=U5WTpk6BX9U](https://www.youtube.com/watch?v=U5WTpk6BX9U), **or find a similar video** in your language (give me a link in your journal if you do)

**And watch "Loops Part 1"** from [https://www.youtube.com/watch?v=vxyrLbmm9Oo](https://www.youtube.com/watch?v=vxyrLbmm9Oo), **or find a similar video** in your language (give me a link in your journal if you do)

**And watch PHP Front To Back Part 5 - Loops** from [https://www.youtube.com/watch?v=5ggUfM6mvSk](https://www.youtube.com/watch?v=5ggUfM6mvSk), **or find a similar video** in your language (give me a link in your journal if you do)

## Journal

Choose from one of the following two options as you best see fit:

**Option One:** Submit a brief "200+ Words" reflecting on the reading and/or the course as a whole. These 200+ words are expected to come completely from the student, ignoring words from quotes/etc. The format of these assignments is up to the student as it best helps them: bulleted point notes on the reading; questions directed at the instructor of course material; a paragraph reflecting on the Lab assignment for the week; a poem; a summary of recent technology news; anything, so long as it is turned in on time, is relevant to the course, and meets the required length. 

**Option Two:** Submit a brief "Tinker" where you have attempted to "program" something, using the tools of the course, that is not directly related to another course assignment. Include screenshots of the input work done and the output result (even if it does not work), along with a brief statement of your intentions, the approach you took in getting it to work, and your thoughts on your result so far. Make sure it is clear what code came from you and what came from online/the reading/etc.

!!! note "Short on Words?"
    
    Short a few words in your journal and don't know what else to write about?

    This week's "get to know you" question is:

    *Share a kitchen tip or hack that has changed the way you cook or prep food.* [(Credit)](https://jonitrythall.com/daily-discussion-prompts-wiggle-work-way)

    Feel free to write about this a little bit in your journal.

## Submission

Submit your journal as a Word/PDF (NOT a .pages) document to Blackboard.

## Grading

Journals are each worth 1/100 towards your final grade. Grading is pass/fail based on meeting the requirements of the chosen option.