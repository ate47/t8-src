
ATE47's notice: I don't put my hashes here anymore, see my own decompiler dump [bo4-source](https://github.com/ate47/bo4-source) for my latest find.


# Decompiled BO4 GSC/CSC Scripts
This is a repository containing my best attempt at decompiling the scripts for BO4\
\
T8 (BO4) is a pain in that pretty much everything is hashed (more than t7). This means that a lot of the filenames are unknown\
I was able to make educated guesses on a lot of them, though, so we do have *some* file structure
# Why
Some stuff recently got leaked that will allow people to more easily achieve this, and I've had these decompiled for many months,\
so id rather release it ahead of time since there are a few other people who would do it anyways

# Special Thanks
Taleb - resources\
SyGnUs - string decryption help\
alexisloic21 - Found and reported a bug with for loops\
Kenshin9977 - Additional hashes\
Scobalula - Original T7 decompiler

# ATE47's files

- [find.txt](find.txt) - the find hashes
- [BOHashTool](https://github.com/ate47/BOHashTool) tool I'm using to search

```powershell
$m = @{}; gc .\dump\scripts.txt | % {$s = $_.Split(",");$m[$s[0]] = $s[1]}
gc .\loaded.txt | % {"$_,$($m[$_])"} > loaded_lookup.txt
```
