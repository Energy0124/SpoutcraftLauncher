github-release release  --user Energy0124  --repo SpoutcraftLauncher  --tag %1  --name  "Technic Launcher SP %1" --description "%2"
cd "target\"
for /f "usebackq delims=|" %%f in (`dir /b launcher* ^| sort /r`) do (
echo %%f
github-release upload   --user Energy0124  --repo SpoutcraftLauncher  --tag %1  --name "Technic_%%f" --file  %%f
)
