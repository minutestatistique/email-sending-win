@echo off
:::::::::::::: Lets set some variables ::::::::::::::
set to=mail@company.com
set subj=-s "blat test from %computername%"
set server=-server localhost:25
set profile= -p gmailsmtp
set x=-x "X-Header-Test: Can Blat do it? Yes it Can!"
set debug=-debug -log blat.log -timestamp
set attach=-attach test.txt
::::::::::::::::: Now we run Blat!  :::::::::::::::::
blat %0 -to %to% %attach% %subj% %server% %profile% %debug% %x%

::blat -p gmailsmtp -to mail@company.com -subject "blat test from %computername%" -body "From the windows terminal, les gros !" -server localhost:25 -attach test.txt -debug
