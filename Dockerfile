FROM ruimarinho/bitcoin-core:0.19.0.1

EXPOSE 18443
EXPOSE 18444

ADD init-node-0.sh /tmp
ADD init-node-1.sh /tmp
RUN chmod 777 /tmp/init-node-0.sh
RUN chmod 777 /tmp/init-node-1.sh

CMD /tmp/init-node-1.sh && /tmp/init-node-0.sh
