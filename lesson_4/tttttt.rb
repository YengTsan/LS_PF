Local Variables

1.
the first line declared a variable named `str`, and set a integer `1` into it.
the loop block assess the variable and reassign a integer `2` to `str`, and if without `break` , the `loop` will be infinity assign a integer `2` to `str`
the last line let the program print the value of `str` to screen , and return `nil `


2.
Because of the scope of the variable ,the last line can not assess the variable `str`

if the variable is declared outside the block like Question 1,
the block is able to assess it , but , if the variable is declared inside the block, the lifetime of the variable is the end of the block,

it can not be assessed out side the block. 


3.
If the variable is declared before the block (`loop do` block)

the block will be able to assess the variable , and set the values `2` into the variable,
so the result will be `2` and return `nil`.

if the varaible is not declared before the block,

the lifetime of the variable `str` is the same as the blcok,
it will die in the end of the block,so we can't assess the variable at last line, the terminal will return undefined local variable or method `str` for main:Object


4.
method can not assess the local variable which is declared outside the method without passing them.


5.
they are two different variables,

the `str`, is the variable used at the last line.

the second `str` inside the method can only be used inside the method,
it is declared inside the method.


6.
Because `b` is still pointing to the object created at the first line,
the third line create a new object which is pointed by new variable `a` , and the fourth line mutate the new object which is created at third line.


7.
Four variables and two object

`a,b,c`, is pointing to the `"hello"` , `d` is pointing to the `"world"`
the `c = a` means we let `c` point to the object which `a` is pointing, and the other is the same as this.



Mutating Method Arguments

1.
Because the method is declared an new variable and make it point to the same object, the value is the same as the greeting.
unless it use mutable method, to mutate the object which is pointed by the variable, it just change the variable which is inside the method, and point to a new object.


2.
because `greeting` inside the method and outside the method is pointing to the same object, we can use mutable method to mutate the object,
when we mutate the object, the values of two variables is also changed.


3.
Because it assigns a new variable by using the same name outside the method, and it will take place the old variable which is the same name inside the method,
and the fourth line is mutate the new object which is created inside the block.
So the object outside the block is not changed.


4.
Because `param += "greeting"` is the same as `param = param + "greeting"`
it assign a new variable using the same name, but it does not point to the same object,
so when we the mutable method like `<<` it mutate the new object which is created inside the block!

if we puts the `change(greeting)` , it will be `hi world`, it is created at the line before the last line in the method.


Working with Collections

1.
It is an Array method,it will return a new Array.
The values of the new array in this method are originated by the values of the old one applying the rule defined in the method.

So the number of the new array is the same as the old one.


2.
It is an Array method,it will return a new Array.
The values in the returned array is passed by the rules in the method `select`,
when the value obeys the rules, it will return true , and the value will be added into the new array.

So the number of the new array is the same or less than the old one.


3.
I prefer `[1, 2, 3].map {|n| n + 1}`

Because `[1, 2, 3].map {|n| n += 1}` is using variable `n` to create an new variable in the same name, it will use more memory.
And the second style will let other people confused , so I choose the first one.


4.
The cod is just like `arr[0] >2 , arr[1] >2 ,arr[2] >2  `
and puts the vaules in a new array orderly.

the map method is to use the values in the array orderly, and do something sequentially.


5.
Ruby would return the last line automatically.
In this case, it will return ` puts n ` sequentially into the array.

The `puts` method will always return nil no mater what the argument is.

So the result is `[nil, nil, nil]` 


6.
arr is `[1, 2, 3]`

the select is a sequential method, it will add the values when the return is `true`
the last line in the method is `n+2` , it will always return true because except `nil` and `false` every thing is true in ruby.

so in this case, every values passed into the method will return true , and add all values into the new array , and return the new array.

7.
arr is `[]`

Because `puts` return `nil` no mater what the argument is, all return will be `nil` in this case.
The select method will add the value when it pass into the rule and return true. 
But in this case, the last line in the method is `puts`, so there is no values will be added into the new array.

