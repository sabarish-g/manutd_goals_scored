#List the files in the working directory
setwd("C:/Users/sabar/OneDrive/Desktop/sports_analysis/england/epl")
temp = list.files(pattern="*.csv")
for (i in 1:length(temp)) assign(temp[i], read.csv(temp[i])[ ,c(1:7)])

pl_9394.csv$season<-"1993-1994"
pl_9495.csv$season<-"1994-1995"
pl_9596.csv$season<-"1995-1996"
pl_9697.csv$season<-"1996-1997"
pl_9798.csv$season<-"1997-1998"
pl_9899.csv$season<-"1998-1999"
pl_9900.csv$season<-"1999-2000"
pl_0001.csv$season<-"2000-2001"
pl_0102.csv$season<-"2001-2002"
pl_0203.csv$season<-"2002-2003"
pl_0304.csv$season<-"2003-2004"
pl_0405.csv$season<-"2004-2005"
pl_0506.csv$season<-"2005-2006"
pl_0607.csv$season<-"2006-2007"
pl_0708.csv$season<-"2007-2008"
pl_0809.csv$season<-"2008-2009"
pl_0910.csv$season<-"2009-2010"
pl_1011.csv$season<-"2010-2011"
pl_1112.csv$season<-"2011-2012"
pl_1213.csv$season<-"2012-2013"
pl_1314.csv$season<-"2013-2014"
pl_1415.csv$season<-"2014-2015"
pl_1516.csv$season<-"2015-2016"
pl_1617.csv$season<-"2016-2017"
pl_1718.csv$season<-"2017-2018"
pl_1819.csv$season<-"2018-2019"

pl_9394.csv<-na.omit(pl_9394.csv)
pl_9495.csv<-na.omit(pl_9495.csv)
pl_9596.csv<-na.omit(pl_9596.csv)
pl_9697.csv<-na.omit(pl_9697.csv)
pl_9798.csv<-na.omit(pl_9798.csv)
pl_9899.csv<-na.omit(pl_9899.csv)
pl_9900.csv<-na.omit(pl_9900.csv)
pl_0001.csv<-na.omit(pl_0001.csv)
pl_0102.csv<-na.omit(pl_0102.csv)
pl_0203.csv<-na.omit(pl_0203.csv)
pl_0304.csv<-na.omit(pl_0304.csv)
pl_0405.csv<-na.omit(pl_0405.csv)
pl_0506.csv<-na.omit(pl_0506.csv)
pl_0607.csv<-na.omit(pl_0607.csv)
pl_0708.csv<-na.omit(pl_0708.csv)
pl_0809.csv<-na.omit(pl_0809.csv)
pl_0910.csv<-na.omit(pl_0910.csv)
pl_1011.csv<-na.omit(pl_1011.csv)
pl_1112.csv<-na.omit(pl_1112.csv)
pl_1213.csv<-na.omit(pl_1213.csv)
pl_1314.csv<-na.omit(pl_1314.csv)
pl_1415.csv<-na.omit(pl_1415.csv)
pl_1516.csv<-na.omit(pl_1516.csv)
pl_1617.csv<-na.omit(pl_1617.csv)
pl_1718.csv<-na.omit(pl_1718.csv)
pl_1819.csv<-na.omit(pl_1819.csv)


epl_file <- rbind(pl_9394.csv<-pl_9394.csv[,c(1:8)],
                  pl_9495.csv<-pl_9495.csv[,c(1:8)],
                  pl_9596.csv<-pl_9596.csv[,c(1:8)],
                  pl_9697.csv<-pl_9697.csv[,c(1:8)],
                  pl_9798.csv<-pl_9798.csv[,c(1:8)],
                  pl_9899.csv<-pl_9899.csv[,c(1:8)],
                  pl_0001.csv<-pl_0001.csv[,c(1:8)],
                  pl_0102.csv<-pl_0102.csv[,c(1:8)],
                  pl_0203.csv<-pl_0203.csv[,c(1:8)],
                  pl_0304.csv<-pl_0304.csv[,c(1:8)],
                  pl_0405.csv<-pl_0405.csv[,c(1:8)],
                  pl_0506.csv<-pl_0506.csv[,c(1:8)],
                  pl_0607.csv<-pl_0607.csv[,c(1:8)],
                  pl_0708.csv<-pl_0708.csv[,c(1:8)],
                  pl_0809.csv<-pl_0809.csv[,c(1:8)],
                  pl_0910.csv<-pl_0910.csv[,c(1:8)],
                  pl_1011.csv<-pl_1011.csv[,c(1:8)],
                  pl_1112.csv<-pl_1112.csv[,c(1:8)],
                  pl_1213.csv<-pl_1213.csv[,c(1:8)],
                  pl_1314.csv<-pl_1314.csv[,c(1:8)],
                  pl_1415.csv<-pl_1415.csv[,c(1:8)],
                  pl_1516.csv<-pl_1516.csv[,c(1:8)],
                  pl_1617.csv<-pl_1617.csv[,c(1:8)],
                  pl_1718.csv<-pl_1718.csv[,c(1:8)],
                  pl_1819.csv<-pl_1819.csv[,c(1:8)])

