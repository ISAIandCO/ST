if not exist "archives" md "archives"
if not exist "music" md "music"
if not exist "video" md "video"
if not exist "programs" md "programs"
if not exist "programs\android" md "programs\android"
if not exist "images" md "images"
if not exist "docs" md "docs"
if not exist "ink's" md "ink's"

:0110

for %%f in (*.zip,*.gz,*.tgz,*.rar,*.iso,*.tar,*.tg,*.7z) do move /-y <no "%%f" "archives"
for %%f in (*.avi,*.mov,*.mp4,*.mkv,*.3gp,*.wmv,*.fly) do move /-y <no "%%f" "video"
for %%f in (*.mp3,*.wav,*.flac) do move /-y <no "%%f" "music"
for %%f in (*.exe,*.log,*.reg,*.msi,*.acs3,*.apk) do move /-y <no "%%f" "programs"
move *.apk programs\android
for %%f in (*.png,*.bmp,*.gif,*.tiff,*.jpg,*.jpeg,*.psd) do move /-y <no "%%f" "images"

for %%f in (*.vsm,*.idd,*.bp1,*.xmcd,*.mcd,*.fb2,*.pdf,*.txt,*.doc,
*.docx,*.xls,*.xlsx,*.ppt,*.pptx,*.rtf,*.djvu, *.nb, *.ewd, *.mcd,
*.3dmark*,*.tiff,*.tif,*.dwg,*.cdw) do move /-y <no "%%f" "docs"

del *.torrent
for %%f in (*.lnk) do move /-y <no "%%f" "ink's"

for %%f in (*.zip,*.gz,*.tgz,*.rar,*.iso,*.tar,*.tg,*.7z) do ren "%%f" "1%%f"
for %%f in (*.avi,*.mov,*.mp4,*.mkv,*.3gp,*.wmv,*.fly) do ren "%%f" "1%%f"
for %%f in (*.mp3,*.wav,*.flac) do ren "%%f" "1%%f"
for %%f in (*.exe,*.log,*.reg,*.msi,*.acs3,*.apk) do ren "%%f" "1%%f"
for %%f in (*.png,*.bmp,*.gif,*.tiff,*.jpg,*.jpeg,*.psd) do ren "%%f" "1%%f"

for %%f in (*.vsm,*.idd,*.bp1,*.xmcd,*.mcd,*.fb2,*.pdf,*.txt,*.doc,
*.docx,*.xls,*.xlsx,*.ppt,*.pptx,*.rtf,*.djvu, *.nb, *.ewd, *.mcd,
*.3dmark*,*.tiff,*.tif,*.dwg,*.cdw) do ren "%%f" "1%%f"

for %%f in (*.lnk) do ren "%%f" "1%%f"

for %%f in (*.vsm,*.idd,*.bp1,*.lnk,*.pdf,*.txt,*.doc,*.docx,
*.xls,*.xlsx,*.ppt,*.pptx,*.rtf,*.djvu,*.tif,*.nb,*.ewd,*.mcd,
*.3dmark*,*.png,*.bmp,*.gif,*.tiff,*.jpg,*.jpeg,*.psd,*.exe,
*.log,*.reg,*.msi,*.acs3,*.mp3,*.wav,*.flac,*.zip,*.gz,*.tgz,
*.rar,*.iso,*.tar,*.tg,*.avi,*.mov,*.mp4,*.mkv,*.3gp,*.wmv,
*.fly,*.dwg,*.cdw) do goto :0110
