setlocal enableextensions enabledelayedexpansion
ECHO OFF

SET /A x=0
SET /A plus=1

FOR /r E:\strokes %%F IN (*.gif) DO (
  SET /A x = !x! + %plus%
  move %%F
  ECHO %%F
  if !x! == 100 (	
	SET /A x=0
	ECHO commit
	
	git add *
	git commit -m "ok commit"
	git push
  ) else (
	ECHO !x!
  )
)