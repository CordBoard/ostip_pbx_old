FROM respoke/asterisk:latest
LABEL maintainer="Justin Zimmer <jzimmer@leasehawk.com>"

RUN apt-get update -qq
RUN apt-get install --no-install-recommends --no-install-suggests -qqy \
    bash \
    python2.7 \
    python-pip \
    gettext


ADD ari.conf /etc/asterisk/
ADD extensions.conf /etc/asterisk/
ADD http.conf /etc/asterisk/
ADD modules.conf /etc/asterisk/
ADD pjsip.conf /etc/asterisk/

CMD asterisk -f