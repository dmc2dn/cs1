module People

import Person
import list
import bool
import pair



tom: Person
tom = MkPerson "Tom" 19 56 false

mary: Person 
mary = MkPerson "Mary" 20 59 true

ge: Person
ge = MkPerson "Ge" 21 64 true

daryl: Person
daryl = MkPerson "Daryl" 19 71 false

-- list of people

people: list Person
people = tom::mary::ge::daryl::nil

women: list Person
women = filter gender people

wAges: list Nat
wAges = map age women

years: Nat
years = list.foldr plus 0 wAges



