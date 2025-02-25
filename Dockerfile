FROM postman/newman:alpine
WORKDIR /etc/newman
COPY *.json .
ENTRYPOINT ["newman", "run"]
CMD ["insomnia-data/Tadeu-QualityEagles-Collection.json", "--globals", "insomnia-data/Tadeu-QualityEagles-Globals.json"]
