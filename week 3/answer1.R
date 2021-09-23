if (!file.exists('./data')) {
  dir.create('./data')
}

fileUrl = 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv'
download.file(fileUrl, destfile = './data/ACS.csv', method = 'curl')
ACS <- read.csv('./data/ACS.csv')
names(ACS)
agricultureLogical <- ACS$ACR == 3 & ACS$AGS == 6
head(which(agricultureLogical), 3)