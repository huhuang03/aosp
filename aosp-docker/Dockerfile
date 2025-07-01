FROM ubuntu:24.04

RUN apt-get update && apt-get install -y git-core gnupg flex bison build-essential zip curl zlib1g-dev libc6-dev-i386 x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig repo

ARG git_username="huhuang03"
ARG git_email="huhuang03@gmail.com"

ENV GIT_USERNAME=${git_username}
ENV GIT_EMAIL=${git_email}

RUN git config --global user.name "${GIT_USERNAME}"
RUN git config --global user.email "${GIT_EMAIL}"

COPY startup.sh /usr/local/bin/startup.sh
RUN chmod +x /usr/local/bin/startup.sh
ENTRYPOINT ["/usr/local/bin/startup.sh"]

CMD ["bash"]
