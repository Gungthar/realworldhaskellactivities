--file: ch03/BookStore.hs
type CustomerID = Int
type ReviewBody = String
type CardHolder = String
type CardNumber = String
type Address = [String]

data Customer = Customer {
	customerID :: CustomerID
	, customerName :: String
	, customerAddress :: Address
	}deriving (Show)

data BillingInfo = CreditCard CardNumber CardHolder Address
	| CashOnDelivery
	| Invoice CustomerID
	deriving (Show)
data BookInfo = Book Int String [String]
	deriving (Show)
data MagazineInfo = Magazine Int String [String]
	deriving (Show)
data BookReview = BookReview BookInfo CustomerID String

myInfo = Book 9780135072455 "Algebra of Programming"
	["Richard Bird", "Oege de Moor"]

bookID (Book id title authors) = id
bookTitle (Book id title authors) = title
bookAuthors (Book id title authors) = authors

nicerID (Book id _ _) = id
nicerTitle (Book _ title _) = title
nicerAuthors (Book _ _ authors) = authors

customer1 = Customer 271828 "J.R. Hacker"
	["255 Syntax Ct", "Milpitas, CA 95134", "USA"]
