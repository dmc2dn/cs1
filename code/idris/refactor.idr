module refactor


data unit = mkUnit

unit_id: unit -> unit
unit_id mkUnit = mkUnit


data bool = true | false

id: bool -> bool
id b = b

constFalse: bool -> bool
constFalse _ = false

constTrue: bool -> bool
constTrue _ = true

not: bool -> bool
not true = false
not _ = true

and: bool -> bool -> bool
and true true = true
and _ _ = false

or: bool -> bool -> bool
or false false = false
or _ _ = true

xor: bool -> bool -> bool
xor true false = true
xor false true = true
xor _ _ = false

nand: bool -> bool -> bool
nand true true = false
nand _ _ = true


data nat = O | S nat


||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false


||| returns the successor of any given nat
succ: nat -> nat
succ n = S n


||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n


||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

||| return false if the argument is even otherwise true i.e., return true if it's odd and false if it's even
oddb: nat -> bool
oddb n = not (evenb n)


add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add m (mult n m)

fact: nat -> nat
fact O = (S O)
fact (S n) = mult (S n) (fact n)

sub: nat -> nat -> nat
sub O m = O
sub n O = n
sub (S n) (S m) = sub n m

exp: nat -> nat -> nat
exp n O = (S O)
exp n (S m) = mult n (exp n m)


le: nat -> nat -> bool
le (S n) O = false
le O m = true
le (S n) (S m) = le n m

eq: nat -> nat -> bool
eq O O = true
eq (S n) (S m) = eq n m
eq _ _ = false

gt: nat -> nat -> bool
gt (S n) O = true
gt O m = false
gt (S n) (S m) = gt n m

ge: nat -> nat -> bool
ge (S n) O = true
ge O (S m) = false
ge O O = true
ge (S n) (S m) = ge n m

lt: nat -> nat -> bool
lt n O = false
lt O (S m) = true
lt (S n) (S m) = lt n m


fib: nat -> nat
fib O = O
fib (S O) = (S O)
fib (S (S n)) = add (fib n) (fib (S n))


data pair a b = mkPair a b

fst: pair a b -> a
fst (mkPair f s) = f

snd: pair a b -> b
snd (mkPair f s) = s

data option t = some t | none

o1: option bool
o1 = none

o2: option bool
o2 = some true

o3: option unit
o3 = some mkUnit

infixr 7 ::,++

data list a = nil | (::) a (list a)

||| return the length of any given list
length: list a -> nat
length nil = O
length (n::l) = S (length l)

||| return the result of appending two lists
append: list a -> list a -> list a
append nil a = a
append (h :: a) b = h::(append a b)

|||append as an infix operator ++
(++): list a -> list a -> list a
(++) nil l2 = l2
(++) (h::t) l2 = h::(t++l2)

map: (a -> b) -> list a -> list b
map f nil = nil
map f (h::t) = (f h)::(map f t)

