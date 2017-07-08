FROM jenkins:2.60.1
USER root

# Install the docker dependancies and client
RUN apt-get update && \
    apt-get install -y \
    iptables \
    init-system-helpers \
    libapparmor1 \
    libltdl7 && \
    curl -O "https://download.docker.com/linux/debian/dists/jessie\
             /pool/stable/amd64/docker-ce_17.03.0~ce-0~debian-jessie_amd64.deb" && \
    dpkg -i docker-ce_17.03.0~ce-0~debian-jessie_amd64.deb && \
    rm docker-ce_17.03.0~ce-0~debian-jessie_amd64.deb 

# Change groupid of docker group in container to match groupid of docker group in host
# and adding jenkins user to docker group to give permission to run the socket
RUN groupmod -g 993 docker && \
    usermod -aG docker jenkins
USER jenkins
