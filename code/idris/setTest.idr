module setTest

import set
import nat
import eq
import listTest
import list

s0: set nat
s0 = new_set

s1: set nat
s1 = set_insert (S O) s0

s2: set nat
s2 = set_insert (S O) s1

s3: set nat
s3 = set_insert (S (S O)) s2

s4: set nat
s4 = (mkSet l0)

s5: set nat
s5 = (mkSet l1)

s6: set nat 
s6 = (mkSet l2)

s7: set nat
s7 = (mkSet l3)
