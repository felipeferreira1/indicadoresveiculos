#################################################################################################################
#GECON
#�REA:CR�DITO
#PLANILHA INDICADORES DE CR�DITO PARA VE�CULOS
#FELIPE SIMPL�CIO FERREIRA
#DATA:26-04-2019
#################################################################################################################

#PACOTES REQUERIDOS:
#INSTALAR QUANDO NECESS�RIO
#EXEMPLO:install.packages("pryr")
#library(xlsx)
library(RCurl)
library(XML)
library(rio)

#DEFINIR PASTAS DE RESULTADOS:
getwd()
setwd("C:\\Users\\User\\Documents")

#Criando fun��o para coleta de s�ries
coleta_dados_sgs = function(series,datainicial="01/03/2011", datafinal = format(Sys.time(), "%d/%m/%Y")){
  #Argumentos: vetor de s�ries, datainicial que pode ser manualmente alterada e datafinal que automaticamente usa a data de hoje
  #Cria estrutura de repeti��o para percorrer vetor com c�digos de s�ries e depois juntar todas em um �nico dataframe
  for (i in 1:length(series)){
    dados = read.csv(url(paste("http://api.bcb.gov.br/dados/serie/bcdata.sgs.",series[i],"/dados?formato=csv&dataInicial=",datainicial,"&dataFinal=",datafinal,sep="")),sep=";")
    dados[,-1] = as.numeric(gsub(",",".",dados[,-1])) #As colunas do dataframe em objetos num�ricos exceto a da data
    nome_coluna = series[i] #Nomeia cada coluna do dataframe com o c�digo da s�rie
    colnames(dados) = c('data', nome_coluna)
    nome_arquivo = paste("dados", i, sep = "") #Nomeia os v�rios arquivos intermedi�rios que s�o criados com cada s�rie
    assign(nome_arquivo, dados)
    
    if(i==1)
      base = dados1 #Primeira repeti��o cria o dataframe
    else
      base = merge(base, dados, by = "data", all = T) #Demais repeti��es agregam colunas ao dataframe criado
    print(paste(i, length(series), sep = '/')) #Printa o progresso da repeti��o
  }
  
  base$data = as.Date(base$data, "%d/%m/%Y") #Transforma coluna de data no formato de data
  base = base[order(base$data),] #Ordena o dataframe de acordo com a data
  return(base)
}

#Coletando s�ries
series=c(20553, 20556, 20581, 20584, 20645, 20648, 20673, 20676, 20728, 20731, 20749, 20752, 20864, 20867, 20886, 20889, 20938, 20941, 20963, 20966, 21017, 21020, 21042, 21045, 21096, 21099, 21121, 21124, 25447, 25450, 25471, 25474, 27658, 27660, 27680, 27682, 27735)

base <- coleta_dados_sgs(series)

