FROM codercom/code-server:3.10.2

USER coder

# Install some necessary dev tools
RUN sudo apt-get install -y \
    build-essentials \
    python3 \
    python3-pip
