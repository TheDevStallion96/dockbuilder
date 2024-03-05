# Install Zsh
RUN apt-get update && \
    apt-get install -y zsh && \
    rm -rf /var/lib/apt/lists/*

# Install Oh My Zsh
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Change the default shell to Zsh
SHELL ["/bin/zsh", "-c"]
