#!/bin/bash

echo "Now you are installing necessary directories..."
touch easy_level.csv
touch medium_level.csv
touch hard_level.csv
bundle init
bundle add stop_watch
bundle add csv
bundle add faker
bundle add colorize
ruby main.rb

