#! /usr/bin/env bash

open() {
    nohup nautilus -w $1 > /dev/null 2>&1 &
}
