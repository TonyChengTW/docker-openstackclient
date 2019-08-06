FROM ubuntu:18.04
MAINTAINER tony.cheng@104.com.tw

# Install python, virtualenv
RUN apt-get update && apt install -y \
python python-pip wget curl git tree net-tools vim

RUN pip install virtualenv

COPY .bashrc /root
COPY install_openstackclient.sh /root
COPY admin-openrc.sh /root
COPY upper-constraints.txt /root
RUN /root/install_openstackclient.sh

ENTRYPOINT ["/bin/bash"]
