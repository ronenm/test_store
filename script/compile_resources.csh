#!/bin/csh -f

setenv RAILS_ENV production

bundle exec rake --trace assets:precompile