epl_file <- na.omit(epl_file)
epl_file$season <- as.factor(epl_file$season)
epl_file$total_goal <-epl_file$FTHG + epl_file$FTAG 


######################################################################
setwd("C:/Users/sabar/OneDrive/Desktop/sports_analysis/germany")
temp = list.files(pattern="*.csv")
for (i in 1:length(temp)) assign(temp[i], read.csv(temp[i])[ ,c(1:7)])

bun_9394.csv$season<-"1993-1994"
bun_9495.csv$season<-"1994-1995"
bun_9596.csv$season<-"1995-1996"
bun_9697.csv$season<-"1996-1997"
bun_9798.csv$season<-"1997-1998"
bun_9899.csv$season<-"1998-1999"
bun_9900.csv$season<-"1999-2000"
bun_0001.csv$season<-"2000-2001"
bun_0102.csv$season<-"2001-2002"
bun_0203.csv$season<-"2002-2003"
bun_0304.csv$season<-"2003-2004"
bun_0405.csv$season<-"2004-2005"
bun_0506.csv$season<-"2005-2006"
bun_0607.csv$season<-"2006-2007"
bun_0708.csv$season<-"2007-2008"
bun_0809.csv$season<-"2008-2009"
bun_0910.csv$season<-"2009-2010"
bun_1011.csv$season<-"2010-2011"
bun_1112.csv$season<-"2011-2012"
bun_1213.csv$season<-"2012-2013"
bun_1314.csv$season<-"2013-2014"
bun_1415.csv$season<-"2014-2015"
bun_1516.csv$season<-"2015-2016"
bun_1617.csv$season<-"2016-2017"
bun_1718.csv$season<-"2017-2018"
bun_1819.csv$season<-"2018-2019"

bun_9394.csv<-na.omit(bun_9394.csv)
bun_9495.csv<-na.omit(bun_9495.csv)
bun_9596.csv<-na.omit(bun_9596.csv)
bun_9697.csv<-na.omit(bun_9697.csv)
bun_9798.csv<-na.omit(bun_9798.csv)
bun_9899.csv<-na.omit(bun_9899.csv)
bun_9900.csv<-na.omit(bun_9900.csv)
bun_0001.csv<-na.omit(bun_0001.csv)
bun_0102.csv<-na.omit(bun_0102.csv)
bun_0203.csv<-na.omit(bun_0203.csv)
bun_0304.csv<-na.omit(bun_0304.csv)
bun_0405.csv<-na.omit(bun_0405.csv)
bun_0506.csv<-na.omit(bun_0506.csv)
bun_0607.csv<-na.omit(bun_0607.csv)
bun_0708.csv<-na.omit(bun_0708.csv)
bun_0809.csv<-na.omit(bun_0809.csv)
bun_0910.csv<-na.omit(bun_0910.csv)
bun_1011.csv<-na.omit(bun_1011.csv)
bun_1112.csv<-na.omit(bun_1112.csv)
bun_1213.csv<-na.omit(bun_1213.csv)
bun_1314.csv<-na.omit(bun_1314.csv)
bun_1415.csv<-na.omit(bun_1415.csv)
bun_1516.csv<-na.omit(bun_1516.csv)
bun_1617.csv<-na.omit(bun_1617.csv)
bun_1718.csv<-na.omit(bun_1718.csv)
bun_1819.csv<-na.omit(bun_1819.csv)


