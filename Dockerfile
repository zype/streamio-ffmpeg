FROM gcr.io/zype-working/zype-ruby:3.2.4-alpine3.19 AS base

RUN apk add --no-cache lame ruby-io-console libgomp expat gcompat ffmpeg font-terminus font-inconsolata font-dejavu font-awesome

# Copy Gemfile and install dependencies
COPY . /var/app/
COPY streamio-ffmpeg.gemspec Gemfile Gemfile.lock ./
RUN bundle install

# Copy the rest of the application
# COPY . .

ENV ZYPE_ENVIRONMENT development
# Set the default command to bash, allowing you to run any command you want
CMD ["bash"]