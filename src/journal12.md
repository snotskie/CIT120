# Reading / Journal 12

## Objects ✏️

Journals are a combination of a few things. First, the "journal." This is a very small weekly assignment where you write 200+ words (option 1) or submit  "tinker" code (option 2). Second, the "reading." This is where I direct you to read from a book, an online article, or watch a video, and I supplement those with my own lecture notes, graphs, figures, quotes, or so on.

All other assignments and lectures build upon these. Usually, there will be more reading at the start of a unit and less at the end.

## Reading

Objects are, in the simplest terms, compound or complex types.

An int is a single number, as are doubles and floats and chars and booleans. A string is a complex type in some languages (it is made up of many chars) and a simple type in others (as a case of linguistic simplification).

But what about a 3D Point, or an Employee Record, or so on? These would need to contain multiple simple types arranged into a particular structure.

This is the style of "complex data" that we will read about this week.

Like a few weeks ago, we can divide the reading into why and how:

1. Principles of Object-Oriented Programming ("why")
2. Defining Classes and Creating Class Diagrams ("how")
3. Take a break to look up the general syntax of how to declare a new class in your language (C++ has classes, C just has structs; Javascript has a partially-implemented OOP system, so I recommend focusing on the "object factory method" approach)
4. Understanding Public and Private Access ("why")
5. Organizing Classes ("how")
6. Using Objects ("how")
7. Familiarize yourself with the Key Terms, and skim and consult the "Understanding X" sections of the chapter as needed for your work in this class and in life

**Now read Chapter 7**

---

In each of the following examples, I:

1. Create a class (or struct) for containing a `WholeNumber`
2. Give that class a `value` to hold the object's data. If possible within the language, I make this value `private`.
3. Create a constructor (or factory) for instantiating an object of this class
4. Create a get and a set method for managing the `value`.
5. Use that class in a `Main` (or the bottom of the code where execution truly begins) to create a number, set it's value, and get and display the value.

Keep in mind, classes are designed to represent very complex data. Trying to do something minimum with object-oriented concepts is bound to over-engineer what we could simply say (in this case) with a single line. For much larger projects though, the trade off is worth it.

