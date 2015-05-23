corr <- function(directory, threshold = 0) {
    obscorr <- NULL
    sulfate <- NULL
    nitrate <- NULL
    for(i in 1:332) {
        filename <- paste(directory,"/",formatC(i,width=3,flag="0"),".csv",sep="")
        filedata <- read.csv(filename)
        if(sum(complete.cases(filedata)) > threshold) {
            sulfate <- filedata[complete.cases(filedata),"sulfate"]
            nitrate <- filedata[complete.cases(filedata),"nitrate"]
            obscorr <- append(obscorr, cor(sulfate, nitrate))
        }
    }
    if(is.null(obscorr)) {
        obscorr <- numeric()
    }
    return(obscorr)
}