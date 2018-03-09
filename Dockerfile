FROM ubuntu:trusty

RUN apt-get -y update \
    && apt-get install wget \
    && export CHROME_SOURCE_URL=http://dl.google.com/dl/linux/direct/google-chrome-stable_current_amd64.deb \
    && wget --no-verbose -O /tmp/$(basename $CHROME_SOURCE_URL) $CHROME_SOURCE_URL \
    && dpkg -i /tmp/google-chrome-stable_current_amd64.deb \
    && apt-get install -f \
    && rm /tmp/$(basename $CHROME_SOURCE_URL)
