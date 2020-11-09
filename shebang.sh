#!/bin/sh
echo 'add shebang towhat file?'
echo ' '
read -p 'file: ' f
sed -i -e '1i#!/bin/sh\' $f

