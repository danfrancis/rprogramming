pollutantmean <- function(directory, pollutant, id = 1:332) {
    allobs = NULL
    for(i in id) {
        filedata <- read.csv(paste(directory,"/",formatC(i, width=3, flag="0"),
                                   ".csv",sep=""))
        allobs = append(allobs, filedata[[pollutant]])
    }
    mean(allobs,na.rm = TRUE)
}