#!/bin/sh

cp "$(locate 'on-modify.timewarrior')" ~/.task/hooks/
chmod +x "${HOME}/.task/hooks/on-modify.timewarrior"
