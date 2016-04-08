FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y sudo
RUN apt-get install -y zsh git tig git-svn curl wget ccache xz-utils
RUN useradd -ms /usr/bin/zsh aleks && echo "aleks:docker" | chpasswd && adduser aleks sudo

# neovim installation
#RUN apt-get install -y software-properties-common
#RUN add-apt-repository -y ppa:neovim-ppa/unstable
#RUN apt-get update
#RUN apt-get install -y neovim
#RUN apt-get install -y python-dev python-pip python3-dev python3-pip

USER aleks
WORKDIR /home/aleks

#RUN cat /dev/zero | ssh-keygen -q -N ""
# Get my config
RUN git clone https://github.com/ayeganov/my_configs.git

# Oh-my-zsh install
RUN git clone https://github.com/robbyrussell/oh-my-zsh.git /home/aleks/.oh-my-zsh
RUN cp /home/aleks/my_configs/zshrc /home/aleks/.zshrc
RUN cp /home/aleks/my_configs/aleks.zsh-theme /home/aleks/.oh-my-zsh/themes
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/aleks/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# PyEnv install
RUN git clone https://github.com/yyuu/pyenv.git /home/aleks/.pyenv
