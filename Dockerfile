FROM ruby:alpine

WORKDIR /home/exercisum-ruby-answers/

COPY . ./

RUN sh _scripts/test_all.sh

CMD [ "/bin/sh" ]
