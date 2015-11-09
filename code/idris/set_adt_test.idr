import set_adt
import bool
import list
import nat
import eq
import option
import pair
import Serialize

s1: set nat
s1 = mkSet ((S O)::(S (S O))::nil)

s2: set nat
s2 = mkSet ((S O)::(S (S (S O)))::(S (S (S (S (S O)))))::nil)

-- isEmpty s1 -> expecting false
ie1: bool
ie1 = isEmpty s1

-- isEmpty s2 -> expecting false
ie2: bool
ie2 = isEmpty s2

-- set_insert (S (S (S O))) into s1, expecting (S O::(S (S O))::(S (S (S O)))::nil)
si1: set nat
si1 = set_insert (S (S (S O))) s1

-- set_insert O into s2, expecting (O::(S O)::(S (S (S O)))::(S (S (S
-- (S (S O)))))::nil)
si2: set nat
si2 = set_insert O s2

-- set_remove (S O) from s1, expecting (S (S O))::nil
sr1: set nat
sr1 = set_remove (S O) s1

-- set_remove (S O) from s2, expecting (S (S (S O)))::(S (S (S (S (S O)))))::nil
sr2: set nat
sr2 = set_remove (S O) s2

-- set_cardinality of s1, expecting (S (S O))
sc1: nat
sc1 = set_cardinality s1

-- set_cardinality of s2, expecting (S (S (S O)))
sc2: nat
sc2 = set_cardinality s2

-- set_member (S O) of s1, expecting true
sm1: bool
sm1 = set_member (S O) s1

-- set_member O of s2, expecting false
sm2: bool
sm2 = set_member O s2

-- set_union s1 and s2, expecting (S O)::(S (S O))::(S (S (S O)))::(S
-- (S (S (S (S O)))))::nil
set_union12: set nat
set_union12 = set_union s1 s2

-- set_intersection s1 and s2, expecting (S O)::nil
set_int12: set nat
set_int12 = set_intersection s1 s2

-- set_difference s1 and s2, expecting (S (S O))::(S (S (S O)))::(S (S
-- (S (S (S O)))))::nil
set_diff12: set nat
set_diff12 = set_difference s1 s2

-- set_forall even of s1, expecting false
sf1: bool
sf1 = set_forall (evenb) s1

-- set_forall odd of s2, expecting true 
sf2: bool
sf2 = set_forall (oddb) s2

-- set_exists even of s1, expecting true
se1: bool
se1 = set_exists (evenb) s1

-- set_exists even of s2, expecting false
se2: bool
se2 = set_exists (evenb) s2

-- set_witness even of s1, expecting some (S (S O))
sw1: option nat
sw1 = set_witness (evenb) s1

-- set_witness odd of s2, expecting some (S O)
sw2: option nat
sw2 = set_witness (oddb) s2

-- set_product of s1 and s2, expecting mkSet (mkPair (S O) (S O) ::
-- mkPair (S O) (S (S (S O))) ::
-- mkPair (S O) (S (S (S (S (S O))))) ::
-- mkPair (S (S O)) (S O) ::
-- mkPair (S (S O)) (S (S (S O))) ::
-- mkPair (S (S O)) (S (S (S (S (S O))))) :: nil)
sp12: set (pair nat nat)
sp12 = set_product s1 s2

-- set_eql between s1 and s2, expecting false
s_eq12: bool
s_eq12 = set_eql s1 s2

-- set_toString of s1, expecting "SO,SSO"
sts1: String
sts1 = set_toString s1

-- set_toString of s2, expecting "SO,SSSO,SSSSSO"
sts2: String
sts2 = set_toString s2

-- Serialize s1, expecting "{SO,SSO}"
serializeS1: String
serializeS1 = toString s1

-- Serialize s2, expecting "{SO,SSSO,SSSSSO}"
serializeS2: String
serializeS2 = toString s2
