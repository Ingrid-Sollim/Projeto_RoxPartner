# Projeto_RoxPartner
Esse projeto tem o intuito de realizar ETL em um conjunto de dados de uma empresa de bicicletas, extraindo os dados do Github e inserindo no Azure SQL Dabase.\
# 1-Extração de dados
Primeiramente, foi criada uma tarefa no Azure DataFactory para extrair os dados armazenados no Github e armazena-los no Azure Blob Storage. Para tanto, foi feita a criação de datasets de origem e destino, bem como do linked service para conecta-los. 

# 2-Processamento de dados
Posteriormente, foi feito o tratamento de dados com uso do databricks e feita inserção dos dados no banco de dados do Azure SQL.

![image](https://github.com/Ingrid-Sollim/Projeto_RoxPartner/assets/119446486/88fe6a3d-365f-4c53-959e-69470004a0db)

