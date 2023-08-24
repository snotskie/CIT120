# Reading / Journal 3

## Good Habits ✏️

Journals are a combination of a few things. First, the "journal." This is a very small weekly assignment where you write 200+ words (option 1) or submit  "tinker" code (option 2). Second, the "reading." This is where I direct you to read from a book, an online article, or watch a video, and I supplement those with my own lecture notes, graphs, figures, quotes, or so on.

All other assignments and lectures build upon these. Usually, there will be more reading at the start of a unit and less at the end.

## Reading

The book reading this week will list good habits when programming. These good habits will be something to shoot for as you revise your code in this course and in life.

But what is an example of *bad* habits in coding?

The following code is identical to the example given in last week's reading notes, but it has been ["optimized"](https://closure-compiler.appspot.com) and unindented.

```javascript
for (var a = fs.readdirSync(__dirname + "/posts"), b = {}, c = 0; c < a.length; ++c) {
var d = a[c], e = fs.readFileSync(__dirname + "/posts/" + d, "utf-8").split("...")[0], f = {};
f.url = d.replace(".md", "");
var g = yaml.eval(e).b, h;
for (h in g) {
f[h] = g[h];
}
new Date(f.a) < new Date && (b[f.url] = f);
}
```

The code works, and it is fast, and it has no bugs. And if I put this code on my website, no user will tell the difference.

But at a glance we cannot tell that.

First, without indentation, the structure of the code is hard to skim for. This means that, when I edit the code later, it is hard to immediately catch mistakes, like forgetting one of the `}` near the end.

Second, with variable names like `a` and `b` and `c`, I make fewer keystrokes typing the code, but I have no idea without *really* reading the code what those variables are supposed to represent. I'm patient, anyone will tell you that, but I'm not *that* patient to figure out what this code means by hand.

To the computer, variables are a place in memory that stores data. But to the human, **variables represent a *trackable idea* that the program deals with as input, output, intermediate values, and/or tools used to accomplish its intermediate tasks**. So, keep your variables well-named, for the benefit of your impatient coworkers and your future self looking back at your old code.

And third, without the occasional comment, it is extremely hard to understand the purpose for having that second to last line in there: `new Date(f.a) < new Date && (b[f.url] = f);` means that I only load posts that are ready to be loaded based on their intended publication date, but nothing in the human-readable side of the code tells us that.

Optimization into code that looks like this *does* have its place in programming. But not yet.

"Premature optimization is the root of all evil," as the saying goes.

Keep your code readable kids.

**Now read from the middle of Chapter 2**, from section "Features of Good Program Design" to the end of section "Maintaining Good Programming Habits"

---

So what is a program? We won't be making the next Skyrim in this class (and Bethesda won't either at the rate they're going -- and fyi, I wrote this joke *years* ago and it's still true, so.... -- and who knows, maybe Larian will finish Baldur's Gate 3 before then, we'll see). Rewriting Skyrim would get into GUI programming and Event-Driven Programming, which CIT 143 and its siblings will cover.

Instead, we will be doing Console programming in this class.

