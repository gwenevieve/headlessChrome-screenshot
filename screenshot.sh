#!/usr/bin/env bash

# create the array with the breakpoint values in it
screenshotResoultions=(320,480 360,640 375,667 768,1024 1024,768 1366,768)

echo "Enter website URI (www.example.com), followed by [ENTER]:"

read websiteURI

# if our directory doesn't exist, let's create it
if [ ! -d screenshots ]
then
mkdir screenshots
fi

# switch to the screenshot directory before running the script
cd screenshots

# create a directory named after website we're screenshotting, then go to it
mkdir $websiteURI

cd $websiteURI

# for as many values are in the screenshot array, run this loop
for i in "${screenshotResoultions[@]}"
do
   :
  /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --headless --disable-gpu --window-size=$i --screenshot=Screenshot-$i.png https://$websiteURI
done
