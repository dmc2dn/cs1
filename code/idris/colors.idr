module colors

import pair
import bool

%default total

data color = red | blue | green | magenta | cyan | yellow

complement : color -> color
complement red = cyan
complement blue = yellow
complement green = magenta
complement magenta = green
complement cyan = red
complement yellow = blue
 
additive: color -> bool
additive red = true
additive blue = true
additive green = true
additive _ = false

subtractive: color -> bool
subtractive magenta = true
subtractive cyan = true
subtractive yellow = true
subtractive _ = false

complements: pair color color -> bool
complements (mkPair red cyan) = true
complements (mkPair blue yellow) = true
complements (mkPair green magenta) = true
complements (mkPair magenta green) = true
complements (mkPair cyan red) = true
complements (mkPair yellow blue) = true
complements (mkPair a b) = false

mixink: pair color color -> color
mixink (mkPair magenta cyan) = blue
mixink (mkPair magenta yellow) = red
mixink (mkPair cyan yellow) = green
mixink (mkPair cyan magenta) = blue
mixink (mkPair yellow magenta) = red
mixink (mkPair yellow cyan) = green
