#delete book if exsiting
remove-item acim-manual.epub

#delete dist folder
remove-item dist -recurse -force

# build the project
npm run build

# reset the name of mimetype so that it will be first item in the archive
rename-item -path dist\mimetype -newname !mimetype

#create the archive
C:\Programs\7-Zip\7z a -tzip acim-manual.epub .\dist\*

# rename !mimetype  
C:\Programs\7-Zip\7z rn acim-manual.epub !mimetype mimetype

