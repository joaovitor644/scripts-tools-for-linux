#!/usr/bin/env bash
read -p "Name's project:" projectName
if [ ! $projectName ]
    then 
    projectName="project"
fi
echo "Create Project ..."
mkdir $projectName
cd $projectName
mkdir style
mkdir js
touch index.html
echo "Setting index.html ..."
echo "<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="style/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <script src="js/main.js"></script>
</body>
</html>" >> index.html
cd js 
touch main.js
echo "Create main.js ..."
cd ..
cd style 
touch style.css
echo "Create style.css ..."
cd ..
touch .gitignore
echo ".gitignore" >> .gitignore
git init
echo "Finish!"
