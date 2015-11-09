module bool

data bool = true | false

id: bool -> bool
id x = x

constTrue: bool -> bool
--constTrue true = true
--constTrue false = true
constTrue _ = true

constFalse: bool -> bool
constFalse _ = false

not: bool -> bool
not true = false
not false = true

