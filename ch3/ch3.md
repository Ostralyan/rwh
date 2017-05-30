# Defining a new data type

The `data` keyword is used to define a new type. A type name and type constructor must start with a capital letter.
``` haskell
data BookInfo = Book Int String [String]
                deriving (Show)
```
BookInfo is a type constructor and Book is the data constructor sometimes also called the data constructor

# Type Synonyms
We can introduce a synonym anywhere, to give a type a more descriptive name. For example

`` haskell
type CustomerId = Int
type ReviewBody = String
``

# Algebraic data types
Algebraic data types can have more than one value constructor. Each value constructor is seperated by a | operator

***** IMPORTANT **
type is used for type synonyms
data is used for defining a new data type OR algebraic data types

algebraic type constructors can take 0 or more arguements

# Pattern Matching
If we have a value of some type, we need to be able to tell which value constructor was used to create a value, and also if the value has data components we need to be able to extract those values.

Order matters in pattern matching, it starts from top to bottom and stops at the first success.

When we pattern match against a value constructor, we reverse the construction process. Pattern matching is also sometimes referred to as deconstruction because it's the inverse of construction.

`_` - wild card pattern

# Record Syntax
We can use the record syntax to reduce boiler plate code to create 'getters and setters' for our types.

# New Variables
To declare a new variable in a function block we use the keyword `let`.
To end the variable declaration block, we close it with the keyword `in`

There is a similar clause called the `where` clause. The definitions in a where clause apply to the code that precedes it. 

# Offside Rule
Haskell uses indentation as a cue to parse sections of code.

# Case Expression
`case`, `of` construct lets us match patterns within an expression. 

``` haskell
fromMaybe defval wrapped =
    case wrapped of
        Nothing     -> defval
        Just value  -> value
```

# Conditional evaluation with guards 

``` haskell
nodesAreSame (Node a _ _) (Node b _ _)
    | a == b     = Just a
nodesAreSame _ _ = Nothing
```

Each pattern can be follow by zero or more guards, each an expression of type Bool. If a pattern matches, each guard associated with the pattern is evaluated, in the order they were written in.
If a guard succeeds, the body affiliated with it is used as the result of the function.
`otherwise` keyword is just bound to true to assist with readability

