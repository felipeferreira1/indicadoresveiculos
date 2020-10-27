#################################################################################################################
#GECON
#ÁREA:CRÉDITO
#PLANILHA INDICADORES DE CRÉDITO PARA VEÍCULOS
#FELIPE SIMPLÍCIO FERREIRA
#DATA:26-04-2019
#################################################################################################################

#PACOTES REQUERIDOS:
#INSTALAR QUANDO NECESSÁRIO
#EXEMPLO:install.packages("pryr")
#library(xlsx)
library(RCurl)
library(XML)

#DEFINIR PASTAS DE RESULTADOS:
getwd()
setwd("C:\\Users\\User\\Documents")

#ATUALIZAR DATA (alinhar com primeiro mes dos dados)

data1="01/01/2013"
data2 = format(Sys.time(), "%d/%m/%Y")
data3= format(Sys.time(), "%Y.%m")

#1)Pessoas Jurídicas - Recursos livres
serie=c(20553, 20556, 20581, 20584, 20645, 20648, 20673, 20676, 20728, 20731, 20749, 20752, 20864, 20867, 20886, 20889, 20938, 20941, 20963, 20966, 21017, 21020, 21042, 21045, 21096, 21099, 21121, 21124, 25447, 25450, 25471, 25474, 27658, 27660, 27680, 27682, 27735)


vec_ind1=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[1],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind2=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[2],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind3=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[3],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind4=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[4],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind5=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[5],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind6=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[6],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind7=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[7],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind8=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[8],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind9=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[9],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind10=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[10],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind11=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[11],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind12=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[12],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind13=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[13],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind14=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[14],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind15=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[15],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind16=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[16],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind17=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[17],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind18=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[18],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind19=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[19],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind20=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[20],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind21=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[21],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind22=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[22],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind23=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[23],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind24=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[24],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind25=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[25],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind26=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[26],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind27=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[27],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind28=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[28],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind29=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[29],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind30=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[30],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind31=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[31],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind32=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[32],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind33=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[33],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind34=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[34],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind35=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[35],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind36=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[36],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")
vec_ind37=read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",serie[37],"/dados?formato=csv&dataInicial=",data1,"&dataFinal=",data2,sep="")),sep=";")

