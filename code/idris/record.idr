record Person where
  constructor MkPerson
  name : String
  age : Nat
  
newName : Person -> String -> Person
newName p n = record {name = n} p

p: Person
p = mkPerson "hi" 3

t: Nat
t = age p

n: String 
n = name P

p': Person
p' = 