These are programs where all interaction is text-based. It can be a text-based role playing adventure, or something simpler that outputs the [99 bottles of beer song](http://www.99-bottles-of-beer.net/) when run.

The "Unix Philosophy" pairs well with this type of programming. This states that all building blocks of the operating system work like:

![Standard Console Program Diagram](https://cdn.glitch.com/77ee9ffd-8e7c-4214-b055-09d8b7f57665%2FInputOutput.gif?1546964031778)

Each program can read input from the keyboard and output to one of two places: the intended output, or to the "error" output channel, which represents something that needs to be displayed (like error messages), but not get mixed up with the intended output. Programs could then be pieced together like legos, the output of one being used as the "keyboard" for the next.

This will be enough for what we want to accomplish in this class. It'll give us a space to practice the basics, like variables and control structures, without bogging us down in GUI-related concepts just yet. And it still gives us a chance to practice user-centric design: Even in a text-only environment, designing good user input/output messages is the key to a good user experience running the application.

**Now read about "Standard Input, Standard Output, and Standard Error"** from [http://www.linfo.org/stdio.html](http://www.linfo.org/stdio.html)

**And watch the "Windows Command Line" tutorial video** from [https://www.youtube.com/watch?v=MBBWVgE0ewk](https://www.youtube.com/watch?v=MBBWVgE0ewk) (part 1) and [https://www.youtube.com/watch?v=7ABkcHLdG\_A](https://www.youtube.com/watch?v=7ABkcHLdG_A) (part 2)

---

Lastly (sort of), some notes about terminology.

When we use the term "print" in console programming, we do not mean to put words on paper. We mean to display text to the screen. (It actually *did* use to be to display words on paper, like an interactive typewriter.) Some languages have multiple tools for printing, each with small differences, and others keep it simple with just the one.

When we use the term "read" we mean to grab input from the user's keyboard, based on keystrokes they typed before pressing the enter key. You need to be careful when asking the user to enter a number, since they are still free to enter "cat" instead, which might crash your program if it tries to interpret this numerically. Also, even when they enter "123", this can still be considered text in your language--text that represents the *keystrokes* used to enter the value, not the value itself. So when doing numeric input from the keyboard, you will need to deal with *type conversions*.

---

Okay, *now* lastly. I'm adding this note here in Spring 2023.

Let's talk about AI-assisted coding.

For an example, here is a real conversation I had with ChatGPT:

> **Me:** Do you know the Kids on Bikes TTRPG system?
>
> **ChatGPT:** Yes, I'm familiar with the Kids on Bikes tabletop role-playing game system. Kids on Bikes is a collaborative storytelling game that allows players to take on the roles of ordinary kids or teenagers in a small town setting. It was developed by Jonathan Gilmour and Doug Levandowski and published by Renegade Game Studios.
>
> In Kids on Bikes, players can create their own characters with unique abilities, skills, and backgrounds. The game emphasizes storytelling and encourages players to work together to solve mysteries, uncover secrets, and face supernatural or mysterious events happening in their town. It draws inspiration from popular TV shows and movies like Stranger Things, The Goonies, and E.T., capturing the sense of adventure, exploration, and camaraderie among young protagonists.
>
> The game mechanics of Kids on Bikes are designed to be simple and accessible, focusing on narrative-driven gameplay rather than complex rules. It utilizes a dice pool system, where players roll multiple six-sided dice (d6) and add the relevant attribute or skill to determine their level of success. The outcome of the dice roll helps to shape the story and resolve conflicts or challenges.
>
> Kids on Bikes provides a framework for Game Masters (referred to as the "Game Moderator" in this system) to create engaging and mysterious adventures for the players. The system encourages improvisation and collaboration, allowing both players and the moderator to contribute to the unfolding narrative.
>
> Overall, Kids on Bikes offers a fun and imaginative role-playing experience that captures the essence of classic coming-of-age tales with a touch of supernatural or otherworldly elements.
>
> **Me:** Write a Python script to calculate a random Stat Check for Kids on Bike, given a die size, a bonus value, and the difficulty of the roll
>
> **ChatGPT:** Certainly! Here's a Python script that calculates a random Stat Check for Kids on Bikes based on the given parameters:

```python
import random

def calculate_stat_check(die_size, bonus, difficulty):
    stat_check = random.randint(1, die_size) + bonus
    success = stat_check >= difficulty
    return stat_check, success

# Example usage
die_size = 6
bonus = 2
difficulty = 10

stat_check_result, success_result = calculate_stat_check(die_size, bonus, difficulty)

print(f"Stat Check Result: {stat_check_result}")
print(f"Success: {success_result}")
```

> In this script, the `calculate_stat_check` function takes three parameters: `die_size` represents the size of the die used for rolling (e.g., 6 for a six-sided die), `bonus` is the bonus value to be added to the roll, and `difficulty` specifies the target number the roll needs to meet or exceed for a successful check.
>
> The function generates a random number between 1 and `die_size` (inclusive), adds the `bonus` to it, and stores the result in `stat_check`. Then, it compares `stat_check` with the `difficulty` to determine whether the check was successful or not.
>
> Finally, an example usage is shown, where the `die_size` is set to 6, the `bonus` is set to 2, and the `difficulty` is set to 10. The script calculates the stat check and prints the result and whether the check was successful or not.
>
> Feel free to adjust the values of `die_size`, `bonus`, and `difficulty` according to your specific needs.
>
> **Me:** That will not work. Kids on Bikes has an exploding die mechanic. Are you familiar with it?
>
> **ChatGPT:** Apologies for the oversight. Yes, I'm familiar with the exploding die mechanic in Kids on Bikes. In this system, if the highest possible value is rolled on the die (e.g., a 6 on a six-sided die), the die is rolled again, and the new result is added to the previous roll. This process continues as long as the highest possible value is rolled.
>
> Here's an updated version of the Python script that incorporates the exploding die mechanic:

```python
import random

def calculate_stat_check(die_size, bonus, difficulty):
    stat_check = 0
    while True:
        roll = random.randint(1, die_size)
        stat_check += roll
        if roll < die_size:
            break
    
    stat_check += bonus
    success = stat_check >= difficulty
    return stat_check, success

# Example usage
die_size = 6
bonus = 2
difficulty = 10

stat_check_result, success_result = calculate_stat_check(die_size, bonus, difficulty)

print(f"Stat Check Result: {stat_check_result}")
print(f"Success: {success_result}")
```

> In this updated script, the `calculate_stat_check` function uses a `while` loop to simulate the exploding die mechanic. It repeatedly rolls the die (using `random.randint(1, die_size)`) and adds the result to the `stat_check` variable. The loop continues as long as the rolled value is the highest possible value on the die.
>
> Once the loop terminates (when a non-maximum value is rolled), the `bonus` is added to the `stat_check`, and the result is compared to the `difficulty` to determine success.
>
> Again, you can modify the values of `die_size`, `bonus`, and `difficulty` to suit your requirements.

This code is *close*, but still incorrect, since the player should stop "exploding" if they've already rolled enough to succeed. I'm certain, though, that I could have explained this to ChatGPT and it would have corrected the mistake. As conversations go on longer (as of Spring 2023), the AI starts to make more and more mistakes. But this conversation is short so far, so I wouldn't be worried about that.

Here's the thing though: I was able to double check the AI's work along the way to provide it feedback. To do this, I needed knowledge of (a) Python, (b) the Kids on Bike rule system, and (c) how to think about those rules in terms of Python logic. In fact, [I had just made a tool in JavaScript to simulate these dice rolls the correct way](https://kob-roller.glitch.me/roll/dc15/d8+d4+2), so I had the logic for this fresh in my mind.

In my work here in Wisconsin, I help students, faculty, and researchers with their programming. Since Fall 2022, I've had nearly *almost no one* come in who wasn't using ChatGPT. It used to be that they had a specific question about a specific error occuring in a specific part of their code. They had written everything themselves, so I was able to ask questions to help clarify what things were supposed to be doing and why they chose to do it the way they did. Now, people come in with *pages* of code all written by AI. This is much harder to diagnose, since (a) any part of it could be at fault, (b) multiple parts could be interacting in misunderstood ways, or (c) the whole thing could be approaching the researcher's *actual* purpose in a wrong or weird way. When AI code is wrong, *by design* it is wrong only in *non-obvious* ways.

Yes, we should be amazed that AI can generate code. In my example above, I gave the AI almost no guidance and almost no explanation, and what it came up with was so close that it mirrors how *humans* misinterpret the rules of Kids on Bikes. And yes, AI-assisted coding is not a bad thing: for one, it allows people to quickly generate prototypes for pretty complex things, helping non-programmers feel accomplished quickly that they can achieve real results.

But in order to use AI-generated code effectively, beyond that quick prototype, you *have* to be able to endorse it properly. To do that, you need knowledge of (a) how to "desk check" the programming language at hand, (b) the real world topic at hand, and (c) how to think about that topic in terms of computers. And that's just what this class, Computational Thinking, is designed to teach.

The best way to learn a language is practice.

The best way to learn linguistics is to learn five languages.

(Related: Please don't use AI to write your cover letters for job applications. We can tell, the cover letter ends up being vague dribble, and we're more likely to hire applicants who wrote a cover letter with real examples and polished by taking it to a campus career readiness office.)

## Journal

Choose from one of the following two options as you best see fit:

**Option One:** Submit a brief "200+ Words" reflecting on the reading and/or the course as a whole. These 200+ words are expected to come completely from the student, ignoring words from quotes/etc. The format of these assignments is up to the student as it best helps them: bulleted point notes on the reading; questions directed at the instructor of course material; a paragraph reflecting on the Lab assignment for the week; a poem; a summary of recent technology news; anything, so long as it is turned in on time, is relevant to the course, and meets the required length. 

**Option Two:** Submit a brief "Tinker" where you have attempted to "program" something, using the tools of the course, that is not directly related to another course assignment. Include screenshots of the input work done and the output result (even if it does not work), along with a brief statement of your intentions, the approach you took in getting it to work, and your thoughts on your result so far. Make sure it is clear what code came from you and what came from online/the reading/etc.

## Submission

Submit your journal as a Word/PDF (NOT a .pages) document to Blackboard.

## Grading

Journals are each worth 1/100 towards your final grade. Grading is pass/fail based on meeting the requirements of the chosen option.