names(base)=c("Data", "20553 - Saldo da carteira de cr�dito com recursos livres - Pessoas jur�dicas - Aquisi��o de ve�culos - R$ (milh�es", "20556 - Saldo da carteira de cr�dito com recursos livres - Pessoas jur�dicas - Arrendamento mercantil de ve�culos - R$ (milh�es)", "20581 - Saldo da carteira de cr�dito com recursos livres - Pessoas f�sicas - Aquisi��o de ve�culos - R$ (milh�es)", "20584 - Saldo da carteira de cr�dito com recursos livres - Pessoas f�sicas - Arrendamento mercantil de ve�culos - R$ (milh�es)", "20645 - Concess�es de cr�dito com recursos livres - Pessoas jur�dicas - Aquisi��o de ve�culos - R$ (milh�es)", "20648 - Concess�es de cr�dito com recursos livres - Pessoas jur�dicas - Arrendamento mercantil de ve�culos - R$ (milh�es)", "20673 - Concess�es de cr�dito com recursos livres - Pessoas f�sicas - Aquisi��o de ve�culos - R$ (milh�es)",  "20676 - Concess�es de cr�dito com recursos livres - Pessoas f�sicas - Arrendamento mercantil de ve�culos - R$ (milh�es)" , "20728 - Taxa m�dia de juros das opera��es de cr�dito com recursos livres - Pessoas jur�dicas - Aquisi��o de ve�culos - % a.a.",
              "20731 - Taxa m�dia de juros das opera��es de cr�dito com recursos livres - Pessoas jur�dicas - Arrendamento mercantil de ve�culos - % a.a.", "20749 - Taxa m�dia de juros das opera��es de cr�dito com recursos livres - Pessoas f�sicas - Aquisi��o de ve�culos - % a.a.", "20752 - Taxa m�dia de juros das opera��es de cr�dito com recursos livres - Pessoas f�sicas - Arrendamento mercantil de ve�culos - % a.a.", "20864 - Prazo m�dio das concess�es de cr�dito com recursos livres - Pessoas jur�dicas - Aquisi��o de ve�culos - Meses", "20867 - Prazo m�dio das concess�es de cr�dito com recursos livres - Pessoas jur�dicas - Arrendamento mercantil de ve�culos - Meses", "20886 - Prazo m�dio das concess�es de cr�dito com recursos livres - Pessoas f�sicas - Aquisi��o de ve�culos - Meses", "20889 - Prazo m�dio das concess�es de cr�dito com recursos livres - Pessoas f�sicas - Arrendamento mercantil de ve�culos - Meses", "20938 - Prazo m�dio da carteira de cr�dito com recursos livres - Pessoas jur�dicas - Aquisi��o de ve�culos - Meses", "20941 - Prazo m�dio da carteira de cr�dito com recursos livres - Pessoas jur�dicas - Arrendamento mercantil de ve�culos - Meses", "20963 - Prazo m�dio da carteira de cr�dito com recursos livres - Pessoas f�sicas - Aquisi��o de ve�culos - Meses",
              "20966 - Prazo m�dio da carteira de cr�dito com recursos livres - Pessoas f�sicas - Arrendamento mercantil de ve�culos - Meses", "21017 - Percentual da carteira de cr�dito com recursos livres com atraso entre 15 e 90 dias - Pessoas jur�dicas - Aquisi��o de ve�culos - %", "21020 - Percentual da carteira de cr�dito com recursos livres com atraso entre 15 e 90 dias - Pessoas jur�dicas - Arrendamento mercantil de ve�culos - %", "21042 - Percentual da carteira de cr�dito com recursos livres com atraso entre 15 e 90 dias - Pessoas f�sicas - Aquisi��o de ve�culos - %", "21045 - Percentual da carteira de cr�dito com recursos livres com atraso entre 15 e 90 dias - Pessoas f�sicas - Arrendamento mercantil de ve�culos - %", "21096 - Inadimpl�ncia da carteira de cr�dito com recursos livres - Pessoas jur�dicas - Aquisi��o de ve�culos - %", "21099 - Inadimpl�ncia da carteira de cr�dito com recursos livres - Pessoas jur�dicas - Arrendamento mercantil de ve�culos - %", "21121 - Inadimpl�ncia da carteira de cr�dito com recursos livres - Pessoas f�sicas - Aquisi��o de ve�culos - %", "21124 - Inadimpl�ncia da carteira de cr�dito com recursos livres - Pessoas f�sicas - Arrendamento mercantil de ve�culos - %",
              "25447 - Taxa m�dia mensal de juros das opera��es de cr�dito com recursos livres - Pessoas jur�dicas - Aquisi��o de ve�culos - % a.m.", "25450 - Taxa m�dia mensal de juros das opera��es de cr�dito com recursos livres - Pessoas jur�dicas - Arrendamento mercantil de ve�culos - % a.m.	", "25471 - Taxa m�dia mensal de juros das opera��es de cr�dito com recursos livres - Pessoas f�sicas - Aquisi��o de ve�culos - % a.m.", "25474 - Taxa m�dia mensal de juros das opera��es de cr�dito com recursos livres - Pessoas f�sicas - Arrendamento mercantil de ve�culos - % a.m.", "27658 - Indicador de Custo do Cr�dito - ICC - Recursos Livres - Pessoas jur�dicas - Aquisi��o de ve�culos - % a.a.", "27660 - Indicador de Custo do Cr�dito - ICC - Recursos Livres - Pessoas jur�dicas - Arrendamento mercantil de ve�culos - % a.a.", "27680 - Indicador de Custo do Cr�dito - ICC - Recursos Livres - Pessoas f�sicas - Aquisi��o de ve�culos - % a.a.", "27682 - Indicador de Custo do Cr�dito - ICC - Recursos Livres - Pessoas f�sicas - Arrendamento mercantil de ve�culos - % a.a.", "27735 - Saldo das opera��es de cr�dito por atividade econ�mica - Geral - ve�culos automotores - R$ (milh�es)")

#Exportando s�ries
write.csv2(base,"Indicadores de credito - veiculos(fonte).csv", row.names = F)
export(base, "Indicadores de credito - veiculos(fonte).xlsx")
