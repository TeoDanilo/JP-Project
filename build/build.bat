
echo Restore nuget dep's
dotnet restore "../src/Backend/Jp.UserManagement"
dotnet restore "../src/Frontend/Jp.UI.SSO"

CLS
echo RUN API
start /d "../src/Backend/Jp.UserManagement" dotnet run args

echo RUN SSO
start /d "../src/Frontend/Jp.UI.SSO" dotnet run args

(cd "../src/Frontend/Jp.UserManagement" && npm install && start ng serve)

