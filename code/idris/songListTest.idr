module songInfoTest

import songList
import pair
import relation
import list
import bool

ave_rank: pair Nat Nat
ave_rank = ave_rel listsong top10 rank

ave_length: pair Nat Nat
ave_length = ave_rel listsong top10 length

sum_rank: Nat
sum_rank = sum_rel listsong top10 rank

sum_length: Nat
sum_length = sum_rel listsong top10 length

count_song: Nat
count_song = count_rel listsong top10
