type CustomerId = Int
type ReviewBody = String
type CardHolder = String
type CardNumber = String
type Address = [String]

data BookInfo = Book Int String [String]
                deriving (Show)

data MagazineInfo = Magazine Int String [String]
                deriving (Show)

type BookRecord = (BookInfo, BookReview)

data BookReview = BookReview BookInfo CustomerId String

data BetterReview = BetterReview BookInfo CustomerId ReviewBody

data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerId
                   deriving (Show)

data Customer = Customer { 
        customerId          :: CustomerId,
        customerName        :: String,
        customerAddress     :: Address
    } deriving (Show)
