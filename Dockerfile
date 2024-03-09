# Use exact dependencies from:
# https://pages.github.com/versions/

# Use Ruby 2.7.4, as it is the base for the compatible Jekyll version
FROM ruby:2.7.4

# Install Jekyll and Bundler
RUN gem install jekyll -v 3.9.5
RUN gem install bundler -v 2.4.22

# Set the working directory inside the container
WORKDIR /usr/src/app

# https://github.com/octokit/octokit.rb
ENV OCTOKIT_SILENT=true