#! /bin/bash

###
# Load Drupal console.
#
# This is not run on terminal load because it takes forever.
###
function load_drupal_console() {
  source "$HOME/.console/console.rc" 2>/dev/null
}