bun_file <- rbind(bun_9394.csv<-bun_9394.csv[,c(1:8)],
                  bun_9495.csv<-bun_9495.csv[,c(1:8)],
                  bun_9596.csv<-bun_9596.csv[,c(1:8)],
                  bun_9697.csv<-bun_9697.csv[,c(1:8)],
                  bun_9798.csv<-bun_9798.csv[,c(1:8)],
                  bun_9899.csv<-bun_9899.csv[,c(1:8)],
                  bun_0001.csv<-bun_0001.csv[,c(1:8)],
                  bun_0102.csv<-bun_0102.csv[,c(1:8)],
                  bun_0203.csv<-bun_0203.csv[,c(1:8)],
                  bun_0304.csv<-bun_0304.csv[,c(1:8)],
                  bun_0405.csv<-bun_0405.csv[,c(1:8)],
                  bun_0506.csv<-bun_0506.csv[,c(1:8)],
                  bun_0607.csv<-bun_0607.csv[,c(1:8)],
                  bun_0708.csv<-bun_0708.csv[,c(1:8)],
                  bun_0809.csv<-bun_0809.csv[,c(1:8)],
                  bun_0910.csv<-bun_0910.csv[,c(1:8)],
                  bun_1011.csv<-bun_1011.csv[,c(1:8)],
                  bun_1112.csv<-bun_1112.csv[,c(1:8)],
                  bun_1213.csv<-bun_1213.csv[,c(1:8)],
                  bun_1314.csv<-bun_1314.csv[,c(1:8)],
                  bun_1415.csv<-bun_1415.csv[,c(1:8)],
                  bun_1516.csv<-bun_1516.csv[,c(1:8)],
                  bun_1617.csv<-bun_1617.csv[,c(1:8)],
                  bun_1718.csv<-bun_1718.csv[,c(1:8)],
                  bun_1819.csv<-bun_1819.csv[,c(1:8)])

bun_file <- na.omit(bun_file)
bun_file$season <- as.factor(bun_file$season)
bun_file$total_goal <-bun_file$FTHG + bun_file$FTAG 
#################################################################################
setwd("C:/Users/sabar/OneDrive/Desktop/sports_analysis/spain")
temp = list.files(pattern="*.csv")
for (i in 1:length(temp)) assign(temp[i], read.csv(temp[i])[ ,c(1:7)])

esp_9394.csv$season<-"1993-1994"
esp_9495.csv$season<-"1994-1995"
esp_9596.csv$season<-"1995-1996"
esp_9697.csv$season<-"1996-1997"
esp_9798.csv$season<-"1997-1998"
esp_9899.csv$season<-"1998-1999"
esp_9900.csv$season<-"1999-2000"
esp_0001.csv$season<-"2000-2001"
esp_0102.csv$season<-"2001-2002"
esp_0203.csv$season<-"2002-2003"
esp_0304.csv$season<-"2003-2004"
esp_0405.csv$season<-"2004-2005"
esp_0506.csv$season<-"2005-2006"
esp_0607.csv$season<-"2006-2007"
esp_0708.csv$season<-"2007-2008"
esp_0809.csv$season<-"2008-2009"
esp_0910.csv$season<-"2009-2010"
esp_1011.csv$season<-"2010-2011"
esp_1112.csv$season<-"2011-2012"
esp_1213.csv$season<-"2012-2013"
esp_1314.csv$season<-"2013-2014"
esp_1415.csv$season<-"2014-2015"
esp_1516.csv$season<-"2015-2016"
esp_1617.csv$season<-"2016-2017"
esp_1718.csv$season<-"2017-2018"
esp_1819.csv$season<-"2018-2019"

