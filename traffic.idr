module colors

data colors = red | amber | green

nextColor: colors -> colors
nextColor red = green
nextColor green = amber
nextColor amber = red


