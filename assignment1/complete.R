complete <- function(directory, id = 1:332) {
    nobs <- NULL
    for(i in id) {
        filename = paste(directory,"/",formatC(i, width=3, flag="0"),".csv",sep="")
        filedata <- read.csv(filename)
        nobs <- append(nobs, sum(complete.cases(filedata)))
    }
    results <- data.frame(id, nobs)
    return(results)
}