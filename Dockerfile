FROM osrf/ros:foxy-desktop

# gazebo
RUN apt-get update && apt-get install -y --no-install-recommends ros-foxy-gazebo-ros-pkgs 
RUN apt-get update && apt-get install -y --no-install-recommends libsdl1.2debian ros-foxy-osrf-testing-tools-cpp ros-foxy-performance-test-fixture
# cyclone dds
RUN apt-get update && apt-get install -y --no-install-recommends maven default-jdk
RUN git clone https://github.com/Federico-Ciuffardi/cyclonedds.git --branch cocosim-0.7.0 && \
    mkdir cyclonedds/build && cd cyclonedds/build && \
    cmake -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX=/usr/local .. && cmake --build . --target install

# my deps
RUN apt-get update && apt-get install -y --no-install-recommends zsh ranger xclip fzf tmux neovim bat

ENTRYPOINT tmux

# zsh
# source_ros2
# export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
