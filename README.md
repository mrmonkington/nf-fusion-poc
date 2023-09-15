# PoC workflow using Wave and Fusion for Bakta

This workflow aims to demonstrating a proof-of-concept workflow for
working with large static files in S3 that would typically be
too slow to copy when provisioning batch job instances.

It uses:

  - Nextflow Tower
  - Seqera's Wave container service
    - 'Sidecar' module Dockerfiles to specify image build
  - The FusionFS client made available by the Wave image build
  - AWS Batch as execution backend
  - Nextflow runtime parameters to configure input/output dirs


