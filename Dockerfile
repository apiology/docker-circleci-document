ARG DOCKER_TAG=latest
FROM apiology/circleci:${DOCKER_TAG}
MAINTAINER apiology

COPY Makefile fix.sh requirements_dev.txt Gemfile Gemfile.lock /tmp/
RUN cd /tmp && ./fix.sh
