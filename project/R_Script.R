# Instalando Pacotes
install.packages("esquisse")
install.packages("ggplot2")
install.packages("RMySQL")

# Carregando pacotes
library(ggplot2)
library(RMySQL)

# Conexão com o Banco de Dados
conexao <- dbConnect(RMySQL::MySQL(),
                     host = "localhost",
                     user = "aluno",
                     password = "sptech",
                     dbname = "ScriptGCT")
summary(conexao)

# Listando tabelas
dbListTables(conexao)
df <- data.frame(
  dbGetQuery(
    conexao, 
    "SELECT * FROM vw_registro_geral WHERE fk_servidor = 1"
    )
  )
# rm(df)
df

lm()