esp_9394.csv<-na.omit(esp_9394.csv)
esp_9495.csv<-na.omit(esp_9495.csv)
esp_9596.csv<-na.omit(esp_9596.csv)
esp_9697.csv<-na.omit(esp_9697.csv)
esp_9798.csv<-na.omit(esp_9798.csv)
esp_9899.csv<-na.omit(esp_9899.csv)
esp_9900.csv<-na.omit(esp_9900.csv)
esp_0001.csv<-na.omit(esp_0001.csv)
esp_0102.csv<-na.omit(esp_0102.csv)
esp_0203.csv<-na.omit(esp_0203.csv)
esp_0304.csv<-na.omit(esp_0304.csv)
esp_0405.csv<-na.omit(esp_0405.csv)
esp_0506.csv<-na.omit(esp_0506.csv)
esp_0607.csv<-na.omit(esp_0607.csv)
esp_0708.csv<-na.omit(esp_0708.csv)
esp_0809.csv<-na.omit(esp_0809.csv)
esp_0910.csv<-na.omit(esp_0910.csv)
esp_1011.csv<-na.omit(esp_1011.csv)
esp_1112.csv<-na.omit(esp_1112.csv)
esp_1213.csv<-na.omit(esp_1213.csv)
esp_1314.csv<-na.omit(esp_1314.csv)
esp_1415.csv<-na.omit(esp_1415.csv)
esp_1516.csv<-na.omit(esp_1516.csv)
esp_1617.csv<-na.omit(esp_1617.csv)
esp_1718.csv<-na.omit(esp_1718.csv)
esp_1819.csv<-na.omit(esp_1819.csv)


esp_file <- rbind(esp_9394.csv<-esp_9394.csv[,c(1:8)],
                  esp_9495.csv<-esp_9495.csv[,c(1:8)],
                  esp_9596.csv<-esp_9596.csv[,c(1:8)],
                  esp_9697.csv<-esp_9697.csv[,c(1:8)],
                  esp_9798.csv<-esp_9798.csv[,c(1:8)],
                  esp_9899.csv<-esp_9899.csv[,c(1:8)],
                  esp_0001.csv<-esp_0001.csv[,c(1:8)],
                  esp_0102.csv<-esp_0102.csv[,c(1:8)],
                  esp_0203.csv<-esp_0203.csv[,c(1:8)],
                  esp_0304.csv<-esp_0304.csv[,c(1:8)],
                  esp_0405.csv<-esp_0405.csv[,c(1:8)],
                  esp_0506.csv<-esp_0506.csv[,c(1:8)],
                  esp_0607.csv<-esp_0607.csv[,c(1:8)],
                  esp_0708.csv<-esp_0708.csv[,c(1:8)],
                  esp_0809.csv<-esp_0809.csv[,c(1:8)],
                  esp_0910.csv<-esp_0910.csv[,c(1:8)],
                  esp_1011.csv<-esp_1011.csv[,c(1:8)],
                  esp_1112.csv<-esp_1112.csv[,c(1:8)],
                  esp_1213.csv<-esp_1213.csv[,c(1:8)],
                  esp_1314.csv<-esp_1314.csv[,c(1:8)],
                  esp_1415.csv<-esp_1415.csv[,c(1:8)],
                  esp_1516.csv<-esp_1516.csv[,c(1:8)],
                  esp_1617.csv<-esp_1617.csv[,c(1:8)],
                  esp_1718.csv<-esp_1718.csv[,c(1:8)],
                  esp_1819.csv<-esp_1819.csv[,c(1:8)])


esp_file$season <- as.factor(esp_file$season)
esp_file$total_goal <-esp_file$FTHG + esp_file$FTAG 
#################################################################################
setwd("C:/Users/sabar/OneDrive/Desktop/sports_analysis/italy")
temp = list.files(pattern="*.csv")
for (i in 1:length(temp)) assign(temp[i], read.csv(temp[i])[ ,c(1:7)])

ita_9394.csv$season<-"1993-1994"
ita_9495.csv$season<-"1994-1995"
ita_9596.csv$season<-"1995-1996"
ita_9697.csv$season<-"1996-1997"
ita_9798.csv$season<-"1997-1998"
ita_9899.csv$season<-"1998-1999"
ita_9900.csv$season<-"1999-2000"
ita_0001.csv$season<-"2000-2001"
ita_0102.csv$season<-"2001-2002"
ita_0203.csv$season<-"2002-2003"
ita_0304.csv$season<-"2003-2004"
ita_0405.csv$season<-"2004-2005"
ita_0506.csv$season<-"2005-2006"
ita_0607.csv$season<-"2006-2007"
ita_0708.csv$season<-"2007-2008"
ita_0809.csv$season<-"2008-2009"
ita_0910.csv$season<-"2009-2010"
ita_1011.csv$season<-"2010-2011"
ita_1112.csv$season<-"2011-2012"
ita_1213.csv$season<-"2012-2013"
ita_1314.csv$season<-"2013-2014"
ita_1415.csv$season<-"2014-2015"
ita_1516.csv$season<-"2015-2016"
ita_1617.csv$season<-"2016-2017"
ita_1718.csv$season<-"2017-2018"
ita_1819.csv$season<-"2018-2019"

