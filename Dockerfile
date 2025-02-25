FROM postman/newman:alpine

# Define o diretório de trabalho
WORKDIR /etc/newman

# Copia todos os arquivos do diretório insomnia-data para dentro do container
COPY insomnia-data /etc/newman/

# Garante que os arquivos tenham permissões corretas
RUN chmod 644 /etc/newman/*.json

# Define o comando de entrada para execução do Newman
ENTRYPOINT ["newman", "run"]

# Comando padrão para rodar uma coleção específica
CMD ["/etc/newman/Tadeu-QualityEagles-Collection.json", "--globals", "/etc/newman/Tadeu-QualityEagles-Globals.json"]
