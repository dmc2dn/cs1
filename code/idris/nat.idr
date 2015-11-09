module nat

import bool
import pair
import eq
import Serialize

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

eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat (S n) (S m) = eql_nat n m
eql_nat _ _ = false

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

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
  toString O = "O"
  toString (S n) = "S" ++ toString n
