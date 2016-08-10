lastfm-np-terminal
=========
Simple terminal application that prints what a user is currently listening to through lastfm. Includes a wrapper plugin for irssi but easily ported to other irc clients!

Dependencies
------------
- nodejs

How to run terminal app
----------
> npm install

> node app.js \<username\>

irssi plugin
------------
> cd ~/.irssi/scripts

> git clone git@github.com:Chetic/lastfm-np-terminal

> cd lastfm-np-terminal

> npm install

From within irssi:
> /load lastfm-np-terminal/lastfm-np-irssi.pl

> /set lastfm_user \<username\>

> /np
