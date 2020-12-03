@echo off
mode con:cols=110 lines=30
title Bang Jago Emulator Android

rem ===================================================================================================================
rem ===================================================================================================================
rem ===================================================================================================================
rem
rem                                                 LANDING SCREEN
rem
rem ===================================================================================================================

rem echo ==============================================================================================================
rem echo                  BANG JAGO EMULATOR ANDROID - COPYRIGHT 2020 BY RESTU WAHYU SAPUTRA
rem echo ==============================================================================================================
:start
set path=%path%;%localappdata%\Android\Sdk\emulator
set path=%path%;%localappdata%\Android\Sdk\platforms
set path=%path%;%localappdata%\Android\Sdk\tools
set path=%path%;%localappdata%\Android\Sdk\tools\bin
echo off &echo.&echo off
echo off
echo off
echo                                             .`          `.
echo                                             `-``.....```-`
echo                                            `.://////////:.`
echo                                           .//:.://////-.://.
echo                                          -////-////////-////-
echo                                         `://////////////////:`
echo                                    `..` `--------------------` `..`
echo                                   `////..////////////////////..////`
echo                                   `////..////////////////////..////`
echo                                   `////..////////////////////..////`
echo                                   `////..////////////////////..////`
echo                                   `////..////////////////////..////`
echo                                   `////..////////////////////..////`
echo                                   `.--.`.////////////////////.`.--.
echo                                         .////////////////////.
echo                                         `://////////////////:`
echo                                          ```-////```.////-```
echo                                             -////`  `////-
echo                                             .////`  `////.
echo                                             `-::.`  `.::-`
echo off &echo.&echo off
echo    /sssso`o+` `oo :o. .s-`o:     /s+  /sssss:`/os+- :ssso:     -so`  +o. :o`-ssso: .ssso/` -oso: `o/ osso/.
echo    hM+::--MMd-dMM.yM: +Mo-My    .NmM: -:yMs:.sMo:mN.sMo:yM/   `mNMo  NMm.yM-+Ms:yM//Mh:oMs-Nd:sM+-Mh MN:/Md
echo    hMys: -MdmNmmM.yM: +Mo-My    hM-mm`  oM+  hM- yM-sMhsmd-   oM/hN- NMmmdM-+M+ +Mo/Mdshm//Mo :Ms-Mh Mm  NN
echo    hM/-.`-Mh.+.dM.sM/`oM+-My```/MmydMo  oM+  yM:`hM-sM+oMy`  .NNyhMh NN.mMM-+Mo`oM+/My/Nd.:My`+Ms-Mh MN`.Mm
echo    smhyys.ds   sd`.yhydy`-ddyyssd.``hh  /d:  -hhydo +d- om:  +d:``sd.dh .hd./mhyds`-d+ :mo`sdydy..ds ddyhh:
echo    ````` `     `   ``    ````  `        `     ``    `   `    `           `  ```    `   `    ``   `   ```                                                                `::`

choice /m "are you sure you want to running this application ? "

if %errorlevel% equ 1 goto downloadIntelx86Haxm
if %errorlevel% equ 2 exit 0

rem echo===============================================================================================================
rem echo                            DOWNLOADING INTEL HAXM BEFORE RUNNING APPLICATION
rem echo ==============================================================================================================
:downloadIntelx86Haxm
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                    WARNING !!! don't close this cli because the Intel Haxm Tool can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\extras" (
   call sdkmanager --install "extras;intel;Hardware_Accelerated_Execution_Manager" --channel=0
   call %localappdata%\Android\Sdk\extras\intel\Hardware_Accelerated_Execution_Manager\silent_install.bat
   goto startInside
) else (
  if exist "%localappdata%\Android\Sdk\extras\intel\Hardware_Accelerated_Execution_Manager" (
    goto startInside
  ) else (
    call sdkmanager --install "extras;intel;Hardware_Accelerated_Execution_Manager" --channel=0
    call %localappdata%\Android\Sdk\extras\intel\Hardware_Accelerated_Execution_Manager\silent_install.bat
    goto startInside
  )
)

rem echo===============================================================================================================
rem echo                                      BANG JAGO EMULATOR
rem echo ==============================================================================================================
:startInside
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\bangjago-emulator" (
  goto appStart
) else (
  goto downloadIntelx86Haxm
)

rem echo===============================================================================================================
rem echo                                      DOWNLOADING PACKAGE
rem echo ==============================================================================================================
:downloadPackage
cls
echo off &echo.&echo off
echo off &echo.&echo off

echo Downloading Package Started...
powershell -Command "Start-BitsTransfer -Source https://udomain.dl.sourceforge.net/project/scrcpy.mirror/v1.16/scrcpy-win32-v1.16.zip -Destination $env:LOCALAPPDATA\scrcpy-win32-v1.16.zip -TransferType Download"
goto copyPackage

rem echo===============================================================================================================
rem echo                                        CHECK PACKAGE
rem echo ==============================================================================================================
:copyPackage
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\scrcpy-win32-v1.16.zip" (
  goto copyFile
) else (
  goto downloadPackage
)

rem echo===============================================================================================================
rem echo                                    CREATE FOLDER AND COPY PACKAGE
rem echo ==============================================================================================================
:copyFile
cls
echo off &echo.&echo off
echo off &echo.&echo off

mkdir %localappdata%\bangjago-emulator
if exist "%localappdata%\bangjago-emulator" move %localappdata%\scrcpy-win32-v1.16.zip %localappdata%\bangjago-emulator
if exist "%localappdata%\bangjago-emulator\scrcpy-win32-v1.16.zip" goto createFile

rem echo===============================================================================================================
rem echo                                        CREATE CONFIG PACKAGE
rem echo ==============================================================================================================
:createFile
cls
echo off &echo.&echo off
echo off &echo.&echo off

powershell -Command "New-Item -Path $env:LOCALAPPDATA\bangjago-emulator -Name 'usb.bat' -Value 'call %localappdata%\bangjago-emulator\scrcpy.exe -m 1242 --max-fps 90 -t -w --disable-screensaver' -ItemType file"
powershell -Command "New-Item -Path $env:LOCALAPPDATA\bangjago-emulator -Name 'wireless.bat' -Value 'call %localappdata%\bangjago-emulator\scrcpy.exe -b 4 -m 1242 --max-fps 60 -t -w --disable-screensaver' -ItemType file"
if exist "%localappdata%\bangjago-emulator\scrcpy-win32-v1.16.zip" goto unzipFile

rem echo===============================================================================================================
rem echo                                         UNZIP PACKAGE
rem echo ==============================================================================================================
:unzipFile
cls
echo off &echo.&echo off
echo off &echo.&echo off

echo Unzip File Started...
powershell -Command "Expand-Archive -Path $env:LOCALAPPDATA\bangjago-emulator\scrcpy-win32-v1.16.zip -DestinationPath $env:LOCALAPPDATA\bangjago-emulator"
if exist "%localappdata%\bangjago-emulator\scrcpy-win32-v1.16.zip" goto deleteFile

rem echo===============================================================================================================
rem echo                                         DELETE PACKAGE
rem echo ==============================================================================================================
:deleteFile
cls
echo off &echo.&echo off
echo off &echo.&echo off

del "%localappdata%\bangjago-emulator\scrcpy-win32-v1.16.zip"
if not exist "%localappdata%\bangjago-emulator\scrcpy-win32-v1.16.zip" goto appStart

rem ==============================================================================================================
rem                                    APPLICATION BANG JAGO EMULATOR
rem ==============================================================================================================
:appStart
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. ADB TOOLS
echo  2. SDK TOOLS
echo  3. AVD TOOLS
echo  4. SOFTWARE TOOLS
echo  5. ABOUT DEVELOPER
echo  0. EXIT

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:123450 /m "choice action ?"

if %errorlevel% equ 1 goto adbTools
if %errorlevel% equ 2 goto screenSdkTools
if %errorlevel% equ 3 goto avdTools
if %errorlevel% equ 4 goto softwareTools
if %errorlevel% equ 5 goto aboutMe
if %errorlevel% equ 6 exit 0