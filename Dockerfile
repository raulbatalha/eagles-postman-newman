FROM postman/newman:alpine
WORKDIR /etc/newman
# COPY *.json .
COPY insomnia-data/*.json .
ENTRYPOINT ["newman", "run"]
CMD ["Tadeu-QualityEagles-Collection.json", "--globals", "Tadeu-QualityEagles-Globals.json"]
