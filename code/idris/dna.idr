module dna

import list
import pair
import nat
import bool


data base = A | T | C | G


complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C


complement_strand: list base -> list base
complement_strand (h::t) = map complement_base (h::t)

strand1: list (pair base base) -> list base
strand1 (h::t) = map fst (h::t)

strand2: list (pair base base) -> list base
strand2 (h::t) = map snd (h::t)

pairbase: base -> pair base base
pairbase A = mkPair A T
pairbase T = mkPair T A
pairbase C = mkPair C G
pairbase G = mkPair G C

complete: list base -> list (pair base base)
complete (h::t) = map pairbase (h::t)

match: base -> base -> nat
match A A = (S O)
match T T = (S O)
match C C = (S O)
match G G = (S O)
match _ _ = O


countBase: list base -> base -> nat
countBase l b = list.foldr add O (map (match b) l)
