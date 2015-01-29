set startres=0
set startquality=10

set qmin=10
set qmax=30

set sizelimit=3000000

set inputname=input
set outputname=output

:do_while_loop_start
ffmpeg -i %inputname%.mp4 -vf scale=iw*(1-0.%startres%):ih*(1-0.%startres%),colormatrix=bt709:bt601 -pix_fmt yuv420p -threads 8 -qmin 0 -qmax %startquality% -c:v vp8 -an -y %outputname%.webm
set /a startquality+=10

:do_while_loop_end
for /f "usebackq" %%a in ('output.webm') do set filesize=%%~za
if %filesize% geq %sizelimit% (if %startres% leq 9 (if %startquality% leq %qmax% (goto do_while_loop_start)))
if %filesize% geq %sizelimit% (if %startres% leq 9 (if %startquality% gtr %qmax% (
set /a startres+=1
set /a startquality=%qmin%
goto do_while_loop_start)))