base=cbind(vec_ind1,vec_ind2[,2],vec_ind3[,2],vec_ind4[,2],vec_ind5[,2], vec_ind6[,2], vec_ind7[,2], vec_ind8[,2], vec_ind9[,2], vec_ind10[,2],vec_ind11[,2],vec_ind12[,2],vec_ind13[,2], vec_ind14[,2], vec_ind15[,2], vec_ind16[,2], vec_ind17[,2], vec_ind18[,2],vec_ind19[,2], vec_ind20[,2], vec_ind21[,2], vec_ind22[,2], vec_ind23[,2], vec_ind24[,2],vec_ind25[,2],vec_ind26[,2],vec_ind27[,2], vec_ind28[,2], vec_ind29[,2], vec_ind30[,2], vec_ind31[,2], vec_ind32[,2],vec_ind33[,2], vec_ind34[,2], vec_ind35[,2], vec_ind36[,2], vec_ind37[,2])
rm(list=objects(pattern="vec_ind[0-37]"))
names(base)=c("Data", "20553 - Saldo da carteira de crédito com recursos livres - Pessoas jurídicas - Aquisição de veículos - R$ (milhões", "20556 - Saldo da carteira de crédito com recursos livres - Pessoas jurídicas - Arrendamento mercantil de veículos - R$ (milhões)", "20581 - Saldo da carteira de crédito com recursos livres - Pessoas físicas - Aquisição de veículos - R$ (milhões)", "20584 - Saldo da carteira de crédito com recursos livres - Pessoas físicas - Arrendamento mercantil de veículos - R$ (milhões)", "20645 - Concessões de crédito com recursos livres - Pessoas jurídicas - Aquisição de veículos - R$ (milhões)", "20648 - Concessões de crédito com recursos livres - Pessoas jurídicas - Arrendamento mercantil de veículos - R$ (milhões)", "20673 - Concessões de crédito com recursos livres - Pessoas físicas - Aquisição de veículos - R$ (milhões)",  "20676 - Concessões de crédito com recursos livres - Pessoas físicas - Arrendamento mercantil de veículos - R$ (milhões)" , "20728 - Taxa média de juros das operações de crédito com recursos livres - Pessoas jurídicas - Aquisição de veículos - % a.a.",
              "20731 - Taxa média de juros das operações de crédito com recursos livres - Pessoas jurídicas - Arrendamento mercantil de veículos - % a.a.", "20749 - Taxa média de juros das operações de crédito com recursos livres - Pessoas físicas - Aquisição de veículos - % a.a.", "20752 - Taxa média de juros das operações de crédito com recursos livres - Pessoas físicas - Arrendamento mercantil de veículos - % a.a.", "20864 - Prazo médio das concessões de crédito com recursos livres - Pessoas jurídicas - Aquisição de veículos - Meses", "20867 - Prazo médio das concessões de crédito com recursos livres - Pessoas jurídicas - Arrendamento mercantil de veículos - Meses", "20886 - Prazo médio das concessões de crédito com recursos livres - Pessoas físicas - Aquisição de veículos - Meses", "20889 - Prazo médio das concessões de crédito com recursos livres - Pessoas físicas - Arrendamento mercantil de veículos - Meses", "20938 - Prazo médio da carteira de crédito com recursos livres - Pessoas jurídicas - Aquisição de veículos - Meses", "20941 - Prazo médio da carteira de crédito com recursos livres - Pessoas jurídicas - Arrendamento mercantil de veículos - Meses", "20963 - Prazo médio da carteira de crédito com recursos livres - Pessoas físicas - Aquisição de veículos - Meses",
              "20966 - Prazo médio da carteira de crédito com recursos livres - Pessoas físicas - Arrendamento mercantil de veículos - Meses", "21017 - Percentual da carteira de crédito com recursos livres com atraso entre 15 e 90 dias - Pessoas jurídicas - Aquisição de veículos - %", "21020 - Percentual da carteira de crédito com recursos livres com atraso entre 15 e 90 dias - Pessoas jurídicas - Arrendamento mercantil de veículos - %", "21042 - Percentual da carteira de crédito com recursos livres com atraso entre 15 e 90 dias - Pessoas físicas - Aquisição de veículos - %", "21045 - Percentual da carteira de crédito com recursos livres com atraso entre 15 e 90 dias - Pessoas físicas - Arrendamento mercantil de veículos - %", "21096 - Inadimplência da carteira de crédito com recursos livres - Pessoas jurídicas - Aquisição de veículos - %", "21099 - Inadimplência da carteira de crédito com recursos livres - Pessoas jurídicas - Arrendamento mercantil de veículos - %", "21121 - Inadimplência da carteira de crédito com recursos livres - Pessoas físicas - Aquisição de veículos - %", "21124 - Inadimplência da carteira de crédito com recursos livres - Pessoas físicas - Arrendamento mercantil de veículos - %",
              "25447 - Taxa média mensal de juros das operações de crédito com recursos livres - Pessoas jurídicas - Aquisição de veículos - % a.m.", "25450 - Taxa média mensal de juros das operações de crédito com recursos livres - Pessoas jurídicas - Arrendamento mercantil de veículos - % a.m.	", "25471 - Taxa média mensal de juros das operações de crédito com recursos livres - Pessoas físicas - Aquisição de veículos - % a.m.", "25474 - Taxa média mensal de juros das operações de crédito com recursos livres - Pessoas físicas - Arrendamento mercantil de veículos - % a.m.", "27658 - Indicador de Custo do Crédito - ICC - Recursos Livres - Pessoas jurídicas - Aquisição de veículos - % a.a.", "27660 - Indicador de Custo do Crédito - ICC - Recursos Livres - Pessoas jurídicas - Arrendamento mercantil de veículos - % a.a.", "27680 - Indicador de Custo do Crédito - ICC - Recursos Livres - Pessoas físicas - Aquisição de veículos - % a.a.", "27682 - Indicador de Custo do Crédito - ICC - Recursos Livres - Pessoas físicas - Arrendamento mercantil de veículos - % a.a.", "27735 - Saldo das operações de crédito por atividade econômica - Geral - veículos automotores - R$ (milhões)")

write.csv2(base,"Indicadores de credito - veiculos.csv", row.names = F)
