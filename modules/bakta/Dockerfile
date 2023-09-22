FROM mambaorg/micromamba

RUN micromamba install -n base -y bakta=1.8.1 -c defaults -c bioconda -c conda-forge
RUN micromamba clean -afy
USER root
RUN apt update && apt install -y procps

#ARG MAMBA_DOCKERFILE_ACTIVATE=1  # needed for any further commands exec'd here
