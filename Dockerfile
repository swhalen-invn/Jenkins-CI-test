FROM ubuntu:20.04
USER root

RUN apt-get update && \
    apt-get -qq install -y \
    git \
    make 

WORKDIR project
USER root
COPY build.sh .
RUN chmod 777 /project
RUN chmod 777 ./build.sh


ARG USER_ID
ARG GROUP_ID
#ARG GROUP_IDS
RUN addgroup --gid $GROUP_ID user
RUN addgroup --gid 999 dock
RUN addgroup --gid 30001 comp04_gen
RUN addgroup --gid 30002 comp04_adm
RUN adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID user
RUN usermod -G $GROUP_ID user
USER user

ENV PATH="${PATH}"

CMD ["/bin/bash", "-c", "./build.sh"]
