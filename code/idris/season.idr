module season

data season = fall | winter | spring | summer

nextseason: season -> season
nextseason fall = winter
nextseason winter = spring
nextseason spring = summer
nextseason summer = fall