(Tip: To see a historical trend for this concept in programming, I suggest comparing the examples in this order: C, Javascript, C++, Java, C#, PHP, Python, and then Swift; Visual Basic stems from a different "family tree," though it is closest to C# nowadays.)

In C:

```c
#include <stdio.h>

// struct for holding complex data
typedef struct WholeNumber_s {
  int value;
} WholeNumber;

// factory for creating instance of struct
WholeNumber* createWholeNumber(int value){
  WholeNumber* result = (struct WholeNumber*) malloc(sizeof(WholeNumber));
  result->value = value;
  return result;
}

// get and set
int getWholeNumberValue(WholeNumber* num){
  return num->value;
}

void setWholeNumberValue(WholeNumber* num, int value){
  num->value = value;
}

// main
void main(){
  WholeNumber* num = createWholeNumber(0);
  setWholeNumberValue(num, 10);
  printf("The value is %d", getWholeNumberValue(num));
}
```

In C++:

```cpp
#include <iostream>

using namespace std;

class WholeNumber {

  // value variable for holding our data
  private:
    int value = 0;
  
  // constructor, get, and set
  public:
    WholeNumber(int value){
      this->value = value;
    }
    
    int getValue(){
      return this->value;
    }
    
    void setValue(int value){
      this->value = value;
    }
};

// main
int main(){
  WholeNumber* num = new WholeNumber(0);
  num->setValue(10);
  cout << "The value is " << num->getValue();
}
```

In C#:

```cs
using System;

namespace Rextester
{
  public class WholeNumber
  {
    // value variable for holding our data
    private int value = 0;
    
    // constructor, get, and set
    public WholeNumber(int value)
    {
      this.value = value;
    }
    
    public int GetValue()
    {
      return this.value;
    }
    
    public void SetValue(int value){
      this.value = value;
    }
  }
  
  // main
  public class Program
  {
    public static void Main(string[] args)
    {
      WholeNumber num = new WholeNumber(0);
      num.SetValue(10);
      Console.WriteLine("The value is {0}", num.GetValue());
    }
  }
}
```

In Java:

```java
import java.util.*;
import java.lang.*;

class Rextester
{
  public static class WholeNumber
  {
    // value variable for holding our data
    private int value = 0;
    
    // constructor, get, and set
    public WholeNumber(int value)
    {
      this.value = value;
    }
    
    public int getValue()
    {
      return this.value;
    }
    
    public void setValue(int value){
      this.value = value;
    }
  }
  
  // main
  public static void main(String args[])
  {
    WholeNumber num = new WholeNumber(0);
    num.setValue(10);
    System.out.println("The value is " + num.getValue());
  }
}
```

In Javascript ("factory" approach):

```js
// in script.js
// factory for creating specialized instance of a generic object
function WholeNumber(v){

  // variables and methods here are private in scope
  var value = v;
  
  // variables and methods attached to result are public in scope
  var result = {};
  
  // get and set
  result.getValue = function(){
    return value;
  };
  
  result.setValue = function(v){
    value = v;
  };
  
  return result;
}

// "main"
var num = WholeNumber(0);
num.setValue(10);
console.log("The value is " + num.getValue());
```

In Javascript ("class" approach):

```js
// in script.js
class WholeNumber {
  constructor(value){
    this.value = value;
  }
  
  get value() {
    return this.value;
  }
  
  set value(value){
    this.value = value;
  }
}

var num = WholeNumber(0);
num.value = 10; // calls the "set value" method automatically
console.log("The value is " + num.value); // calls "get value" automatically
```

In PHP:

```php
<?php

class WholeNumber {

  // value variable for holding our data
  private $value = 0;
  
  // constructor, get, and set
  function __construct($value){
    $this->value = $value;
  }
  
  function getValue(){
    return $this->value;
  }
  
  function setValue($value){
    $this->value = $value;
  }
}

// "main"
$num = new WholeNumber(0);
$num->setValue(10);
echo "The value is " . $num->getValue();

?>
```

In Python:

```py
class WholeNumber:
    
  # constructor/factory, get, and set
  def __init__(self, value):
    self.value = value
  
  def getValue(self):
    return self.value
  
  def setValue(self, value):
    self.value = value

# "main"
num = WholeNumber(0)
num.setValue(10);
print("The value is {0}".format(num.getValue()));
```

In Swift:

```swift
class WholeNumber {

  // value variable for holding our data
  var value: Int = 0
  
  // constructor, get, and set
  init(_ value: Int){
    self.value = value
  }
  
  func getValue() -> Int {
    return self.value
  }
  
  func setValue(_ value: Int){
    self.value = value
  }
}

// "main"
var num = WholeNumber(0)
num.setValue(10)
print("The value is \(num.getValue())")
```

In Visual Basic:

```vb
Imports System

Namespace Rextester
  Class WholeNumber
    
    ' value variable for holding our data
    Private value As Integer = 0
    
    ' constructor
    Public Sub New(ByVal value As Integer)
      Me.value = value
    End Sub
    
    ' get and set
    Public Function GetValue()
      Return Me.value
    End Function
    
    Public Sub SetValue(ByVal value As Integer)
      Me.value = value
    End Sub
  End Class
  
  ' main
  Public Module Program
    Public Sub Main(args() As string)
      Dim num As WholeNumber = New WholeNumber(0)
      num.SetValue(10)
      Console.WriteLine("The value is {0}", num.GetValue())
    End Sub
  End Module
End Namespace
```

## Journal

Choose from one of the following two options as you best see fit:

**Option One:** Submit a brief "200+ Words" reflecting on the reading and/or the course as a whole. These 200+ words are expected to come completely from the student, ignoring words from quotes/etc. The format of these assignments is up to the student as it best helps them: bulleted point notes on the reading; questions directed at the instructor of course material; a paragraph reflecting on the Lab assignment for the week; a poem; a summary of recent technology news; anything, so long as it is turned in on time, is relevant to the course, and meets the required length. 

**Option Two:** Submit a brief "Tinker" where you have attempted to "program" something, using the tools of the course, that is not directly related to another course assignment. Include screenshots of the input work done and the output result (even if it does not work), along with a brief statement of your intentions, the approach you took in getting it to work, and your thoughts on your result so far. Make sure it is clear what code came from you and what came from online/the reading/etc.

## Submission

Submit your journal as a Word/PDF (NOT a .pages) document to Blackboard.

## Grading

Journals are each worth 1/100 towards your final grade. Grading is pass/fail based on meeting the requirements of the chosen option.