myLength :: [a] -> Int
myLength []     = 0
myLength (_:xs) = 1 + myLength xs

turnToPalindrome :: [a] -> [a]
turnToPalindrome []     = []
turnToPalindrome x      = x ++ reverse x
    where reverse [] = []
          reverse xs = (last xs) : (reverse (init xs))

isPalindrome :: Eq a => [a] -> Bool
isPalindrome []         = True
isPalindrome xs    
     | xs == reverse xs = True
     | otherwise        = False
    where reverse [] = []
          reverse ys = (last ys) : (reverse (init ys))
