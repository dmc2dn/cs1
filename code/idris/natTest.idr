module natTest

import nat
import bool
import pair
import eq
import Serialize

-- zero
z: nat
z = O

-- one
o: nat
o = S O

-- two
t: nat
t = S (S O)

-- three
r: nat
r = S t

-- seven
s: nat
s = S (S (S (S (S (S (S O))))))
x: bool
x = isZero r

y: nat
y = (succ O)

a: bool
a = evenb O

b: bool
b = evenb (S O)

c: bool
c = evenb (S (S O))

d: bool
d = evenb (S r)


h1: nat
h1 = add O O

||| a test, expecting S (S O)
h2: nat
h2 = add O (S (S O))

||| a test, expecting (S O)
h3: nat
h3 = add (S O) O

||| a test, expecting (S (S (S (S (S O)))))
h4: nat
h4 = add (S (S O)) (S (S (S O)))


m6: nat
m6 = mult (S (S (S O))) (S (S O))

f3: nat
f3 = fact (S (S (S O)))

s4: nat
s4 = sub (S (S (S (S (S O))))) (S O)

e3: nat
e3 = exp (S (S (S O))) (S (S O))

e4: nat
e4 = exp (S (S (S (S O)))) (S (S O))

le1: bool
le1 = le (S (S (S O))) (S O)

le2: bool
le2 = le (S (S (S O))) (S (S (S (S (S (S O))))))



gt1: bool
gt1 = gt (S (S (S (S (S O))))) (S (S O))

ge1: bool
ge1 = ge (S (S (S O))) (S (S (S (S O))))

lt1: bool
lt1 = lt (S (S (S O))) (S (S (S O)))

fib5: nat
fib5 = fib (S (S (S (S (S O)))))

fib6: nat
fib6 = fib (S (S (S (S (S (S O))))))

pf: nat -> nat
pf = add (S (S O))

st: String
st = toString h4
