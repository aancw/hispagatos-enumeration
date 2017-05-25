# hispagatos-enumeration
Bash script that runs most of the external enumeration with some logic

Why?
I hate automatization of Pentests or any type of computer hacking with auto-tools expecially
if they are not free/open source FLOSS.
But sometimes for CTF/Certifications and such, were does not matter to make "noise" on the target.. 
I'm building step by step with the most commont enumeration steps I do personally.
example: 
CTF is ok to make noise, on a pentest is not..


TOOLS YOU NEED INSTALLED
I recomend Blackarch GNU/Linux

- txt2html - pacaur -S txt2html (from AUR in arch GNU/linux/blackarch GNU/Linux)
- Xalan-c - pacaur -S community/xalan-c 
- nmap
- nitko
- exploit-db - searchsploit(exploit-db)
- fimap
- Dirb
- egrep
- your brain - do not be a script kiddie and run this tool as a must, use it only for speed
not because you can't do this simple task by yourself.. 

to run, modify the config.sh

```
vim config.sh
```

Then to each remote host run the enumeration.sh script.. you can do this in screen for more than one host or diff terminals. so yes it can run in paralell.
```
./enumeration.sh xx.xx.xx.xx
```

on **each** created host folder like XX.XX.XX.XX are the files created, create one called STEPS
and add your custom **notes* of what you did and what you found on that hosts.

```
vim XX.XX.XX.XX/STEPS
```

After all remote hosts you need are scanned then run the documentation.sh script
```
./documentation.sh
```




Fernandez Chris AKA ReK2
https://keybase.io/cfernandez
