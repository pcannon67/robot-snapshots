set /p serialNumber="Enter the iCub S/N as three digits (e.g. 005): "
git checkout --orphan sn_%serialNumber%
git rm -rf . !("create_snapshot_branch.bat")
git reset create_snapshot_branch.bat
rm '.gitignore'
(
echo *.1 filter=lfs diff=lfs merge=lfs -text
echo *.pdf filter=lfs diff=lfs merge=lfs -text
echo *.stl filter=lfs diff=lfs merge=lfs -text
echo *.step filter=lfs diff=lfs merge=lfs -text
echo *.dxf filter=lfs diff=lfs merge=lfs -text
) > .gitattributes
git add .gitattributes
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
echo !.*dxf
) > .gitignore
git add .gitignore
git commit -a -m "Initial commit."
echo # Snapshot of iCub S/N %serialNumber% > README.md
git add README.md
git commit -a -m "Add readme."
git push -u origin sn_%serialNumber%
