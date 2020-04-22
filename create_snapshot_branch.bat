set /p serialNumber="Enter the iCub S/N as three digits (e.g. 005): "
git checkout --orphan sn_%serialNumber%

REM Delete master branch inherited files.
git rm --cached -r .
del .gitignore
del README.md

REM Create and commit configuration files.
(
echo *
echo # Accepted files format
echo !.gitattributes
echo !.gitignore
echo !*.1
echo !*.pdf
echo !*.md
echo !*.stl
echo !*.step
echo !*.dxf
echo !*/
) > .gitignore
git add .gitignore
git commit -a -m "Initial commit."
(
echo *.1 filter=lfs diff=lfs merge=lfs -text
echo *.pdf filter=lfs diff=lfs merge=lfs -text
echo *.stl filter=lfs diff=lfs merge=lfs -text
echo *.step filter=lfs diff=lfs merge=lfs -text
echo *.dxf filter=lfs diff=lfs merge=lfs -text
) > .gitattributes
git add .gitattributes
git commit -a -m "Add LFS."
echo # Snapshot of iCub S/N %serialNumber% > README.md
git add README.md
git commit -a -m "Add readme."

REM Create the subfolders with the associated readme.
set folderList=(cad-model,electronics,wiring,media,prodoc)
for %%A in %folderList% do (
mkdir %%A
cd %%A
IF %%A==prodoc (
    echo ### This folder contains the production documentation. > README.md
) ELSE (
    echo ### This folder contains the %%A files. > README.md
)
cd ..
)
git add .
git commit -a -m "Add subfolders with the associated readme."

REM  Push the new branch
git push -u origin sn_%serialNumber%

REM Delete the script from the branch
start /b "" cmd /c del "%~f0"&exit /b
