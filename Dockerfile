FROM continuumio/miniconda3  

# docker build -t vanessa/snakemake.scif .  

RUN conda install -c bioconda -c conda-forge snakemake
#ADD snakemake_tutorial.scif / 
#ADD Snakefile / 
#ADD config.yaml /  
#ENV PATH /opt/conda/bin:$PATH  RUN apt-get update && apt-get -y install build-essential git valgrind time  

# Install scif, snakemake  RUN /opt/conda/bin/pip install scif && \
# /opt/conda/bin/pip install snakemake==4.4.0 && \
#  /opt/conda/bin/pip install docutils==0.14 && \
#   /opt/conda/bin/scif install /snakemake_tutorial.scif  
   

#ENTRYPOINT ["scif"]