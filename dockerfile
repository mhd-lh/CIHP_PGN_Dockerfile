FROM nvcr.io/nvidia/tensorflow:22.02-tf1-py3
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update; apt upgrade -y
RUN pip install scipy==1.7.3 opencv-python==4.5.5.62 protobuf==3.19.1 Pillow==9.0.1 matplotlib==3.5.1 tqdm
RUN git clone https://github.com/mhd-lh/CIHP_PGN.git
WORKDIR CIHP_PGN
RUN mkdir checkpoint
RUN chmod +x modelsdrive.sh
RUN sh modelsdrive.sh
RUN rm -rf datasets/*
RUN mkdir datasets/images
RUN mkdir datasets/output