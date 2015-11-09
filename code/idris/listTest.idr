import nat
import pair
import list
import bool
import eq

l0: list nat
l0 = nil

l1: list nat
l1 = O:: nil

l2: list nat
l2 = (S O)::(S (S O)):: nil

l3: list nat
l3 = (S O)::(S (S O))::(S (S (S O)))::nil


len_13: nat
len_13 = length l3

len_12: nat
len_12 = length l2

{-
length l3
length (cons (S O) (cons (S (S O)) cons (S (S (S O))) nil))
S (length cons (S (S O)) (cons (S (S (S O))) nil))
S (S (length (cons (S (S (S O))) nil)))
S (S (S (length nil)))
S (S (S O))
-}

m1: list.list bool
m1 = map evenb nil

m2: list bool
m2 = map evenb ((S (S O))::(S (S (S O)))::(S (S (S (S O))))::nil)

m3: list bool
m3 = map evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

f2: list nat
f2 = filter evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

isThree: bool
isThree = (member (S (S (S O))) l2)
