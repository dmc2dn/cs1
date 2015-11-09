module refactorTest

import refactor

b1: bool
b1 = true

b2: bool
b2 = true

b3: bool
b3 = false

b4: bool
b4 = not true

b5: bool
b5 = not b1

b6: bool
b6 = not (not b5)

at: bool
at = and true true

af: bool
af = and true false

af2: bool
af2 = and false true

af3: bool
af3 = and false false

OF: bool
OF = or false false

ot: bool
ot = or true false

nf: bool
nf = nand true true

nt: bool
nt = nand false true

xt: bool
xt = xor true false

xf: bool
xf = xor false false

and_t_t: bool
and_t_t = and true true

and_t_f: bool
and_t_f = and true false

and_f_t: bool
and_f_t = and false true

and_f_f: bool
and_f_f = and false false

or_t_t: bool
or_t_t = or true true

or_t_f: bool
or_t_f = or true false

or_f_t: bool
or_f_t = or false true

or_f_f: bool
or_f_f = or false false

nand_t_t: bool
nand_t_t = nand true true

nand_t_f: bool
nand_t_f = nand true false

nand_f_t: bool
nand_f_t = nand false true

nand_f_f: bool
nand_f_f = nand false false

xor_t_t: bool
xor_t_t = xor true true

xor_t_f: bool
xor_t_f = xor true false

xor_f_t: bool
xor_f_t = xor false true

xor_f_f: bool
xor_f_f = xor false false

uf: bool -> bool
uf = (and true)

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

eq1: bool
eq1 = eq (S (S (S O))) (S (S (S O)))

eq2: bool
eq2 = eq (S (S (S (S O)))) (S (S (S O)))

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

p1: pair bool bool
p1 = mkPair true false

p2: pair unit bool
p2 = mkPair mkUnit false

l0: list nat
l0 = nil

l1: list nat
l1 = O::nil

l2: list nat
l2 = (S O) :: (S (S O)) :: nil

l3: list nat
l3 = (S O)::(S (S O))::(S (S (S O))):: nil


len_13: nat
len_13 = length l3

len_12: nat
len_12 = length l2

list1: list nat
list1 = append nil nil

list2: list nat
list2 = append nil l3

list3: list nat
list3 = append l3 l2

map1: refactor.map
map1: nil nil = nil
