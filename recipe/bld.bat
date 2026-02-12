@echo on

%PYTHON% -m pip install . -vv --no-build-isolation --no-deps
if errorlevel 1 exit 1
