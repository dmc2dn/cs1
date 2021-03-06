module list

import nat
import pair
import bool
import ite
import eq
import Serialize

infixr 7 ::,++

data list a = nil | (::) a (list a)

||| return the length of any given list
length: list a -> nat
length nil = O
length (n::l) = S (length l)

|||append as an infix operator ++
(++): list a -> list a -> list a
(++) nil l2 = l2
(++) (h::t) l2 = h::(t++l2)

||| map a function over the elements of a list
map: (a -> b) -> list a -> list b
map f nil = nil
map f (h::t) = (f h)::(map f t)


||| give a list and a predicate on elements
||| return the sublist of elements for which
||| the predicate is true
filter: (a -> bool) -> list a -> list a 
filter f nil = nil
filter f (h::t) = ite (f h) (h::(filter f t)) (filter f t)

foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)

sum: nat
sum = list.foldr add O 
        ((S O)::(S (S O))::(S (S (S O)))::
        S (S (S (S (S (S O)))))::nil)

product: nat
product = list.foldr mult (S O) 
            ((S O)::(S (S O))::(S (S (S O)))::
            S (S (S (S (S (S O)))))::nil)


member: (eq a) => a -> list a -> bool
member v nil = false
member v (h::t) = ite (eql v h) 
                      true 
                      (member v t)
                     
subset_elements: (eq a) => list a -> list a -> bool
subset_elements nil nil = true
subset_elements l1 nil = false
subset_elements nil l2 = true
subset_elements (h1::t1) (h2::t2) = ite (member h1 (h2::t2))
                                        (subset_elements t1 (h2::t2))
                                        false

same_elements: (eq a) => list a -> list a -> bool
same_elements l1 l2 = and (subset_elements l1 l2) (subset_elements l2 l1)

instance (eq a) => eq (list a) where
  eql nil nil = true
  eql (h::t) nil = false
  eql nil (h::t) = false
  eql (h1::t1) (h2::t2) = 
    and (eql h1 h2) (eql t1 t2)

listToString: (Serialize a, eq (list a))=>list a -> String
listToString nil = ""
listToString (h::nil) = (toString h)
listToString (h::t) = (toString h) ++ "," ++ (listToString t)

instance (eq (list a),Serialize a)=> Serialize (list a) where
  toString l = "[" ++ (listToString l)  ++ "]"
