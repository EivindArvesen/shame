#!/usr/bin/env bash

# Usage: curl -L https://git.io/shame | bash

# Select a random image from politicians, memes, etc.
declare -a images=(
    "https://images.vice.com/vice/images/articles/meta/2016/03/25/an-investigation-into-whether-or-not-donald-trump-is-sexy-1458922674.jpg?crop=1xw:0.7816842690383546xh;center,center&resize=1200:*"
    "https://www.dailydot.com/wp-content/uploads/964/60/42bbb209041c8cf81ca1e2b020ad701b.jpg"
    "https://i.ytimg.com/vi/aIL594DTzH4/maxresdefault.jpg"
    "https://trisquel.info/files/richard%20stallman.jpg"
    "https://quotefancy.com/media/wallpaper/1600x900/577682-Steve-Ballmer-Quote-Developers-developers-developers-developers.jpg"
    "http://edge.alluremedia.com.au/m/g/2018/01/linusfinger.jpg"
    "https://i.ytimg.com/vi/ebYum58Awpc/maxresdefault.jpg"
    "https://www.regjeringen.no/contentassets/8b710d0e46984465a927e867898ee1d8/6_3000.jpg"
    "https://www.cdn.tv2.no/images?imageUrl=http%3A%2F%2Fwww.cdn.tv2.no%2Fmultimedia%2FTV2%2Farchive%2F00862%2Fsxcae729_862968a.jpg&width=1000&height=563&compression=75"
    "https://pbx.blogg.no/?w=1200&url=https%3A%2F%2Fbloggfiler%2Eno%2Fnavideo%2Eblogg%2Eno%2Fimages%2F4595953-2036512-11-1515177192683%2Ejpg"
    "https://i.ytimg.com/vi/MkRoAj2ZXfQ/maxresdefault.jpg"
    "https://sa.mnocdn.no/images/3e1a50eb-5799-4511-81c7-daf91ca1ccd9?fit=crop&h=1152&q=80&w=2048"
    "https://i.imgur.com/CyFyMRL.jpg"
    "https://regmedia.co.uk/2017/01/05/tipsfedora.jpg?x=1200&y=794"
)

RANDOM_IMG=${images[$RANDOM % ${#images[@]} ]}

#echo $RANDOM_IMG
#exit

# Download random image
curl -L "$RANDOM_IMG" -o /tmp/img.jpg

# Set wallpaper to random image
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/tmp/img.jpg"' # Background on current space on current screen
#osascript -e 'tell application "System Events" to tell every desktop to set picture to POSIX file "/tmp/img.jpg"' # Background on all screens

# Force desktop refresh
killall Dock
