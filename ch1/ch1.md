#Simple Arithmetics
* We use :module in the ghci to import a module... eg. :module + Data.Ratio
* (-) is Haskell's only unary operator and must be wrapped in parenthesis to avoid parsing ambiguity
* not equals to is represented by /=
* negation is written with 'not' instead of !
* using the :info command we can inspect the precendence level of individual operators
* fixity rules -> combination of precedence and associativity


# Lists
* defined by []
* enumeration notation: [1..10]
* be careful when using lists with floating points.... there may be errors.
* two common operators ++ (concat) and : (cons) which adds an element to the front of the list
* eg [3,2,1] ++ [4, 2, 1] = [3,2,1,4,2,1]
* 1 : [2,3] = [1,2,3]
* putStrLn is Haskells print function
* characters are denoted in single quotes and strings are in double quotes

# Types
* Haskell requires types to start with an Uppercase and variables to start with lowercase
* :set +t will tell the ghci to print out the type information
* 'it' is a special variable in the ghci that saves the result of the expression we last evaluated
* instead of using :set +t we can use :type for individual variables
