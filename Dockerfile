FROM postman/newman:alpine

# Define o diretório de trabalho
WORKDIR /etc/newman

# Copia todos os arquivos do diretório insomnia-data para dentro do container
COPY insomnia-data /etc/newman/insomnia-data/

# Garante que os arquivos tenham permissões corretas
RUN chmod -R 644 /etc/newman/insomnia-data/*.json

# Define o comando de entrada para execução do Newman
ENTRYPOINT ["newman", "run"]

# Comando padrão para rodar uma coleção específica
CMD ["/etc/newman/insomnia-data/Tadeu-QualityEagles-Collection.json", "--globals", "/etc/newman/insomnia-data/Tadeu-QualityEagles-Globals.json"]
