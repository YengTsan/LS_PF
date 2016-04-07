
Local Variables

1.
The `str` outside the loop and the `str` inside the loop are not the same `str`.

the first `str` is assigned to `1`
the second `str` is a new variable declared inside the block.

the inner scope can access the variable which is declared in an outer scope, but not vice versa

So,the `puts str` will access the first `str` we declared at the first line.


2.
Because of the scope of the variable, inner scope can access the variable declared outside the block,but not vice versa.

Thte `puts str` can not access a variable or method named str.


3.
We do not know it will run or fail. It depends on whether the method is defined or the variable is declared before the block.

If the method is defined or the variable is declared, it is able to run.


4.
The variable outside the method can not be accessed without passing them.


5.
They are two different variables.

the first `str` can not be accessed by the method,
the second `str` inside the method is declared in the method, it can only be accessed inside the method.

In the Q4, the method is trying to access the variable which is declared outside the method,
but in the Q5, the method is declared a variable and using the same name.

`puts str` will access the first `str`.


6.
At the second line, there are two variables and one object,the two variables point to the same object.

At the third line, `a = "hi"` means that we re-assign "hi" to variable `a`, in this moment,
there are two variables and two objects,

`b` is still point to the object which is created at the first line, so the fourth line would not mutate the object.


7.
There are 4 variables and 2 objects.

a, b, c point to `"hello"`
d point to `" world"`

`c = a` means let `c` point to the object which is pointed by `a` and other is the same as this.

`c = a `, `a` `c` point to `"hello"`
`d = b `, `d` `b` point to `"world"`
`b = a `, let `b` points to `"hello"`
`a = c` does not change anything.


Mutating Method Arguments

1.
We pass "hello" to the method `change`, and return `hello word` at the 6th line, but we do not print it out.

the 8th line prints the value which is created at the 5th line,
because the method access the argument to return a specific result, it does not mutate the argument.


2.
We pass the variable to the method `change`, in the method, it declared a variable `param` pointing to the same object as `greeting`.
Because of they are pointing the same object, when we modify the object pointed by `param` , the value of `greeting` will also be changed.

The 8th line print `hello world` because we used mutable method to mutate the caller.  (`<<` is mutable method)


3.
The code in the method `param = "hi"` is going to assign a variable to `"hi"`, it will take place the original argument we passed in.

So the second line code in the method `param << " world"` is mutated the variable which is declared inside the method,
it would not effect the argument itself.


4.
It just like the Q3, because `param += "greeting"` is equal to `param = param + "greeting"`,
The code assign a new variable `param` assigned to value of the argument `+ "greeting"`


So the second line in the method `param << "hey"` is going to mutate the variable which is declared inside the method,
it would not effect the argument itself.



Working with Collections

1.
It is a Array method, we can call it after the array with `.`,
and it will return a new array.

When we use an Array#map,
there will be a block with a variable,like:

`a.map {|variable| variable + 3 } ` or use `do..end` for muti-line code in the block.

`a` is the original array,
the code within the curly brace is the operation we want to do.

When we call the method `map`, it will loop through each element in the original array `a`,
then begin executing the code within the block, then add the result to the new array.

Finally, it will return the new array.


2.
It is a Array method, we can call it after the array with `.`,
and it will return a new array.

When we use an Array#select,
there will be a block with a variable,like:

`a.select {|variable| variable > 3 } ` or use `do..end` for muti-line code in the block.

`a` is the original array,
the code within the curly brace is going to decide whether we add the element into new array or not,
where would be a boolean expression at the last line in the block,

if result is true, it will add the element into the new array.

Finally, it will return the new array.


3.
We know that method `map` will create a new array,
and the value of elements in the new array is returned by the block.

The result of the `[1, 2, 3].map {|n| n+1}` and `[1, 2, 3].map {|n| n = n+1}` is the same.

But the value the of first one is return by ` n+1 `
and the value the of second one is return by `n = n+1`, it re-assign a new variable to `n+1`.

I would choose the first one because it use less memory and the second one would be hard to understood.


4.
The `map` method will loop through each elements, and passes the value of the elements to the block,
then add the result of the block to new array sequentially.

The result of every block in this case would be `true or false` because the last line of code in the block is a boolean expression.


5.
The values of the elements in the returned array by `map` is the result of each times we execute the block.

The last line of code in the block is `puts` method,it will always return `nil`,
So the `map` method will add 3 `nil` to the new array.


6.
The `select` method will loop through each elements, and exectes the block.
If the return of the block is not `false` or `nil`, it will add the element to the new array.

In this case, the last line of code is `n + 2`, all elements in the original array is Integer, and `2` is Integer, too.
So the result will always not be `false` or `nil`, then , it will add the all elements to the new array.

The new array will be [1, 2, 3].


7.
The `select` method will loop through each elements, and executes the block.
If the return of the block is not `false` or `nil`, it will add the element to the new array.

In this case, the last line of code is 'puts n', no mater what `n` is,
method `puts` will always return `nil`.

So it will not add any element in the new array.


