setlocal enabledelayedexpansion
set /P URL=
yt-dlp "!URL!" -f "bestaudio" --audio-format mp3 --audio-quality 0 -x ^
--parse-metadata "playlist_index:%%(track_number)s" ^
--parse-metadata "playlist_title:%%(album)s" ^
--parse-metadata "channel:%%(album_artist)s" ^
--ignore-errors ^
--embed-metadata ^
--embed-thumbnail ^
--embed-chapters ^
-o "%USERPROFILE%\Music\%%(channel)s\%%(title)s.%%(ext)s"
