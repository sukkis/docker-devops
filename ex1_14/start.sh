#!/bin/bash

while getopts ":dp" opt; do
  case ${opt} in
    d ) # process option h
	rails db:migrate
	rails s
      ;;
    p ) # process option t
	export SECRET_KEY_BASE=$(rake secret)
        rails db:migrate RAILS_ENV=production
        rake assets:precompile
        RAILS_LOG_TO_STDOUT=true rails s -e production
      ;;
    \? ) echo "Usage: cmd [-d] [-p] , for dev and production respectively"
      ;;
  esac
done

