FROM elasticsearch:7.17.20

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch ingest-attachment
