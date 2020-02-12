set /p name="Enter branch name: "
git checkout --orphan %name%
git rm -rf .
rm '.gitignore'
(
echo *.1 filter=lfs diff=lfs merge=lfs -text
echo *.pdf filter=lfs diff=lfs merge=lfs -text
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
) > .gitignore
git add .gitignore
git commit -a -m "Initial commit."
echo # Snapshot of robot %name% > README.md
git add README.md
git commit -a -m "Add readme."
git push -u origin %name%
