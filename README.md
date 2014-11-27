# READEM #

## PROJECT : STM8 Make Sample ##
This project is a quick and dirty test to check everything is working and ready to rock for STM8 development. The project is designed to work with the STM8L Discovery board.

Sample code included is from Valentin Dudouyt and can be found here: https://github.com/vdudouyt/sdcc-examples-stm8

## Development ##
To get started with this project setup the following tools:

### SDCC - Small Device C Compiler ###
This project will allow you to compile the code correctly for the STM8 device. Please see the enclosed Makefile on usage samples.

Check out the project page here: sdcc.sourceforge.net

### STM8FLASH ###
This will allow you to flash you compiled program to the discovery board.
Please see the enclosed Makefile for usage example.

The project can be found here: https://github.com/vdudouyt/stm8flash

To retrieve the project:
git clone https://github.com/vdudouyt/stm8flash.git

### ZIP ###
This is for archiving and distribution of the current project source stage. It is not required but an optional tool.

## Usage ##
1. Plug in your STM8LDISCOVERY board.
2. Unzip the zip archive to your working directory
3. Navigate inside the directory you just extracted and run 'make'. 
4. Once make has completed run 'make flash' to program your micro.
5. Make your own projects and have fun!!!
