FROM osrf/ros:foxy-desktop

# gazebo
RUN apt-get update && apt-get install -y --no-install-recommends ros-foxy-gazebo-ros-pkgs 
RUN apt-get update && apt-get install -y --no-install-recommends libsdl1.2debian ros-foxy-osrf-testing-tools-cpp ros-foxy-performance-test-fixture

# cyclone dds
RUN apt-get update && apt-get install -y --no-install-recommends maven default-jdk

# debug
RUN apt-get update && apt-get install -y --no-install-recommends xterm gdb valgrind

# utils
RUN apt-get update && apt-get install -y --no-install-recommends tmux

# helper deps
RUN apt-get update && apt-get install -y --no-install-recommends pciutils

# development
RUN apt-get update && apt-get install -y --no-install-recommends zsh ranger xclip fzf neovim bat

## nvim deps
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs

RUN apt-get update && apt-get install -y --no-install-recommends python3 python3-pynvim

ENTRYPOINT tmux
