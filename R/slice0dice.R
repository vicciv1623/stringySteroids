slice0dice<-function(x, split){
  # input
  # x is the string you wish to slice
  # split are indices at which you want to slice your string

  # output
  # an atomic vector of the sliced string
  output<-c()
  split<-c(0, split, nchar(x)+1)
  for(i in 1:(length(split)-1)){
    output<-c(output, substr(x, split[i]+1, split[i+1]))
  }
  return (output)
}

