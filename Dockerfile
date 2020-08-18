FROM raspbian/fpixel

USER root
RUN apt-get update 
RUN apt-get install -y python3-pip

WORKDIR /home/pi

RUN python3 -m pip install --upgrade pip

RUN sudo apt-get install build-essential cmake pkg-config
RUN sudo apt-get install libjpeg-dev libtiff5-dev libjasper-dev libpng-dev
RUN sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
RUN sudo apt-get install libxvidcore-dev libx264-dev
RUN sudo apt-get install libfontconfig1-dev libcairo2-dev
RUN sudo apt-get install libgdk-pixbuf2.0-dev libpango1.0-dev
RUN sudo apt-get install libgtk2.0-dev libgtk-3-dev
RUN sudo apt-get install libatlas-base-dev gfortran
RUN sudo apt-get install python3-dev

RUN pip install opencv-contrib-python==4.1.0.25