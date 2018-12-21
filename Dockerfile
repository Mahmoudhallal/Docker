FROM ubuntu
MAINTAINER Mahmoud Hallal <mahmoud.hallal@dbmr.unibe.ch>


RUN apt-get -qq update
RUN apt-get install -y wget git build-essential cmake unzip curl
RUN apt-get install -qqy python3-setuptools python3-docutils python3-flask
RUN apt-get install -y vim-tiny

RUN echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh && \
    wget --quiet https://repo.continuum.io/miniconda/Miniconda3-4.3.14-Linux-x86_64.sh -O ~/miniconda.sh && \
    /bin/bash ~/miniconda.sh -b -p /opt/conda && \
    rm ~/miniconda.sh


ENV PATH /opt/conda/bin:$PATH
RUN conda install -c bioconda -c conda-forge snakemake
RUN apt-get install r-base-dev

WORKDIR /home/user/

RUN git clone https://github.com/Mahmoudhallal/KAEA.git

WORKDIR /home/user/KAEA/snakemake

#RUN ln -sf /bin/bash /bin/sh
RUN conda env create --name snakemake-general --file environment.yaml

#RUN snakemake --use-conda

