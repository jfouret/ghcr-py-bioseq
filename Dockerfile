FROM ubuntu:noble-20240904.1

LABEL org.opencontainers.image.title="Python-BioSeq"
LABEL org.opencontainers.image.authors="Julien FOURET"
LABEL org.opencontainers.image.description="Python for bioinformatic NGS analysis including biopython, pysam, h5py and others."
LABEL org.opencontainers.image.vendor="Nexomis"

RUN export DEBIAN_FRONTEND=noninteractive \
  && apt-get update \
  && apt-get -y install --no-install-recommends \
    python3 \
    python3-biopython \
    python3-scipy \
    python3-yaml \
    python3-pandas \
    python3-numpy \
    python3-pysam \
    python3-matplotlib \
    python3-seaborn \
    python3-bcbio-gff \
    python3-h5py \
    python3-vcf \
    python3-pybedtools \ 
    python3-pandas \
    bash \
    wget \
    ca-certificates \   
  && rm -rf /var/lib/apt/lists/*