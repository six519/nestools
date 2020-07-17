FROM fedora:30
RUN yum -y install wget wine unzip
WORKDIR /app
ADD nesst.zip /app
ADD yy-chr.zip /app
ADD famitracker.zip /app
RUN unzip nesst.zip
RUN unzip yy-chr.zip
RUN unzip -o famitracker.zip
RUN rm nesst.zip
RUN rm yy-chr.zip
RUN rm famitracker.zip
CMD ["bash"]
