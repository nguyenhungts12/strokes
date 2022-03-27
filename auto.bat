git add *
git commit -m "6 commit"
git push
pause

FOR %F IN (E:\strokes\*.*) DO (
  ECHO !SrcCount! COPY %F C:\temp\output
)