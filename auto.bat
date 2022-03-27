::git add *
::git commit -m "6 commit"
::git push
::pause
ECHO OFF

FOR /r E:\strokes %%F IN (*.gif) DO (
  ECHO %%F
  move %%F
  git add *
  git commit -m "ok commit"
  git push
)