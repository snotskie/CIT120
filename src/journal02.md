# Reading / Journal 2

## Compiling and Interpreting ✏️

Journals are a combination of a few things. First, the "journal." This is a very small weekly assignment where you write 200+ words (option 1) or submit  "tinker" code (option 2). Second, the "reading." This is where I direct you to read from a book, an online article, or watch a video, and I supplement those with my own lecture notes, graphs, figures, quotes, or so on.

All other assignments and lectures build upon these. Usually, there will be more reading at the start of a unit and less at the end.

## Reading

First, a moment to reflect as we start this semester.

Consider how you have enrolled in an online course.

There are several benefits of online over face-to-face:

- Working online now will prepare you to work online in the future.
- You can "go to class" whenever and wherever you want.
- Lecture notes and other materials can be paused, reviewed, etc. as much as you need to learn in your own way.

But there are also some difficulties students have had in online courses:

- Students not familiar with technology may be asked to perform technological tasks. Keep in mind that you are not being graded on technical expertise unrelated to this course. If you are having problems, email me.
- Students will be asked to use the internet more regularly than they are used to. You will need to check your email daily. You will need to engage with your teammates, when applicable, as often as your team requires. I suggest setting the "rules of engagement" that your team will follow on your first day together.
- Online interaction can be intimidating. We cannot see each other to respond to facial expressions, so all of the pressure is put on our writing abilities to communicate well. For those of us not used to this, this will take time and practice, but it will come.

So, there are two messages from me you'll hear over and over again:

- You are doing good work. Keep it up
- I am *always* happy to help, shoot me an email anytime

---

Now, on to the reading.

This week the reading from the book will talk about the process that we follow as programmers when we write code. To give you a personal example, here is some of the Javascript used to load these assignments on Glitch (in a previous version of this site at least):

```javascript
// pre-loading post metadata
var post_files = fs.readdirSync(__dirname + "/posts");
var posts = {};
for (var i=0; i < post_files.length; ++i){
  var filename = post_files[i];
  var filedata = fs.readFileSync(__dirname + "/posts/" + filename, "utf-8");
  var yamldata = filedata.split("...")[0];
  var post = {};
  post.url = filename.replace(".md", "");
  var meta = yaml.eval(yamldata).metadata;
  for (var prop in meta){
    post[prop] = meta[prop];
  }

  // skip loading "future" assignments
  if (new Date(post.date) < new Date()){
    posts[post.url] = post;
  }
}
```

As you look over this, I will tell you the biggest hint I will tell you in this course: **Code is read and written left to right, not top to bottom.**

When you are writing an essay, it makes sense to think of the flow as introduction, body paragraphs, then conclusion, from the top of the first page towards the bottom of the last page. But here, when you see the `{` on line 4, you should immediately scan for the matching `}` on the last line. My code has been indented (as you should do in your own code, in this course and in life) to help you find this matching bracket quickly.

Once we see that the lines indented between that `{` on line 4 and the `}` on the last line go together, we can reason that whatever it is the contained "block" of code does, it will be repeating those steps for each file in a certain folder. (This "repeat" pattern is the purpose of a "for loop.") Knowing that makes understanding the meaning of the indented block easier.

And as I was writing this code, I certainly had this at one point:

```javascript
// pre-loading post metadata
var post_files = fs.readdirSync(__dirname + "/posts");
var posts = {};
for (var i=0; i < post_files.length; ++i){
  // todo
}
```

Just as we would read the code, the moment I wrote the `{` on line 4, I immediately wrote the matching `}` at the end, then went back up to write the "meat in the middle." (I add a lot of "todo" comments as I'm writing code to know I meant to put something there. When you have several indents you mean to get to later, this can ease a lot of future headache.)

This "jumping around" pattern is exactly what you should expect to do yourself.

Writing from the top to the bottom regardless of "indentation" *will* lead to problems in your code. The left to right / indentation thinking lines up with our thinking of a program as a machine made of parts nested inside of other parts. The top to bottom thinking does not match this "nested parts" thinking well at all. And as you will see in the reading, we think about "nested parts" often in programming.

**Now read the rest of Chapter 1**

What experiences do you have building things in the "nested parts" fashion? Feel free to write about this in your journal.

---

Our class will introduce four compiled languages and four interpreted languages. There are other kinds of languages, and those other languages work using different paradigms, aka, different underlying problem solving concepts.

Our eight languages all build on the concepts of Procedural and Object Oriented styles of problem solving. We'll continue to talk about this throughout the course.

Compiled languages usually take more time to write their code, but they run a lot faster when executed by the end-user.

This is because you have to write all of the code, run it through a "compiler," which produces a "binary" or an "executable" (just two different names for the same thing), and then run the executable as a program. The speed boost is because, while the compiler is reading your code and turning it into binary code, it can look for small ways to "optimize" your logic for the machine, and these little optimizations add up. Another advantage of a compiled language is that you can keep your source code top-secret at your company and only let your customers download the binary files. (Turning an optimized and compressed binary file back into human-readable source code is really hard to do.)

Interpreted languages on the other hand do not require binaries to be run, making them slower to run but faster to write.

Instead of running your code through a "compiler," you run it through an "interpreter." An interpreter will just carry out the steps in your file as it reads it, no need to make a binary as it goes. Interpreted languages also have the advantage of a "REPL," or command-line-like tool that Reads a line of code, Executes it, Prints the result, and Loops back so you can type another command. This lets your "coding" experience feel a lot like having a conversation. However, this also means that you don't get the benefit of any (or much) optimization. Still, interpreted languages play really well with open source development community tools like Github and Glitch, since the program itself is always right out in the open and human-readable.

**Now watch the Youtube video "The First Programming Languages" from [https://www.youtube.com/watch?v=RU1u-js7db8](https://www.youtube.com/watch?v=RU1u-js7db8)**

What experiences do you have using the command line / terminal? Feel free to write about this in your journal.

## Journal

Choose from one of the following two options as you best see fit:

**Option One:** Submit a brief "200+ Words" reflecting on the reading and/or the course as a whole. These 200+ words are expected to come completely from the student, ignoring words from quotes/etc. The format of these assignments is up to the student as it best helps them: bulleted point notes on the reading; questions directed at the instructor of course material; a paragraph reflecting on the Lab assignment for the week; a poem; a summary of recent technology news; anything, so long as it is turned in on time, is relevant to the course, and meets the required length. 

**Option Two:** Submit a brief "Tinker" where you have attempted to "program" something, using the tools of the course, that is not directly related to another course assignment. Include screenshots of the input work done and the output result (even if it does not work), along with a brief statement of your intentions, the approach you took in getting it to work, and your thoughts on your result so far. Make sure it is clear what code came from you and what came from online/the reading/etc.

## Submission

Submit your journal as a Word/PDF (NOT a .pages) document to Blackboard.

## Grading

Journals are each worth 1/100 towards your final grade. Grading is pass/fail based on meeting the requirements of the chosen option.