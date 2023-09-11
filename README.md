# Projeto_RoxPartner
Esse projeto tem o intuito de realizar ETL em um conjunto de dados de uma empresa de bicicletas, extraindo os dados do Github e inserindo no Azure SQL Dabase.\
# 1-Extração de dados
Primeiramente, foi criada uma tarefa no Azure DataFactory para extrair os dados armazenados no Github e armazena-los no Azure Blob Storage. Para tanto, foi feita a criação de datasets de origem e destino, bem como do linked service para conecta-los. 
