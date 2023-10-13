FROM ubuntu:18.04

# Ubuntu packges
RUN apt-get update && apt-get install -y build-essential cpanminus wget \
  bioperl \
  libbio-samtools-perl \
  libbio-perl-perl \
  libappconfig-perl \
  libfile-which-perl \
  libfindbin-libs-perl \
  perl-modules \
  libstatistics-descriptive-perl \
  libio-compress-perl \
  libperlio-gzip-perl

RUN cpanm Bio::SearchIO::blastxml

# 3rd-party tools
RUN apt-get install -y bwa samtools ncbi-blast+ bedtools ssake

# installation of CAP3
RUN wget https://anaconda.org/bioconda/cap3/10.2011/download/linux-64/cap3-10.2011-h779adbc_3.tar.bz2
RUN tar jxvf cap3-10.2011-h779adbc_3.tar.bz2 bin/cap3 -C /usr/src/app

# set work directory
WORKDIR /usr/src/app

# copy project
COPY . /usr/src/app

# conf for docker env
COPY vfs.conf_docker /usr/src/app/vfs.conf

# adhoc fix for docker env
COPY include/BWAauto.pm_docker /usr/src/app/include/BWAauto.pm
COPY include/Essential.pm_docker /usr/src/app/include/Essential.pm
