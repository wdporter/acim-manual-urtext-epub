$name = "A Course in Miracles - UrText - Manual.epub"


#delete book if exsiting
if (test-path $name) { remove-item $name -ea ig }

#delete dist folder
if (test-path dist ) { remove-item dist -recurse -force }

# build the project
npm run build

# reset the name of mimetype so that it will be first item in the archive
rename-item -path dist\mimetype -newname !mimetype

#create the archive
C:\"Program Files"\7-Zip\7z a -tzip $name .\dist\*

# rename !mimetype  
C:\"Program Files"\7-Zip\7z rn $name !mimetype mimetype


