FROM ubuntu

RUN useradd -m th
RUN echo 'th: ' | chpasswd || echo "Failed to set empty space as password"
# let th can run sudo xxxx
RUN usermod -aG sudo th
WORKDIR /home/th
USER th

WORKDIR /home/th/aosp
