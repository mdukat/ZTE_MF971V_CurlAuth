# ZTE_MF971V_CurlAuth
PIN and Password authentication of ZTE MF971V with curl

## Why?
Well, i wanted to login as fast as possible from terminal (and maybe automate things for later).

## How?
ZTE MF971V uses POST request for communication at "login screen", it basically needs `X-Requested-From` and `Referer` headers to work for some reason. All post requests goes to `/goform/goform_set_cmd_process` and returns json with `result` value.

## Usage:
Simply modify script for your values (you don't have to enter router password, if you want to only authenticate PIN), and run it. As simple as that!
