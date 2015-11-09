module Person

import bool

||| A record type that is equivalent to:
||| (data Person = mkPerson String String nat String String)
||| but where we give names to fields.
||| A person has a first name, last name, an age in
||| years, a birth month, and a gender. 

record Person where
    constructor MkPerson
    name: String
    age : Nat
    height : Nat
    gender : bool
    

-- An example value of type Person
t: Person
t = MkPerson "Tommy" 12 68 false

s: Person
s = MkPerson "Sally" 20 70 true

w: Person
w = MkPerson "Will" 15 66 false

-- And now here's the key idea: The 
-- names of the fields are automatically
-- names of projection functions! Here
-- we get out the age of person, p.

d: Nat
d = age t

-- expect 3

-- Here we get the name of person p.
n: String
n = name t
-- expect "Tommy"

h: Nat
h = height t

g: bool
g = gender t

setName: Person -> String -> Person
setName p n = record { name = n } p

setAge: Person -> Nat -> Person
setAge p c = record { age = c } p

setHeight: Person -> Nat -> Person
setHeight p h = record { height = h } p

setGender: Person -> bool -> Person
setGender p g = record { gender = g } p
