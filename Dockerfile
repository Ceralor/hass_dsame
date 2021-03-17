FROM ubuntu:20.04
ENV LOCALE en_US
RUN apt update && \
  apt install -y rtl-sdr curl python multimon-ng git && \
  git clone https://github.com/MaxwellDPS/dsame /opt/dsame
COPY source.sh /opt/source.sh
COPY hass_same.sh /opt/hass_same.sh
COPY startup.sh /opt/startup.sh
ENV EVENT_TYPES TOR
ENV FREQ 162.525M
ENV GAIN 10
ENV PPM 0
ENTRYPOINT /opt/startup.sh
