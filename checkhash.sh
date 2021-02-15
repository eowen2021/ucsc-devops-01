#!/bin/bash

if [ -f ~/.hushlogin ]
then
    echo "File exists, All Good"
else
    touch ~/.hushlogin
    echo "File created"
fi
