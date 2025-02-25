FROM postman/newman:alpine
WORKDIR /etc/newman
COPY *.json .
ENTRYPOINT ["newman", "run"]
CMD ["Tadeu-QualityEagles-Collection.json", "--globals", "Tadeu-QualityEagles-Globals.json"]
