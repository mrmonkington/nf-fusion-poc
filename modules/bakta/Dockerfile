# Lightweight Ubuntu 20 w/ mamba
FROM condaforge/mambaforge

# Create working directory
ENV PROJECT_DIR app
RUN mkdir $PROJECT_DIR
WORKDIR $PROJECT_DIR

# Update channels
RUN conda config --add channels defaults
RUN conda config --add channels bioconda
RUN conda config --add channels conda-forge

# Pull software
RUN mamba install -y awscliv2 bakta=1.8.1
RUN mamba clean -afy
