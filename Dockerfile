FROM sebvaucher/sgx-base

WORKDIR /root

#install the java vm
RUN apt-get -y update
RUN apt-get -y install gnupg2 software-properties-common
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9
RUN apt-add-repository 'deb http://repos.azulsystems.com/ubuntu stable main'
RUN apt-get -y update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install zulu-11
