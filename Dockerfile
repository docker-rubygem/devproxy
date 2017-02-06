FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.5.1

RUN gem install devproxy --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["devproxy"]
CMD ["--help"]
