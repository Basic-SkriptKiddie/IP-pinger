 @echo off
 color 3 
 title pinger

echo pull IP with grabify or lanc V2 
echo Need to boot someone? use stressthem.to

echo ------------------------------------------
echo             CTRL+C TO STOP                
echo ------------------------------------------
echo ######  ### #     #  #####  ####### ######  
echo #     #  #  ##    # #     # #       #     # 
echo #     #  #  # #   # #       #       #     # 
echo ######   #  #  #  # #  #### #####   ######  
echo #        #  #   # # #     # #       #   #   
echo #        #  #    ## #     # #       #    #  
echo #       ### #     #  #####  ####### #     # 
echo.
echo.
set /p IP=ENTER IP TO PING:

:top
PING -n 1 %IP% | FIND "TTL="
title :: pinging: %IP% ::
IF ERRORLEVEL 1 (echo IP HIT SUCCESSFULLY)
set /a num=(%Random%%%9)+1
color %num%
ping -t 1 0 10 127.0.0.1 >nul
GoTo top 