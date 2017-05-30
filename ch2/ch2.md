# Haskell's Type System
There are three aspects
* Strong
* Static
* Inferred

We can use the `::` to explicitly state the type
``` haskell
[1,2,3] :: Int
```
also known as a type signature

# Composite data types - Lists and Tuples
The list type can accept any types so it is known as a polymorphic type.

Two popular list functions are `head` and `tail`

To write a ppolymorphic type we must use a type variable, which must begin with a lowercase letter.

A related pair of list functions is `take` and `drop`
* take - given a number n and a list, take returns the first n elements in the list
* drop - returns all but the first n elements

for tuples there are `fst` and `snd`

function application in haskell is left associate.

If a function has side affects, we can tell by reading its type signature: the type of the function's result will begin with IO

# Simple funtions
One thing to note is that haskell does have a `return` function but does not do the same thing as what return does in imperative languages

A variable is bound to a particular expression. We cannot assign the same variable twice in haskell

Indentation is important

`null` function returns true if the list is empty

Haskell uses non strict evaluation. meaning we dont evaluate the expression one line at a time. Instead haskell creates a "thunk" the is evaluated when it's really needed (aka lazy evaluation)

# Polymorphism
Haskell uses `parametric polymorphism` which means a type can have parameters that we can later bind to other types
