set shell := ["sh", "-c"]
set windows-shell := ["powershell", "-c"]

@_menu:
    just --list yt-dlp

version:
    yt-dlp --version

help:
    yt-dlp --help



