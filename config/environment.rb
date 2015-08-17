# Loading bundler and gems
require 'bundler'
Bundler.require

# Loading my objects
# $LOAD_PATH << '.'
$: << '.'
require 'models/student'
