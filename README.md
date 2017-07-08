# toolbox
This repo includes configuration for various different tools

## Jenkins
Runs the official Jenkins image from dockerhub.

I'm using Github to call the jenkins github-webhook when new changes arrive to build as fast as possible. But my Jenkins instance is not open to the internet. To solve that I use a nginx-proxy to proxy only to the github-webhook url.

The Jenkins instance builds docker images and somehow needs to be able to run Docker. My solution came from here: https://jpetazzo.github.io/2015/09/03/do-not-use-docker-in-docker-for-ci/. Basically you should not run a special docker daemon a contianer, rather bind the docker.sock to the container.
