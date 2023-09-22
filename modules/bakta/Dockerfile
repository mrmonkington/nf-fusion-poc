FROM mambaorg/micromamba

RUN micromamba install -y bioconda:bakta=1.8.2 -c defaults -c bioconda -c conda-forge
RUN micromamba clean -afy
#ARG MAMBA_DOCKERFILE_ACTIVATE=1  # needed for any further commands exec'd here
