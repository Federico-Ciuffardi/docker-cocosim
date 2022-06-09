FROM osrf/ros:foxy-desktop

# gazebo
RUN apt-get update && apt-get install -y --no-install-recommends ros-foxy-gazebo-ros-pkgs 
RUN apt-get update && apt-get install -y --no-install-recommends libsdl1.2debian ros-foxy-osrf-testing-tools-cpp ros-foxy-performance-test-fixture

# cyclone dds
RUN apt-get update && apt-get install -y --no-install-recommends maven default-jdk

# debug
RUN apt-get update && apt-get install -y --no-install-recommends xterm gdb valgrind

# utils
RUN apt-get update && apt-get install -y --no-install-recommends zsh ranger xclip fzf tmux neovim bat

# helper deps
RUN apt-get update && apt-get install -y --no-install-recommends pciutils

ENTRYPOINT tmux
