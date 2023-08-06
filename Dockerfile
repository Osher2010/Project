FROM ubuntu
RUN  apt update 
RUN apt upgrade -y  
COPY requirements.txt . 