ita_9394.csv<-na.omit(ita_9394.csv)
ita_9495.csv<-na.omit(ita_9495.csv)
ita_9596.csv<-na.omit(ita_9596.csv)
ita_9697.csv<-na.omit(ita_9697.csv)
ita_9798.csv<-na.omit(ita_9798.csv)
ita_9899.csv<-na.omit(ita_9899.csv)
ita_9900.csv<-na.omit(ita_9900.csv)
ita_0001.csv<-na.omit(ita_0001.csv)
ita_0102.csv<-na.omit(ita_0102.csv)
ita_0203.csv<-na.omit(ita_0203.csv)
ita_0304.csv<-na.omit(ita_0304.csv)
ita_0405.csv<-na.omit(ita_0405.csv)
ita_0506.csv<-na.omit(ita_0506.csv)
ita_0607.csv<-na.omit(ita_0607.csv)
ita_0708.csv<-na.omit(ita_0708.csv)
ita_0809.csv<-na.omit(ita_0809.csv)
ita_0910.csv<-na.omit(ita_0910.csv)
ita_1011.csv<-na.omit(ita_1011.csv)
ita_1112.csv<-na.omit(ita_1112.csv)
ita_1213.csv<-na.omit(ita_1213.csv)
ita_1314.csv<-na.omit(ita_1314.csv)
ita_1415.csv<-na.omit(ita_1415.csv)
ita_1516.csv<-na.omit(ita_1516.csv)
ita_1617.csv<-na.omit(ita_1617.csv)
ita_1718.csv<-na.omit(ita_1718.csv)
ita_1819.csv<-na.omit(ita_1819.csv)


ita_file <- rbind(ita_9394.csv<-ita_9394.csv[,c(1:8)],
                  ita_9495.csv<-ita_9495.csv[,c(1:8)],
                  ita_9596.csv<-ita_9596.csv[,c(1:8)],
                  ita_9697.csv<-ita_9697.csv[,c(1:8)],
                  ita_9798.csv<-ita_9798.csv[,c(1:8)],
                  ita_9899.csv<-ita_9899.csv[,c(1:8)],
                  ita_0001.csv<-ita_0001.csv[,c(1:8)],
                  ita_0102.csv<-ita_0102.csv[,c(1:8)],
                  ita_0203.csv<-ita_0203.csv[,c(1:8)],
                  ita_0304.csv<-ita_0304.csv[,c(1:8)],
                  ita_0405.csv<-ita_0405.csv[,c(1:8)],
                  ita_0506.csv<-ita_0506.csv[,c(1:8)],
                  ita_0607.csv<-ita_0607.csv[,c(1:8)],
                  ita_0708.csv<-ita_0708.csv[,c(1:8)],
                  ita_0809.csv<-ita_0809.csv[,c(1:8)],
                  ita_0910.csv<-ita_0910.csv[,c(1:8)],
                  ita_1011.csv<-ita_1011.csv[,c(1:8)],
                  ita_1112.csv<-ita_1112.csv[,c(1:8)],
                  ita_1213.csv<-ita_1213.csv[,c(1:8)],
                  ita_1314.csv<-ita_1314.csv[,c(1:8)],
                  ita_1415.csv<-ita_1415.csv[,c(1:8)],
                  ita_1516.csv<-ita_1516.csv[,c(1:8)],
                  ita_1617.csv<-ita_1617.csv[,c(1:8)],
                  ita_1718.csv<-ita_1718.csv[,c(1:8)],
                  ita_1819.csv<-ita_1819.csv[,c(1:8)])


ita_file$season <- as.factor(ita_file$season)
ita_file$total_goal <-ita_file$FTHG + ita_file$FTAG 
#################################################################################

