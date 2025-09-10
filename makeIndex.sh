#!/bin/bash

DIRS=$(echo U*/)

##### Header
echo "<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PMDM IES Maria Enriquez 2025-26</title>
    <link rel="stylesheet" href="web_template/aqua.css">
</head>
<body> 
<div id="content">
<header id="title-block-header">
<h1>Multimedia and mobile device programming - IES Maria Enriquez 2025-26</h1>
</header>
<main>
" > index.html

### Body
for dir in $DIRS
do
    echo "<h2>$dir</h2>" >> index.html

    FILES="$dir*.html"
    for file in $FILES
    do
        echo "<p><a href='$file'>$file</a></p>" >> index.html
    done

    #FILES="$dir*.pdf"
    #for file in $FILES
    #do
    #    echo "<p><a href='$file'>$file</a></p>" >> index.html
    #done
done

#### Footer
echo "</main>
</div>
</body>
</html> " >> index.html
