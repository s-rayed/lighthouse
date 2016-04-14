list = {'yvr' => 'Vancouver', 'yba' => 'Banff', 'yyz' => 'Toronto', 'yxx' => 'Abbotsford', 'ybw' => 'Calgary'}


puts list['yvr'].class
#its a string
# Why is it returning nil instead of first element of the list above
puts list['yvr']

# It is returning nil instead of the first element because its assigning strings to strings in the arrays. So if we want the 0th index
# we have to either remove the assigning => or ask for puts list['yvr']

