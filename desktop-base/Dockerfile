FROM theasp/novnc:latest as desktop

COPY x11vnc.conf /app/conf.d
COPY fluxbox/init /etc/X11/fluxbox/init

RUN useradd experience -s /bin/bash  -m -k /etc/skel

ENV HOME /home/experience

WORKDIR /home/experience
USER experience

RUN git config --global user.email "experience@qwan.eu" &&\
    git config --global user.name "Experience Agile" 

ENV DISPLAY_WIDTH=1920
ENV DISPLAY_HEIGHT=1080
ENV RUN_XTERM=yes

EXPOSE 8080
USER root
