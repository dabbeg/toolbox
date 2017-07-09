FROM jenkins:2.60.1
USER root

# Installing nodejs
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash - && \
    apt-get update && apt-get install -y nodejs

# Installing yarn as node package manager
RUN apt-get update && apt-get install -y apt-transport-https && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

# Install the docker dependancies and client
RUN apt-get install -y \
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
