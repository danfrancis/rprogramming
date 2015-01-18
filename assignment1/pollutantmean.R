pollutantmean <- function(directory, pollutant, id = 1:332) {
    allobs <- NULL
    for(i in id) {
        filename = paste(directory,"/",formatC(i, width=3, flag="0"),".csv",sep="")
        filedata <- read.csv(filename)
        allobs = append(allobs, filedata[[pollutant]])
    }
    mean(allobs,na.rm = TRUE)
}