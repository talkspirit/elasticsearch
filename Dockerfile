FROM elasticsearch:1.7.3

# Print "Customization Elasticsearh for talkSpirit"

#elasticsearch plugins
RUN /usr/share/elasticsearch/bin/plugin -install royrusso/elasticsearch-HQ
RUN /usr/share/elasticsearch/bin/plugin -install mobz/elasticsearch-head
RUN /usr/share/elasticsearch/bin/plugin -install karmi/elasticsearch-paramedic
RUN /usr/share/elasticsearch/bin/plugin -install polyfractal/elasticsearch-segmentspy
RUN /usr/share/elasticsearch/bin/plugin -install polyfractal/elasticsearch-inquisitor
RUN  curl -s --insecure https://download.elasticsearch.org:443/elasticsearch/elasticsearch-mapper-attachments/elasticsearch-mapper-attachments-2.7.1.zip -o /tmp/plugin.zip &&  unzip /tmp/plugin.zip -d /usr/share/elasticsearch/plugins/mapper-attachments && rm /tmp/plugin.zip
#RUN /usr/share/elasticsearch/bin/plugin -install elasticsearch/elasticsearch-mapper-attachments/2.7.1
RUN /usr/share/elasticsearch/bin/plugin -install lukas-vlcek/bigdesk
RUN /usr/share/elasticsearch/bin/plugin -install lmenezes/elasticsearch-kopf
