library(readr)

getwd()
ls()
setwd("~Desktop/2006 A 2017")

Emerg2 <- read.csv2("~/Rstudio/emerg2.csv",
                   header = TRUE, 
                   quote="\"", 
                   stringsAsFactors= TRUE, 
                   strip.white = TRUE)


Proc <- read.csv2("~/Rstudio/procemerg.csv",
                   header = TRUE, 
                   quote="\"", 
                   stringsAsFactors= TRUE, 
                   strip.white = TRUE)


Censo2 <- read.csv2("~/Rstudio/censo2.csv",
                   header = TRUE, 
                   quote="\"", 
                   stringsAsFactors= TRUE, 
                   strip.white = TRUE)

CID <- subset(Censo, select = c("CID.", "CID..1", "Dt.Interna"))


### Arrumando dados DF Emerg: 

Emerg <- subset(Emerg, select = c(BE, DIA, MES, ANO, S, DT.ENTR, DT.SAIDA, HR.SAIDA, CID.1, CID.2, CID, CID.3, CID.4, COD.MUNC, DESCRICAO, AP, DESC.MOT))

Censo <- subset(Censo, select = c(Registro, Ida, Id, Id.1, Dt.Nascime, S, Dt.Interna, Dt.Alta, Tempo, CID., CID..1,CID..2))

Proc <- subset()

##Código CID Arma de fogo

library(dplyr)


CIDPAF <- c("X72","X720","X721","X722","X723","X724","X725","X726","X727","X728","X729",
            "X73","X730","X731","X732","X733","X734","X735","X736","X737","X738",
            "X739","X74","X740","X741","X742","X743","X744","X745","X746","X747",
            "X748","X749","X93","X930","X931","X932","X933","X934","X935","X936",
            "X937","X938","X939","X94","X940","X941","X942","X943","X944","X945",
            "X946","X947","X948","X949","X95","X950","X951","X952","X953","X954",
            "X955","X956","X957","X958","X959","Y23","Y230","Y231","Y232","Y233",
            "Y234","Y235","Y236","Y237","Y238","Y239","Y24","Y240","Y241","Y242",
            "Y243","Y244","Y245","Y246","Y247","Y248","Y249")

Desc <- c("FERIMENTO POR ARMA DE FOGO")

CID9PAF <- c("E922", "E955", "E965", "E970", "E985", "E524")


CID. <- filter(Censo, CID. %in% CIDPAF)

CID..1 <- filter(Censo, CID..1 %in% CIDPAF)

CID..2 <- filter(Censo, CID..2 %in% CIDPAF)

CID.1 <- filter(Emerg, CID.1 %in% CIDPAF)

CID.2 <- filter(Emerg, CID.2 %in% CIDPAF)

CID <- filter(Emerg, CID %in% CIDPAF)

CID.3 <- filter(Emerg, CID.3 %in% CIDPAF)

CID.4 <- filter(Emerg, CID.4 %in% CIDPAF)

ARMA <- filter(Emerg, DESC.MOT %in% Desc)

CID.19 <- filter(Emerg, CID.1 %in% CID9PAF)

CID.29 <- filter(Emerg, CID.2 %in% CID9PAF)

CID9 <- filter(Emerg, CID %in% CID9PAF)

CID.39 <- filter(Emerg, CID.3 %in% CID9PAF)

CID.49 <- filter(Emerg, CID.4 %in% CID9PAF)


E 922 Acidentes causados por arma de fogo.
E 955 Suicídio por lesão auto-infligida por armas de fogo e explosivos.
E 965 Ataque com arma de fogo ou explosivos.
E 970 Lesão por intervenção legal com armas de fogo.
E 985 Lesão por armas de fogo ou explosivos, da qual se ignora se foi acidental ou intencionalmente infligida.
E 524 Acidentes causados por arma de fogo



Emerg2 <- read.csv("~/Rstudio/emerg2.csv",
                    header = TRUE, 
                    quote="\"", 
                    stringsAsFactors= TRUE, 
                    strip.white = TRUE)


install.packages("ColByCol")

library("LaF")
library("ColByCol")

 getwd()
 setwd("~/Rstudio")
Emerg2 <- laf_open_csv(filename="emerg2.csv", 
                                    column_types=c("integer", "categorical", "double", "string"))

x<- read.csv.ffdf(file="~/Rstudio/emerg2.csv", header=TRUE, VERBOSE=TRUE, first.rows=10000, next.rows=50000, colClasses=NA)

header = TRUE, 
quote="\"", 
stringsAsFactors= TRUE, 
strip.white = TRUE)



bigfile.sample <- read.csv("~/Rstudio/censo2.csv",  
                           header = F, 
                           quote="\"", 
                           stringsAsFactors= F, 
                           strip.white = F, nrows=20)  

bigfile.colclass <- sapply(bigfile.sample,class)

bigfile.raw <- tbl_df(read.csv("~/Rstudio/emerg2.csv", 
                               stringsAsFactors=TRUE, header=T,nrow=10000, 
                               colClasses=attendance.colclass, comment.char="")) 
