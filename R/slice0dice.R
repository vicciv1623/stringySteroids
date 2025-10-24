#' Split a string based on given indices
#' @param x A string
#' @param split A numerical vector indicating which indices of x to be split on
#'
#' @return A character vector
#' @export
#'
#' @examples
#' x<-"Happy birthday to me"
#' split<-c(2,9)
#' splice0dice(x, split)
#'


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

