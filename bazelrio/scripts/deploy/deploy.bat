@echo off
for /f "tokens=1,2" %%G in (MANIFEST) do ^
if "%%G" == "{DEPLOY_TOOL}" ^
"%%H" --robot_binary {ROBOT_BINARY} --team_number {TEAM_NUMBER} --robot_command "{ROBOT_COMMAND}" --dynamic_libraries {DYNAMIC_LIBRARIES} %*