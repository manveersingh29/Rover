# Rover

A 6WD robot with differnetial drive can perform teleop

To include autonomus capabilites and CAD

First git clone the package in your home directory

git clone .....

make the package by

cd Rover
catkin_make

Source the package

source devel/setup.bash 

To launch the model

roslaunch rover_description rover_emptyworld.launch

To teleop the rover

open a new terminal

rosrun teleop_twist_keyboard teleop_twist_keyboard.py
