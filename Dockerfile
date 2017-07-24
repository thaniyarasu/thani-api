FROM ruby:2.4.1
MAINTAINER "Thani<thaniyarasu@gmail.com>"

RUN apt-get update -y && apt-get install -y build-essential libpq-dev nodejs netcat
ADD . /app
WORKDIR /app
ENV RAILS_ENV=production
RUN bundle install
CMD ["rails","server","-b","0.0.0.0","-p","3000"]
#CMD ["puma","start","-b","0.0.0.0","-p","8080"]
