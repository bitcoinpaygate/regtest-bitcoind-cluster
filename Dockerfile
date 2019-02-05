FROM ruimarinho/bitcoin-core:0.16.3

EXPOSE 18443
EXPOSE 18444

ADD init-node.sh /tmp
ADD init-node-txindex.sh /tmp
RUN chmod 777 /tmp/init-node.sh
RUN chmod 777 /tmp/init-node-txindex.sh

CMD /tmp/init-node-txindex.sh && /tmp/init-node.sh
