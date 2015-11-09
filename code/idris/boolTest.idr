module boolTest

import bool
import pair
import Serialize
import eq

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

s: String
s = toString true
