module songInfo

-- A record type that is equivalent to
-- (data songInfo = mksongInfo Nat String String Nat)
-- but where we give the names to fields.
-- A song has a rank, a name, an artist, and a length in time.

import list
import relation
import bool

record songInfo where
  constructor mksongInfo
  rank : Nat
  song : String
  artist : String 
  length : Nat
  top10: bool

HB: songInfo
HB = mksongInfo 1 "HotlineBling" "Drake" 427 true

WD: songInfo
WD = mksongInfo 2 "WildestDream" "TaylorSwift" 340 true

TH: songInfo
TH = mksongInfo 3 "TheHills" "TheWeeknd" 402 true

St: songInfo
St = mksongInfo 4 "Stitches" "ShawnMendes" 326 true

YM: songInfo
YM = mksongInfo 5 "WhatDoYouMean" "JustinBieber" 327 true

listsong: list songInfo
listsong = HB::WD::TH::St::YM::nil


rHB: Nat
rHB = rank HB

rWD: Nat
rWD = rank WD

rTH: Nat
rTH = rank TH

rSt: Nat
rSt = rank YM

sHB: String
sHB = song HB

sWD: String
sWD = song WD

sTH: String
sTH = song TH

sSt: String
sSt = song St

sYM: String
sYM = song YM

aHB: String
aHB = artist HB

aWD: String
aWD = artist WD

aTH: String
aTH = artist TH

aSt: String
aSt = artist St

aYM: String
aYM = artist YM

lHB: Nat
lHB = length HB

lWD: Nat
lWD = length WD

lTH: Nat
lTH = length TH

lSt: Nat
lSt = length St

lYM: Nat
lYM = length YM
