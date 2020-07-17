FROM fedora:30
RUN yum -y install wget wine unzip
WORKDIR /app
ADD nesst.zip /app
ADD yy-chr.zip /app
RUN unzip nesst.zip
RUN unzip yy-chr.zip
CMD ["bash"]
