@echo off
mode con:cols=110 lines=30
title Bang Jago Emulator Android

rem echo ==============================================================================================================
rem echo                  BANG JAGO EMULATOR ANDROID - COPYRIGHT 2020 BY RESTU WAHYU SAPUTRA
rem echo ==============================================================================================================
:start
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

if %errorlevel% equ 1 goto startInside
if %errorlevel% equ 2 exit 0

rem echo===============================================================================================================
rem echo                                      BANG JAGO EMULATOR
rem echo ==============================================================================================================
:startInside
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\bangjago-emulator" (
  goto setConfig
) else (
  goto downloadPackage
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
if not exist "%localappdata%\bangjago-emulator\scrcpy-win32-v1.16.zip" goto setConfig

rem echo===============================================================================================================
rem echo                                         SET CONFIG PACKAGE
rem echo ==============================================================================================================
:setConfig
set path=%path%;%localappdata%\Android\Sdk\emulator
set path=%path%;%localappdata%\Android\Sdk\platforms
set path=%path%;%localappdata%\Android\Sdk\tools
set path=%path%;%localappdata%\Android\Sdk\tools\bin
goto appStart

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
echo  5. MORE INFORMATION

echo off &echo.&echo off
echo off &echo.&echo off

rem echo  Noted:
rem echo  1. number 1 is required and number 2 and 3 is required for development android
rem echo  2. if your select number 2 and 3 just run once then restart your computer
rem echo  3. if you connection is slow and your smartphone device is low, please use the USB debugging version
rem echo  4. if you set adb usb or adb wireless and then you want to change to a new port, you have to restart adb
rem echo  5. If you want to change emulator mode from previous one, adb must first restart and set adb type again

choice /n /c:12345 /m "choice action ?"

if %errorlevel% equ 1 goto adbTools
if %errorlevel% equ 2 goto sdkTools
if %errorlevel% equ 3 goto avdTools
if %errorlevel% equ 4 goto softwareTools
if %errorlevel% equ 5 goto aboutMe


rem ==============================================================================================================
rem ==============================================================================================================
rem ==============================================================================================================
rem
rem                                               ADB TOOLS
rem
rem ==============================================================================================================
:adbTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Add ADB USB
echo  2. Add ADB Wireless
echo  3. Restart ADB
echo  4. Check ADB
echo  5. Running Emulator
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

rem echo  Noted:
rem echo  1. after restarting adb device plug the usb back into the computer or laptop
rem echo  2. after installing adb wireless close the emulator then unplug the smartphone usb
rem echo  3. reopen the emulator again and select number five
rem echo  4. use adb usb Local Setup if you don't use emulator for android development

rem echo off &echo.&echo off
rem echo off &echo.&echo off

choice /n /c:123450 /m "choice action ?"

if %errorlevel% equ 1 goto usbCollections
if %errorlevel% equ 2 goto wirelessCollecttions
if %errorlevel% equ 3 goto restartAdb
if %errorlevel% equ 4 goto checkAdb
if %errorlevel% equ 5 goto runningEmulator
if %errorlevel% equ 6 goto appStart

rem ==============================================================================================================
rem                                        ADB USB COLLECTION METHOD
rem ==============================================================================================================
:usbCollections
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo off &echo.&echo off

echo  1. Local
echo  2. React Native
echo  3. Flutter, Ionic, Native Script etc...
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:1230 /m "choice action ?"

if %errorlevel% equ 1 goto localUsb
if %errorlevel% equ 2 goto reactNativUsb
if %errorlevel% equ 3 goto anySub
if %errorlevel% equ 4 goto adbTools

rem ===================================================================================================
rem                                       LOCAL USB DEVICE
rem ===================================================================================================
:localUsb
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\bangjago-emulator" (
  goto setupLocalUsb
) else (
  msg %username% 'bangjago emulator package not found'
  goto start
)

rem ==============================================================================================================
rem                                    SETUP LOCAL USB DEVICE
rem ==============================================================================================================
:setupLocalUsb
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p localUsb=input local usb port debugging ? &
set /a localUsbInt="%localUsb%"

if "%localUsbInt%" equ "0" (
  goto usbCollections
) else (
  if %localUsbInt% gtr 0 (
    goto installLocalUsb
  ) else (
    msg %username% 'port debugging value must be number'
    goto setupLocalUsb
  )
)

rem ==============================================================================================================
rem                                   INSTALL LOCAL USB DEVICE
rem ==============================================================================================================
:installLocalUsb
cls
echo off &echo.&echo off
echo off &echo.&echo off

call %localappdata%\bangjago-emulator\adb reverse tcp:%localUsbInt% tcp:%localUsbInt%
msg %username% 'adb port usb debugging successfully to add'
goto adbTools

rem ===================================================================================================
rem                                     REACT NATIVE USB DEVICE
rem ===================================================================================================
:reactNativUsb
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\android" (
  goto setupReactNativeUsb
) else (
  msg %username% 'android sdk package not found'
  goto appStart
)

rem ==============================================================================================================
rem                                    SETUP REACT NATIVE USB DEVICE
rem ==============================================================================================================
:setupReactNativeUsb
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p reactNativeUsb=input react native usb port debugging ? &
set /a reactNativeUsbInt="%reactNativeUsb%"

if "%reactNativeUsbInt%" equ "0" (
  goto usbCollections
) else (
  if %reactNativeUsbInt% gtr 0 (
    goto installReactNativeUsb
  ) else (
    msg %username% 'port debugging value must be number'
    goto setupReactNativeUsb
  )
)

rem ==============================================================================================================
rem                                   INSTALL REACT NATIVE USB DEVICE
rem ==============================================================================================================
:installReactNativeUsb
cls
echo off &echo.&echo off
echo off &echo.&echo off

call %localappdata%\android\sdk\platform-tools\adb reverse tcp:%reactNativeUsbInt% tcp:%reactNativeUsbInt%
msg %username% 'adb port usb debugging successfully to add'
goto adbTools

rem ===================================================================================================
rem                                      ANY USB DEVICE
rem ===================================================================================================
:anyUsb
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\android" (
  goto setupAnyUsb
) else (
  msg %username% 'android sdk package not found'
  goto appStart
)

rem ==============================================================================================================
rem                                    SETUP ANY USB DEVICE
rem ==============================================================================================================
:setupAnyUsb
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p anyUsb=input react native usb port debugging ? &
set /a anyUsbInt="%anyUsb%"

if "%anyUsbInt%" equ "0" (
  goto usbCollections
) else (
  if %anyUsbInt% gtr 0 (
    goto installAnyUsb
  ) else (
    msg %username% 'port debugging value must be number'
    goto setupAnyUsb
  )
)

rem ==============================================================================================================
rem                                    INSTALL ANY USB DEVICE
rem ==============================================================================================================
:installAnyUsb
cls
echo off &echo.&echo off
echo off &echo.&echo off

call %localappdata%\android\sdk\platform-tools\adb reverse tcp:%anyUsbInt% tcp:%anyUsbInt%
msg %username% 'adb port usb debugging successfully to add'
goto adbTools

rem ==============================================================================================================
rem                                        ADB USB COLLECTION METHOD
rem ==============================================================================================================
:wirelessCollecttions
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo off &echo.&echo off

echo  1. Local
echo  2. React Native
echo  3. Flutter, Ionic, Native Script etc...
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:1230 /m "choice action ?"

if %errorlevel% equ 1 goto localwireless
if %errorlevel% equ 2 goto reactNativeWireless
if %errorlevel% equ 3 goto anywireless
if %errorlevel% equ 4 goto adbTools

rem ===================================================================================================
rem                                       LOCAL WIRELESS DEVICE
rem ===================================================================================================
:localwireless
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\bangjago-emulator" (
  goto setupLocalWireless
) else (
  msg %username% 'bangjago emulator package not found'
  goto appStart
)

rem ==============================================================================================================
rem                                    SETUP LOCAL WIRELESS DEVICE
rem ==============================================================================================================
:setupLocalWireless
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p localWireless=input wireless ip address ? &
echo %localWireless% | findstr /i /r [A-za-z~!@#$%^&*()_+`-={}:;,?]
cls

if %localWireless% equ 0 goto wirelesscollecttions

if %errorlevel% equ 1  (
  goto installLocalWireless
) else (
  msg %username% 'ip address is not valid'
  goto setupLocalWireless
)

rem ==============================================================================================================
rem                                   INSTALL LOCAL WIRELESS DEVICE
rem ==============================================================================================================
:installLocalWireless
cls
echo off &echo.&echo off
echo off &echo.&echo off

call %localappdata%\bangjago-emulator\adb tcpip 5555
call %localappdata%\bangjago-emulator\adb connect %localWireless%:5555
call %localappdata%\bangjago-emulator\wireless.bat
msg %username% 'adb ip address wireless successfully to add'
goto adbTools

rem ===================================================================================================
rem                                     REACT NATIVE WIRELESS DEVICE
rem ===================================================================================================
:reactNativeWireless
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\bangjago-emulator" (
  goto setupReactNativeWireless
) else (
  msg %username% 'android sdk package not found'
  goto appStart
)

rem ==============================================================================================================
rem                                   SETUP REACT NATIVE WIRELESS DEVICE
rem ==============================================================================================================
:setupReactNativeWireless
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p reactNativeWireless=input wireless ip address ? &
echo %reactNativeWireless% | findstr /i /r [A-za-z~!@#$%^&*()_+`-={}:;,?]
cls

if %reactNativeWireless% equ 0 goto wirelesscollecttions

if %errorlevel% equ 1  (
  goto installReactNativeWireless
) else (
  msg %username% 'ip address is not valid'
  goto setupReactNativeWireless
)

rem ==============================================================================================================
rem                                   INSTALL REACT NATIVE WIRELESS DEVICE
rem ==============================================================================================================
:installReactNativeWireless
cls
echo off &echo.&echo off
echo off &echo.&echo off

call %localappdata%\android\sdk\platform-tools\adb tcpip 8081
call %localappdata%\android\sdk\platform-tools\adb connect %reactNativeWireless%:8081
call %localappdata%\bangjago-emulator\wireless.bat
msg %username% 'adb ip address wireless successfully to add'
goto adbTools

rem ===================================================================================================
rem                                      ANY WIRELESS DEVICE
rem ===================================================================================================
:anyWireless
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\bangjago-emulator" (
  goto setupAnyWireless
) else (
  msg %username% 'android sdk package not found'
  goto appStart
)

rem ==============================================================================================================
rem                                      SETUP ANY WIRELESS DEVICE
rem ==============================================================================================================
:setupAnyWireless
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p anyWireless=input wireless ip address ? &
echo %anyWireless% | findstr /i /r [A-za-z~!@#$%^&*()_+`-={}:;,?]
cls

if %anyWireless% equ 0 goto wirelesscollecttions

if %errorlevel% equ 1  (
  goto installAnyWireless
) else (
  msg %username% 'ip address is not valid'
  goto setupAnyWireless
)

rem ==============================================================================================================
rem                                 INSTALL ANY WIRELESS DEVICE
rem ==============================================================================================================
:installAnyWireless
cls
echo off &echo.&echo off
echo off &echo.&echo off

call %localappdata%\android\sdk\platform-tools\adb tcpip 5555
call %localappdata%\android\sdk\platform-tools\adb connect %anyWireless%:5555
call %localappdata%\bangjago-emulator\wireless.bat
msg %username% 'adb ip address wireless successfully to add'
goto adbTools

rem ==============================================================================================================
rem                                       RESTART ADB DEVICE
rem ==============================================================================================================
:restartAdb
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%systemdrive%\Program Files\Android\Android Studio" (
  call %localappdata%\android\sdk\platform-tools\adb kill-server
  call %localappdata%\android\sdk\platform-tools\adb usb
  call %localappdata%\bangjago-emulator\adb kill-server
  call %localappdata%\bangjago-emulato\adb usb
  msg %username% 'restart adb device successfully'
  goto adbTools
) else (
  call %localappdata%\bangjago-emulator\adb kill-server
  call %localappdata%\bangjago-emulato\adb usb
  msg %username% 'restart adb device successfully'
  goto adbTools
  )
)

rem ==============================================================================================================
rem                                       CHECK ADB DEVICE
rem ==============================================================================================================
:checkAdb
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%systemdrive%\Program Files\Android\Android Studio" (
    call %localappdata%\android\sdk\platform-tools\adb devices
    call %localappdata%\bangjago-emulator\adb devices
    msg %username% 'adb device is connected'
    goto adbTools
) else (
    call %localappdata%\bangjago-emulato\adb devices
    msg %username% 'adb device is not connected'
    goto adbTools
  )
)

rem echo==============================================================================================================
rem echo                                     RUNNING EMULATOR ADB
rem echo =============================================================================================================
:runningEmulator
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Emulator USB
echo  2. Emulator Wireless
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "choice action ?"

if %errorlevel% equ 1 goto emulatorUsb
if %errorlevel% equ 2 goto emulatorWireless
if %errorlevel% equ 3 goto adbTools

rem ==============================================================================================================
rem                                       RUNNING EMULATOR USB
rem ==============================================================================================================
:emulatorUsb
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\bangjago-emulator\scrcpy.exe" (
  call %localappdata%\bangjago-emulator\usb.bat
  goto adbTools
) else (
  msg %username% 'android emulator is not running'
  goto adbTools
)

rem ==============================================================================================================
rem                                       RUNNING EMULATOR WIRELESS
rem ==============================================================================================================
:emulatorWireless
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\bangjago-emulator\scrcpy.exe" (
  call %localappdata%\bangjago-emulator\wireless.bat
  goto adbTools
) else (
  msg %username% 'android emulator is not running'
  goto adbTools
)

rem ==============================================================================================================
rem ==============================================================================================================
rem ==============================================================================================================
rem
rem                                               SDK TOOLS
rem
rem ==============================================================================================================
:sdkTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Google System Images
echo  2. Default System Images
echo  3. Tv System Images
echo  4. Wear System Images
echo  5. Google Playstore System Images
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:123450 /m "please select vendor system-images version ?"

:imageSdkList
if %errorlevel% equ 1 goto googleImageList
if %errorlevel% equ 2 goto androidImagesList
if %errorlevel% equ 3 goto tvImageList
if %errorlevel% equ 4 goto wearImageList
if %errorlevel% equ 5 goto googlepImageList
if %errorlevel% equ 6 goto appStart

rem echo==============================================================================================================
rem echo                                     PHONE GOOGLE IMAGE LIST SDK MANAGER
rem echo =============================================================================================================
:googleImageList
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Jelly Bean
echo  2. Kitkat
echo  3. Lolipop
echo  4. Marshmallow
echo  5. Nouget
echo  6. Oreo
echo  7. Pie
echo  8. Q
echo  9. R
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:1234567890 /m "please select android sdk version ?"

if %errorlevel% equ 1 goto jellyBeanListGoogle
if %errorlevel% equ 2 goto kitkatListGoogle
if %errorlevel% equ 3 goto lolipopListGoogle
if %errorlevel% equ 4 goto marshmallowListGoogle
if %errorlevel% equ 5 goto nougetListGoogle
if %errorlevel% equ 6 goto oreoListGoogle
if %errorlevel% equ 7 goto pieListGoogle
if %errorlevel% equ 8 goto qListGoogle
if %errorlevel% equ 9 goto rListGoogle
if %errorlevel% equ 10 goto sdkTools

rem echo==============================================================================================================
rem echo                                    JELLY BEAN LIST GROUP SDK MANAGER
rem echo =============================================================================================================
:jellyBeanListGoogle
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Jelly Bean - 4.1 - x86
echo  2. Jelly Bean - 4.2 - x86
echo  3. Jelly Bean - 4.3 - x86
echo  4. Jelly Bean - 4.1 - armeabi-v7a
echo  5. Jelly Bean - 4.2 - armeabi-v7a
echo  6. Jelly Bean - 4.3 - armeabi-v7a
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:1234560 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto jellyBean41x86g
if %errorlevel% equ 2 goto jellyBean42x86g
if %errorlevel% equ 3 goto jellyBean43x86g
if %errorlevel% equ 4 goto jellyBean41Armv7ag
if %errorlevel% equ 5 goto jellyBean42Armv7ag
if %errorlevel% equ 6 goto jellyBean43Armv7ag
if %errorlevel% equ 7 goto googleImageList

:jellyBean41x86g
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-16\google_apis\x86" (
   msg %username% 'system-images android sdk already exist'
   goto jellyBeanListGoogle
 ) else (
   call sdkmanager system-images;android-16;google_apis;x86
   call sdkmanager "platform-tools" "platforms;android-16"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-16\google_apis\x86" (
    msg %username% 'system-images android sdk already exist'
    goto jellyBeanListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-16;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-16"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:jellyBean42x86g
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-17\google_apis\x86" (
   msg %username% 'system-images android sdk already exist'
   goto jellyBeanListGoogle
 ) else (
    call sdkmanager system-images;android-17;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-17"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-17\google_apis\x86" (
    msg %username% 'system-images android sdk already exist'
    goto jellyBeanListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-17;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-17"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:jellyBean43x86g
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-18\google_apis\x86" (
   msg %username% 'system-images android sdk already exist'
   goto jellyBeanListGoogle
 ) else (
   call sdkmanager system-images;android-18;google_apis;x86
   call sdkmanager "platform-tools" "platforms;android-18"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-18\google_apis\x86" (
    msg %username% 'system-images android sdk already exist'
    goto jellyBeanListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-18;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-18"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:jellyBean41Armv7ag
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-16\google_apis\armeabi-v7a" (
   msg %username% 'system-images android sdk already exist'
   goto jellyBeanListGoogle
 ) else (
   call sdkmanager system-images;android-16;google_apis;armeabi-v7a
   call sdkmanager "platform-tools" "platforms;android-16"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-16\google_apis\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto jellyBeanListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-16;google_apis;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-16"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:jellyBean42Armv7ag
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-17\google_apis\armeabi-v7a" (
   msg %username% 'system-images android sdk already exist'
   goto jellyBeanListGoogle
 ) else (
   call sdkmanager system-images;android-17;google_apis;armeabi-v7a
   call sdkmanager "platform-tools" "platforms;android-17"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-17\google_apis\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto jellyBeanListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-17;google_apis;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-17"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:jellyBean43Armv7ag
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-18\google_apis\armeabi-v7a" (
   msg %username% 'system-images android sdk already exist'
   goto jellyBeanListGoogle
 ) else (
   call sdkmanager system-images;android-18;google_apis;armeabi-v7a
   call sdkmanager "platform-tools" "platforms;android-18"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-18\google_apis\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto jellyBeanListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-18;google_apis;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-18"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem echo==============================================================================================================
rem echo                                    KITKAT LIST GROUP SDK MANAGER
rem echo =============================================================================================================
:kitkatListGoogle
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Kitkat - 4.4 - x86
echo  2. Kitkat - 4.4 - armeabi-v7a
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto kitkat44x86g
if %errorlevel% equ 2 goto kitkat44Armv7ag
if %errorlevel% equ 3 goto googleImageList

:kitkat44x86g
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-19\google_apis\x86" (
   msg %username% 'system-images android sdk already exist'
   goto kitkatListGoogle
 ) else (
   call sdkmanager system-images;android-19;google_apis;x86
   call sdkmanager "platform-tools" "platforms;android-19"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-19\google_apis\x86" (
    msg %username% 'system-images android sdk already exist'
    goto kitkatListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-19;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-19"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:kitkat44Armv7ag
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-19\google_apis\armeabi-v7a" (
   msg %username% 'system-images android sdk already exist'
   goto kitkatListGoogle
 ) else (
   call sdkmanager system-images;android-19;google_apis;armeabi-v7a
   call sdkmanager "platform-tools" "platforms;android-19"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-19\google_apis\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto kitkatListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-19;google_apis;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-19"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem echo==============================================================================================================
rem echo                                    LOLIPOP LIST GROUP SDK MANAGER
rem echo =============================================================================================================
:lolipopListGoogle
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Lolipop - 5.0 - x86
echo  2. Lolipop - 5.1 - x86
echo  3. Lolipop - 5.0 - x86_64
echo  4. Lolipop - 5.1 - x86_64
echo  5. Lolipop - 5.0 - armeabi-v7a
echo  6. Lolipop - 5.1 - armeabi-v7a
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:1234560 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto lolipop50x86g
if %errorlevel% equ 2 goto lolipop51x86g
if %errorlevel% equ 3 goto lolipop50x86_64g
if %errorlevel% equ 4 goto lolipop51x86_64g
if %errorlevel% equ 5 goto lolipop50Armv7ag
if %errorlevel% equ 6 goto lolipop51Armv7ag
if %errorlevel% equ 7 goto googleImageList

:lolipop50x86g
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-21\google_apis\x86" (
   msg %username% 'system-images android sdk already exist'
   goto lolipopListGoogle
 ) else (
   call sdkmanager system-images;android-21;google_apis;x86
   call sdkmanager "platform-tools" "platforms;android-21"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-21\google_apis\x86" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-21;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-21"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:lolipop51x86g
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-22\google_apis\x86" (
   msg %username% 'system-images android sdk already exist'
   goto lolipopListGoogle
 ) else (
   call sdkmanager system-images;android-22;google_apis;x86
   call sdkmanager "platform-tools" "platforms;android-22"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-22\google_apis\x86" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-22;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-22"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:lolipop50x86_64g
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-21\google_apis\x86_64" (
   msg %username% 'system-images android sdk already exist'
   goto lolipopListGoogle
 ) else (
   call sdkmanager system-images;android-21;google_apis;x86_64
   call sdkmanager "platform-tools" "platforms;android-21"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-21\google_apis\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-21;google_apis;x86_64
    call sdkmanager "platform-tools" "platforms;android-21"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:lolipop51x86_64g
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-22\google_apis\x86_64" (
   msg %username% 'system-images android sdk already exist'
   goto lolipopListGoogle
 ) else (
   call sdkmanager system-images;android-22;google_apis;x86_64
   call sdkmanager "platform-tools" "platforms;android-22"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-22\google_apis\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-22;google_apis;x86_64
    call sdkmanager "platform-tools" "platforms;android-22"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:lolipop50Armv7ag
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-21\google_apis\armeabi-v7a" (
   msg %username% 'system-images android sdk already exist'
   goto lolipopListGoogle
 ) else (
   call sdkmanager system-images;android-21;google_apis;armeabi-v7a
   call sdkmanager "platform-tools" "platforms;android-21"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-21\google_apis\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-21;google_apis;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-21"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:lolipop51Armv7ag
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-22\google_apis\armeabi-v7a" (
   msg %username% 'system-images android sdk already exist'
   goto lolipopListGoogle
 ) else (
   call sdkmanager system-images;android-22;google_apis;armeabi-v7a
   call sdkmanager "platform-tools" "platforms;android-22"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-22\google_apis\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-22;google_apis;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-22"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem echo==============================================================================================================
rem echo                                    MARSMELLOW LIST GROUP SDK MANAGER
rem echo =============================================================================================================
:marshmallowListGoogle
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Marshmallow - 6.0 - x86
echo  2. Marshmallow - 6.0 - x86_64
echo  3. Marshmallow - 6.0 - armeabi-v7a
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:1230 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto marsmallow60x86g
if %errorlevel% equ 2 goto marsmallow60x86_64g
if %errorlevel% equ 3 goto marsmallow60Armv7ag
if %errorlevel% equ 4 goto googleImageList

:marsmallow60x86g
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\google_apis\x86" (
   msg %username% 'system-images android sdk already exist'
   goto marshmallowListGoogle
 ) else (
   call sdkmanager system-images;android-23;google_apis;x86
   call sdkmanager "platform-tools" "platforms;android-23"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\google_apis\x86" (
    msg %username% 'system-images android sdk already exist'
    goto marshmallowListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-23;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-23"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:marsmallow60x86_64g
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\google_apis\x86_64" (
   msg %username% 'system-images android sdk already exist'
   goto marshmallowListGoogle
 ) else (
   call sdkmanager system-images;android-23;google_apis;x86_64
   call sdkmanager "platform-tools" "platforms;android-23"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\google_apis\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto marshmallowListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-23;google_apis;x86_64
    call sdkmanager "platform-tools" "platforms;android-23"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:marsmallow60Armv7ag
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\google_apis\armeabi-v7a" (
   msg %username% 'system-images android sdk already exist'
   goto marshmallowListGoogle
 ) else (
   call sdkmanager system-images;android-23;google_apis;armeabi-v7a
   call sdkmanager "platform-tools" "platforms;android-23"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\google_apis\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto marshmallowListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-23;google_apis;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-23"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem echo==============================================================================================================
rem echo                                    NOUGET LIST GROUP SDK MANAGER
rem echo =============================================================================================================
:nougetListGoogle
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Nouget - 7.0 - x86
echo  2. Nouget - 7.1 - x86
echo  3. Nouget - 7.0 - x86_64
echo  4. Nouget - 7.1 - x86_64
echo  5. Nouget - 7.0 - armeabi-v8a
echo  6. Nouget - 7.1 - armeabi-v8a
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:1234560 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto nouget70x86g
if %errorlevel% equ 2 goto nouget71x86g
if %errorlevel% equ 3 goto nouget70x86_64g
if %errorlevel% equ 4 goto nouget71x86_64g
if %errorlevel% equ 5 goto nouget70Armv8ag
if %errorlevel% equ 6 goto nouget71Armv8ag
if %errorlevel% equ 7 goto googleImageList

:nouget70x86g
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-24\google_apis\x86" (
   msg %username% 'system-images android sdk already exist'
   goto nougetListGoogle
 ) else (
   call sdkmanager system-images;android-24;google_apis;x86
   call sdkmanager "platform-tools" "platforms;android-24"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-24\google_apis\x86" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-24;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-24"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:nouget71x86g
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-25\google_apis\x86" (
   msg %username% 'system-images android sdk already exist'
   goto nougetListGoogle
 ) else (
   call sdkmanager system-images;android-25;google_apis;x86
   call sdkmanager "platform-tools" "platforms;android-25"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-25\google_apis\x86" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-25;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-25"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:nouget70x86_64g
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-24\google_apis\x86_64" (
   msg %username% 'system-images android sdk already exist'
   goto nougetListGoogle
 ) else (
   call sdkmanager system-images;android-24;google_apis;x86_64
   call sdkmanager "platform-tools" "platforms;android-24"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-24\google_apis\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-24;google_apis;x86_64
    call sdkmanager "platform-tools" "platforms;android-24"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:nouget71x86_64g
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-25\google_apis\x86_64" (
   msg %username% 'system-images android sdk already exist'
   goto nougetListGoogle
 ) else (
   call sdkmanager system-images;android-25;google_apis;x86_64
   call sdkmanager "platform-tools" "platforms;android-25"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-25\google_apis\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-25;google_apis;x86_64
    call sdkmanager "platform-tools" "platforms;android-25"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:nouget70Armv8ag
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-24\google_apis\arm64-v8a" (
   msg %username% 'system-images android sdk already exist'
   goto nougetListGoogle
 ) else (
   call sdkmanager system-images;android-24;google_apis;arm64-v8a
   call sdkmanager "platform-tools" "platforms;android-24"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-24\google_apis\arm64-v8a" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-24;google_apis;arm64-v8a
    call sdkmanager "platform-tools" "platforms;android-24"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:nouget71Armv8ag
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-25\google_apis\arm64-v8a" (
   msg %username% 'system-images android sdk already exist'
   goto nougetListGoogle
 ) else (
   call sdkmanager system-images;android-25;google_apis;arm64-v8a
   call sdkmanager "platform-tools" "platforms;android-25"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-25\google_apis\arm64-v8a" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-25;google_apis;arm64-v8a
    call sdkmanager "platform-tools" "platforms;android-25"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem echo==============================================================================================================
rem echo                                    OREO LIST GROUP SDK MANAGER
rem echo =============================================================================================================
:oreoListGoogle
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Oreo - 7.0 - x86
echo  2. Oreo - 7.1 - x86
echo  3. Oreo - 7.0 - x86_64
echo  4. Oreo - 7.1 - x86_64
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:12340 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto oreo80x86g
if %errorlevel% equ 2 goto oreo81x86g
if %errorlevel% equ 3 goto oreo80x86_64g
if %errorlevel% equ 4 goto oreo81x86_64g
if %errorlevel% equ 5 goto googleImageList

:oreo80x86g
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-26\google_apis\x86" (
   msg %username% 'system-images android sdk already exist'
   goto oreoListGoogle
 ) else (
   call sdkmanager system-images;android-26;google_apis;x86
   call sdkmanager "platform-tools" "platforms;android-26"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-26\google_apis\x86" (
    msg %username% 'system-images android sdk already exist'
    goto oreoListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-26;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-26"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:oreo81x86g
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-27\google_apis\x86" (
   msg %username% 'system-images android sdk already exist'
   goto oreoListGoogle
 ) else (
   call sdkmanager system-images;android-27;google_apis;x86
   call sdkmanager "platform-tools" "platforms;android-27"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-27\google_apis\x86" (
    msg %username% 'system-images android sdk already exist'
    goto oreoListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-27;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-27"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:oreo80x86_64g
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-26\google_apis\x86_64" (
   msg %username% 'system-images android sdk already exist'
   goto oreoListGoogle
 ) else (
   call sdkmanager system-images;android-26;google_apis;x86_64
   call sdkmanager "platform-tools" "platforms;android-26"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-26\google_apis\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto oreoListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-26;google_apis;x86_64
    call sdkmanager "platform-tools" "platforms;android-26"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:oreo81x86_64g
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-27\google_apis\x86_64" (
   msg %username% 'system-images android sdk already exist'
   goto oreoListGoogle
 ) else (
   call sdkmanager system-images;android-27;google_apis;x86_64
   call sdkmanager "platform-tools" "platforms;android-27"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-27\google_apis\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto oreoListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-27;google_apis;x86_64
    call sdkmanager "platform-tools" "platforms;android-27"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem echo==============================================================================================================
rem echo                                    PIE LIST GROUP SDK MANAGER
rem echo =============================================================================================================
:pieListGoogle
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Pie - 9.0 - x86_64
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto pie90x86_64g
if %errorlevel% equ 2 goto googleImageList

:pie90x86_64g
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-28\google_apis\x86_64" (
   msg %username% 'system-images android sdk already exist'
   goto pieListGoogle
 ) else (
   call sdkmanager system-images;android-28;google_apis;x86_64
   call sdkmanager "platform-tools" "platforms;android-28"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-28\google_apis\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto pieListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-28;google_apis;x86_64
    call sdkmanager "platform-tools" "platforms;android-28"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem echo==============================================================================================================
rem echo                                    Q LIST GROUP SDK MANAGER
rem echo =============================================================================================================
:qListGoogle
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Q - 10.0 - x86
echo  2. Q - 10.0 - x86_64
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto q100x86g
if %errorlevel% equ 2 goto q100x86_64g
if %errorlevel% equ 3 goto googleImageList

:q100x86
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-29\google_apis\x86" (
   msg %username% 'system-images android sdk already exist'
   goto qListGoogle
 ) else (
   call sdkmanager system-images;android-29;google_apis;x86
   call sdkmanager "platform-tools" "platforms;android-29"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-29\google_apis\x86" (
    msg %username% 'system-images android sdk already exist'
    goto qListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-29;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-29"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:q100x86_64g
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-29\google_apis\x86_64" (
   msg %username% 'system-images android sdk already exist'
   goto qListGoogle
 ) else (
   call sdkmanager system-images;android-29;google_apis;x86_64
   call sdkmanager "platform-tools" "platforms;android-29"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-29\google_apis\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto qListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-29;google_apis;x86_64
    call sdkmanager "platform-tools" "platforms;android-29"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem echo==============================================================================================================
rem echo                                    R LIST GROUP SDK MANAGER
rem echo =============================================================================================================
:rListGoogle
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. R - 11.0 - x86
echo  2. R - 11.0 - x86_64
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto r110x86g
if %errorlevel% equ 2 goto r110x86_64g
if %errorlevel% equ 3 goto googleImageList

:r110x86g
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-30\google_apis\x86" (
   msg %username% 'system-images android sdk already exist'
   goto rListGoogle
 ) else (
   call sdkmanager system-images;android-30;google_apis;x86
   call sdkmanager "platform-tools" "platforms;android-30"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-30\google_apis\x86" (
    msg %username% 'system-images android sdk already exist'
    goto rListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-30;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-30"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:r110x86_64g
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-30\google_apis\x86_64" (
   msg %username% 'system-images android sdk already exist'
   goto rListGoogle
 ) else (
   call sdkmanager system-images;android-30;google_apis;x86_64
   call sdkmanager "platform-tools" "platforms;android-30"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-30\google_apis\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto rListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-30;google_apis;x86_64
    call sdkmanager "platform-tools" "platforms;android-30"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem echo==============================================================================================================
rem echo                                    PHONE ANDROID IMAGE LIST SDK MANAGER
rem echo =============================================================================================================
:androidImagesList
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Jelly Bean
echo  2. Kitkat
echo  3. Lolipop
echo  4. Marshmallow
echo  5. Nouget
echo  6. Oreo
echo  7. Pie
echo  8. Q
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:123456780 /m "please select android sdk version ?"

if %errorlevel% equ 1 goto jellyBeanListDefault
if %errorlevel% equ 2 goto kitkatListDefault
if %errorlevel% equ 3 goto lolipopListDefault
if %errorlevel% equ 4 goto marshmallowListDefault
if %errorlevel% equ 5 goto nougetListDefault
if %errorlevel% equ 6 goto oreoListDefault
if %errorlevel% equ 7 goto pieListDefault
if %errorlevel% equ 8 goto qListDefault
if %errorlevel% equ 9 goto sdkTools

rem echo==============================================================================================================
rem echo                                    JELLY BEAN LIST GROUP SDK MANAGER
rem echo =============================================================================================================
:jellyBeanListDefault
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Jelly Bean - 4.1 - x86
echo  2. Jelly Bean - 4.2 - x86
echo  3. Jelly Bean - 4.3 - x86
echo  4. Jelly Bean - 4.1 - armeabi-v7a
echo  5. Jelly Bean - 4.2 - armeabi-v7a
echo  6. Jelly Bean - 4.3 - armeabi-v7a
echo  0. Back
echo off &echo.&echo off

choice /n /c:1234560 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto jellyBean41x86d
if %errorlevel% equ 2 goto jellyBean42x86d
if %errorlevel% equ 3 goto jellyBean43x86d
if %errorlevel% equ 4 goto jellyBean41Armv7ad
if %errorlevel% equ 5 goto jellyBean42Armv7ad
if %errorlevel% equ 6 goto jellyBean43Armv7ad
if %errorlevel% equ 7 goto androidImagesList

:jellyBean41x86d
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-16\default\x86" (
   msg %username% 'system-images android sdk already exist'
   goto jellyBeanListDefault
 ) else (
   call sdkmanager system-images;android-16;default;x86
   call sdkmanager "platform-tools" "platforms;android-16"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-16\default\x86" (
    msg %username% 'system-images android sdk already exist'
    goto jellyBeanListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-16;default;x86
    call sdkmanager "platform-tools" "platforms;android-16"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:jellyBean42x86d
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-17\default\x86" (
   msg %username% 'system-images android sdk already exist'
   goto jellyBeanListDefault
 ) else (
   call sdkmanager system-images;android-17;default;x86
   call sdkmanager "platform-tools" "platforms;android-17"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-17\default\x86" (
    msg %username% 'system-images android sdk already exist'
    goto jellyBeanListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-17;default;x86
    call sdkmanager "platform-tools" "platforms;android-17"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:jellyBean43x86d
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-18\default\x86" (
   msg %username% 'system-images android sdk already exist'
   goto jellyBeanListDefault
 ) else (
   call sdkmanager system-images;android-18;default;x86
   call sdkmanager "platform-tools" "platforms;android-18"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-18\default\x86" (
    msg %username% 'system-images android sdk already exist'
    goto jellyBeanListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-18;default;x86
    call sdkmanager "platform-tools" "platforms;android-18"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:jellyBean41Armv7ad
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-16\default\armeabi-v7a" (
   msg %username% 'system-images android sdk already exist'
   goto jellyBeanListDefault
 ) else (
   call sdkmanager system-images;android-16;default;armeabi-v7a
   call sdkmanager "platform-tools" "platforms;android-16"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-16\default\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto jellyBeanListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-16;default;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-16"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:jellyBean42Armv7ad
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-17\default\armeabi-v7a" (
   msg %username% 'system-images android sdk already exist'
   goto jellyBeanListDefault
 ) else (
   call sdkmanager system-images;android-17;default;armeabi-v7a
   call sdkmanager "platform-tools" "platforms;android-17"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-17\default\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto jellyBeanListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-17;default;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-17"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:jellyBean43Armv7ad
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-18\default\armeabi-v7a" (
   msg %username% 'system-images android sdk already exist'
   goto jellyBeanListDefault
 ) else (
   call sdkmanager system-images;android-18;default;armeabi-v7a
   call sdkmanager "platform-tools" "platforms;android-18"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-18\default\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto jellyBeanListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-18;default;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-18"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem echo==============================================================================================================
rem echo                                    KITKAT LIST GROUP SDK MANAGER
rem echo =============================================================================================================
:kitkatListDefault
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Kitkat - 4.4 - x86
echo  2. Kitkat - 4.4 - armeabi-v7a
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto kitkat44x86d
if %errorlevel% equ 2 goto kitkat44Armv7ad
if %errorlevel% equ 3 goto androidImagesList

:kitkat44x86d
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-19\default\x86" (
   msg %username% 'system-images android sdk already exist'
   goto kitkatListDefault
 ) else (
   call sdkmanager system-images;android-19;default;x86
   call sdkmanager "platform-tools" "platforms;android-19"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-19\default\x86" (
    msg %username% 'system-images android sdk already exist'
    goto kitkatListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-19;default;x86
    call sdkmanager "platform-tools" "platforms;android-19"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:kitkat44Armv7ad
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-19\default\armeabi-v7a" (
   msg %username% 'system-images android sdk already exist'
   goto kitkatListDefault
 ) else (
   call sdkmanager system-images;android-19;default;armeabi-v7a
   call sdkmanager "platform-tools" "platforms;android-19"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-19\default\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto kitkatListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-19;default;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-19"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem echo==============================================================================================================
rem echo                                    LOLIPOP LIST GROUP SDK MANAGER
rem echo =============================================================================================================
:lolipopListDefault
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Lolipop - 5.0 - x86
echo  2. Lolipop - 5.1 - x86
echo  3. Lolipop - 5.0 - x86_64
echo  4. Lolipop - 5.1 - x86_64
echo  5. Lolipop - 5.0 - armeabi-v7a
echo  6. Lolipop - 5.1 - armeabi-v7a
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:1234560 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto lolipop50x86d
if %errorlevel% equ 2 goto lolipop51x86d
if %errorlevel% equ 3 goto lolipop50x86_64d
if %errorlevel% equ 4 goto lolipop51x86_64d
if %errorlevel% equ 5 goto lolipop50Armv7ad
if %errorlevel% equ 6 goto lolipop51Armv7ad
if %errorlevel% equ 7 goto androidImagesList

:lolipop50x86d
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo            WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-21\default\x86" (
   msg %username% 'system-images android sdk already exist'
   goto lolipopListDefault
 ) else (
   call sdkmanager system-images;android-21;default;x86
   call sdkmanager "platform-tools" "platforms;android-21"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-21\default\x86" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-21;default;x86
    call sdkmanager "platform-tools" "platforms;android-21"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:lolipop51x86d
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo            WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-22\default\x86" (
   msg %username% 'system-images android sdk already exist'
   goto lolipopListDefault
 ) else (
   call sdkmanager system-images;android-22;default;x86
   call sdkmanager "platform-tools" "platforms;android-22"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-22\default\x86" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-22;default;x86
    call sdkmanager "platform-tools" "platforms;android-22"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:lolipop50x86_64d
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-21\default\x86_64" (
   msg %username% 'system-images android sdk already exist'
   goto lolipopListDefault
 ) else (
   call sdkmanager system-images;android-21;default;x86_64
   call sdkmanager "platform-tools" "platforms;android-21"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-21\default\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-21;default;x86_64
    call sdkmanager "platform-tools" "platforms;android-21"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:lolipop51x86_64d
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-22\default\x86_64" (
   msg %username% 'system-images android sdk already exist'
   goto lolipopListDefault
 ) else (
   call sdkmanager system-images;android-22;default;x86_64
   call sdkmanager "platform-tools" "platforms;android-22"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-22\default\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-22;default;x86_64
    call sdkmanager "platform-tools" "platforms;android-22"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:lolipop50Armv7ad
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-21\default\armeabi-v7a" (
   msg %username% 'system-images android sdk already exist'
   goto lolipopListDefault
 ) else (
   call sdkmanager system-images;android-21;default;armeabi-v7a
   call sdkmanager "platform-tools" "platforms;android-21"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-21\default\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-21;default;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-21"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:lolipop51Armv7ad
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-22\default\armeabi-v7a" (
   msg %username% 'system-images android sdk already exist'
   goto lolipopListDefault
 ) else (
   call sdkmanager system-images;android-22;default;armeabi-v7a
   call sdkmanager "platform-tools" "platforms;android-22"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-22\default\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-22;default;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-22"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem echo==============================================================================================================
rem echo                                    MARSMELLOW LIST GROUP SDK MANAGER
rem echo =============================================================================================================
:marshmallowListDefault
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Marshmallow - 6.0 - x86
echo  2. Marshmallow - 6.0 - x86_64
echo  3. Marshmallow - 6.0 - armeabi-v7a
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:1230 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto marsmallow60x86d
if %errorlevel% equ 2 goto marsmallow60x86_64d
if %errorlevel% equ 3 goto marsmallow60Armv7ad
if %errorlevel% equ 4 goto androidImagesList

:marsmallow60x86d
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\default\x86" (
   msg %username% 'system-images android sdk already exist'
   goto marshmallowListDefault
 ) else (
   call sdkmanager system-images;android-23;default;x86
   call sdkmanager "platform-tools" "platforms;android-23"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\default\x86" (
    msg %username% 'system-images android sdk already exist'
    goto marshmallowListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-23;default;x86
    call sdkmanager "platform-tools" "platforms;android-23"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:marsmallow60x86_64d
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\default\x86_64" (
   msg %username% 'system-images android sdk already exist'
   goto marshmallowListDefault
 ) else (
   call sdkmanager system-images;android-23;default;x86_64
   call sdkmanager "platform-tools" "platforms;android-23"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\default\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto marshmallowListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-23;default;x86_64
    call sdkmanager "platform-tools" "platforms;android-23"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:marsmallow60Armv7ad
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\default\armeabi-v7a" (
   msg %username% 'system-images android sdk already exist'
   goto marshmallowListDefault
 ) else (
   call sdkmanager system-images;android-23;default;armeabi-v7a
   call sdkmanager "platform-tools" "platforms;android-23"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\default\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto marshmallowListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-23;default;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-23"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem echo==============================================================================================================
rem echo                                    NOUGET LIST GROUP SDK MANAGER
rem echo =============================================================================================================
:nougetListDefault
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Nouget - 7.0 - x86
echo  2. Nouget - 7.1 - x86
echo  3. Nouget - 7.0 - x86_64
echo  4. Nouget - 7.1 - x86_64
echo  5. Nouget - 7.0 - armeabi-v7a
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:123450 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto nouget70x86d
if %errorlevel% equ 2 goto nouget71x86d
if %errorlevel% equ 3 goto nouget70x86_64d
if %errorlevel% equ 4 goto nouget71x86_64d
if %errorlevel% equ 5 goto nouget70Armv7ad
if %errorlevel% equ 6 goto androidImagesList

:nouget70x86d
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-24\default\x86" (
   msg %username% 'system-images android sdk already exist'
   goto nougetListDefault
 ) else (
   call sdkmanager system-images;android-24;default;x86
   call sdkmanager "platform-tools" "platforms;android-24"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-24\default\x86" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-24;default;x86
    call sdkmanager "platform-tools" "platforms;android-24"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:nouget71x86d
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-25\default\x86" (
   msg %username% 'system-images android sdk already exist'
   goto nougetListDefault
 ) else (
   call sdkmanager system-images;android-25;default;x86
   call sdkmanager "platform-tools" "platforms;android-25"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-25\default\x86" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-25;default;x86
    call sdkmanager "platform-tools" "platforms;android-25"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:nouget70x86_64d
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-24\default\x86_64" (
   msg %username% 'system-images android sdk already exist'
   goto nougetListDefault
 ) else (
   call sdkmanager system-images;android-24;default;x86_64
   call sdkmanager "platform-tools" "platforms;android-24"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-24\default\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-24;default;x86_64
    call sdkmanager "platform-tools" "platforms;android-24"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:nouget71x86_64d
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-25\default\x86_64" (
   msg %username% 'system-images android sdk already exist'
   goto nougetListDefault
 ) else (
   call sdkmanager system-images;android-25;default;x86_64
   call sdkmanager "platform-tools" "platforms;android-25"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-25\default\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-25;default;x86_64
    call sdkmanager "platform-tools" "platforms;android-25"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:nouget70Armv7ad
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-24\default\armeabi-v7a" (
   msg %username% 'system-images android sdk already exist'
   goto nougetListDefault
 ) else (
   call sdkmanager system-images;android-24;default;armeabi-v7a
   call sdkmanager "platform-tools" "platforms;android-24"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-24\default\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-24;default;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-24"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem echo==============================================================================================================
rem echo                                    OREO LIST GROUP SDK MANAGER
rem echo =============================================================================================================
:oreoListDefault
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Oreo - 7.0 - x86
echo  2. Oreo - 7.1 - x86
echo  3. Oreo - 7.0 - x86_64
echo  4. Oreo - 7.1 - x86_64
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:12340 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto oreo80x86d
if %errorlevel% equ 2 goto oreo81x86d
if %errorlevel% equ 3 goto oreo80x86_64d
if %errorlevel% equ 4 goto oreo81x86_64d
if %errorlevel% equ 5 goto androidImagesList

:oreo80x86d
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-26\default\x86" (
   msg %username% 'system-images android sdk already exist'
   goto oreoListDefault
 ) else (
   call sdkmanager system-images;android-26;default;x86
   call sdkmanager "platform-tools" "platforms;android-26"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-26\default\x86" (
    msg %username% 'system-images android sdk already exist'
    goto oreoListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-26;default;x86
    call sdkmanager "platform-tools" "platforms;android-26"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:oreo81x86d
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-27\default\x86" (
   msg %username% 'system-images android sdk already exist'
   goto oreoListDefault
 ) else (
   call sdkmanager system-images;android-27;default;x86
   call sdkmanager "platform-tools" "platforms;android-27"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-27\default\x86" (
    msg %username% 'system-images android sdk already exist'
    goto oreoListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-27;default;x86
    call sdkmanager "platform-tools" "platforms;android-27"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:oreo80x86_64d
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-26\default\x86_64" (
   msg %username% 'system-images android sdk already exist'
   goto oreoListDefault
 ) else (
   call sdkmanager system-images;android-26;default;x86_64
   call sdkmanager "platform-tools" "platforms;android-26"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-26\default\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto oreoListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-26;default;x86_64
    call sdkmanager "platform-tools" "platforms;android-26"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:oreo81x86_64d
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-27\default\x86_64" (
   msg %username% 'system-images android sdk already exist'
   goto oreoListDefault
 ) else (
   call sdkmanager system-images;android-27;default;x86_64
   call sdkmanager "platform-tools" "platforms;android-27"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-27\default\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto oreoListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-27;default;x86_64
    call sdkmanager "platform-tools" "platforms;android-27"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem echo==============================================================================================================
rem echo                                    PIE LIST GROUP SDK MANAGER
rem echo =============================================================================================================
:pieListDefault
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Pie - 9.0 - x86
echo  2. Pie - 9.0 - x86_64
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto pie90x86d
if %errorlevel% equ 2 goto pie90x86_64d
if %errorlevel% equ 3 goto androidImagesList

:pie90x86d
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo            WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-28\default\x86" (
   msg %username% 'system-images android sdk already exist'
   goto pieListDefault
 ) else (
   call sdkmanager system-images;android-28;default;x86
   call sdkmanager "platform-tools" "platforms;android-28"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-28\default\x86" (
    msg %username% 'system-images android sdk already exist'
    goto pieListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-28;default;x86
    call sdkmanager "platform-tools" "platforms;android-28"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:pie90x86_64d
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-28\default\x86_64" (
   msg %username% 'system-images android sdk already exist'
   goto pieListDefault
 ) else (
   call sdkmanager system-images;android-28;default;x86_64
   call sdkmanager "platform-tools" "platforms;android-28"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-28\default\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto pieListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-28;default;x86_64
    call sdkmanager "platform-tools" "platforms;android-28"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem echo==============================================================================================================
rem echo                                    Q LIST GROUP SDK MANAGER
rem echo =============================================================================================================
:qListDefault
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Q - 10.0 - x86
echo  2. Q - 10.0 - x86_64
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto q100x86d
if %errorlevel% equ 2 goto q100x86_64d
if %errorlevel% equ 3 goto androidImagesList

:q100x86d
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-29\default\x86" (
   msg %username% 'system-images android sdk already exist'
   goto qListDefault
 ) else (
   call sdkmanager system-images;android-29;default;x86
   call sdkmanager "platform-tools" "platforms;android-29"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-29\default\x86" (
    msg %username% 'system-images android sdk already exist'
    goto qListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-29;default;x86
    call sdkmanager "platform-tools" "platforms;android-29"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:q100x86_64d
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-29\default\x86_64" (
   msg %username% 'system-images android sdk already exist'
   goto qListDefault
 ) else (
   call sdkmanager system-images;android-29;default;x86_64
   call sdkmanager "platform-tools" "platforms;android-29"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-29\default\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto qListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-29;default;x86_64
    call sdkmanager "platform-tools" "platforms;android-29"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem echo==============================================================================================================
rem echo                                    TV IMAGE LIST SDK MANAGER
rem echo =============================================================================================================
:tvImageList
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Lolipop
echo  2. Marshmallow
echo  3. Nouget
echo  4. Oreo
echo  5. Pie
echo  6. Q
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:1234560 /m "please select android sdk version ?"

if %errorlevel% equ 1 goto lolipopListTvA
if %errorlevel% equ 2 goto marshmallowListTvA
if %errorlevel% equ 3 goto nougetListTvA
if %errorlevel% equ 4 goto oreoListTvA
if %errorlevel% equ 5 goto pieListTvA
if %errorlevel% equ 6 goto qListTvA
if %errorlevel% equ 7 goto sdkTools

:lolipopListTvA
cls
rem echo==============================================================================================================
rem echo                                     LOLIPOP IMAGE LIST SDK MANAGER
rem echo =============================================================================================================
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Lolipop - 5.0 - x86
echo  2. Lolipop - 5.1 - x86
echo  3. Lolipop - 5.0 - armeabi-v7a
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:1230 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto lolipop50x86Tv
if %errorlevel% equ 2 goto lolipop51x86Tv
if %errorlevel% equ 3 goto lolipop50Armv7aTv
if %errorlevel% equ 4 goto tvImageList

:lolipop50x86Tv
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-21\android-tv\x86" (
   msg %username% 'system-images android sdk already exist'
   goto lolipopListTvA
 ) else (
   call sdkmanager system-images;android-21;android-tv;x86
   call sdkmanager "platform-tools" "platforms;android-21"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-21\android-tv\x86" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListTvA
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-21;android-tv;x86
    call sdkmanager "platform-tools" "platforms;android-21"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:lolipop51x86Tv
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-22\android-tv\x86" (
   msg %username% 'system-images android sdk already exist'
   goto lolipopListTvA
 ) else (
   call sdkmanager system-images;android-22;android-tv;x86
   call sdkmanager "platform-tools" "platforms;android-22"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-22\android-tv\x86" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListTvA
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-22;android-tv;x86
    call sdkmanager "platform-tools" "platforms;android-22"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:lolipop50Armv7aTv
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-21\android-tv\armeabi-v7a" (
   msg %username% 'system-images android sdk already exist'
   goto lolipopListTvA
 ) else (
   call sdkmanager system-images;android-21;android-tv;armeabi-v7a
   call sdkmanager "platform-tools" "platforms;android-21"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-21\android-tv\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListTvA
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-21;android-tv;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-21"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:marshmallowListTvA
cls
rem echo==============================================================================================================
rem echo                                     MARSMALLOW IMAGE LIST SDK MANAGER
rem echo =============================================================================================================
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Marshmallow - 6.0 - x86
echo  2. Marshmallow - 6.0 - armeabi-v7a
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto marsmallow60x86Tv
if %errorlevel% equ 2 goto marsmallow60Armv7aTv
if %errorlevel% equ 3 goto tvImageList

:marsmallow60x86Tv
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\android-tv\x86" (
   msg %username% 'system-images android sdk already exist'
   goto marshmallowListTvA
 ) else (
   call sdkmanager system-images;android-23;android-tv;x86
   call sdkmanager "platform-tools" "platforms;android-23"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\android-tv\x86" (
    msg %username% 'system-images android sdk already exist'
    goto marshmallowListTvA
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-23;android-tv;x86
    call sdkmanager "platform-tools" "platforms;android-23"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:marsmallow60Armv7aTv
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\android-tv\armeabi-v7a" (
   msg %username% 'system-images android sdk already exist'
   goto marshmallowListTvA
 ) else (
   call sdkmanager system-images;android-23;android-tv;armeabi-v7a
   call sdkmanager "platform-tools" "platforms;android-23"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\android-tv\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto marshmallowListTvA
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-23;android-tv;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-23"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:nougetListTvA
cls
rem echo==============================================================================================================
rem echo                                     NOUGET IMAGE LIST SDK MANAGER
rem echo =============================================================================================================
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Nouget - 7.0 - x86
echo  2. Nouget - 7.1 - x86
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto nouget70x86Tv
if %errorlevel% equ 2 goto nouget71x86Tv
if %errorlevel% equ 3 goto tvImageList

:nouget70x86Tv
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-24\android-tv\x86" (
   msg %username% 'system-images android sdk already exist'
   goto nougetListTvA
 ) else (
   call sdkmanager system-images;android-24;android-tv;x86
   call sdkmanager "platform-tools" "platforms;android-24"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-24\android-tv\x86" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListTvA
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-24;android-tv;x86
    call sdkmanager "platform-tools" "platforms;android-24"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:nouget71x86Tv
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-24\android-tv\x86" (
   msg %username% 'system-images android sdk already exist'
   goto nougetListTvA
 ) else (
   call sdkmanager system-images;android-24;android-tv;x86
   call sdkmanager "platform-tools" "platforms;android-24"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-24\android-tv\x86" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListTvA
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-24;android-tv;x86
    call sdkmanager "platform-tools" "platforms;android-24"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:oreoListTvA
cls
rem echo==============================================================================================================
rem echo                                     OREO IMAGE LIST SDK MANAGER
rem echo =============================================================================================================
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Oreo - 9.0 - x86
echo  2. Oreo - 9.1 - x86
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto oreo80x86Tv
if %errorlevel% equ 2 goto oreo81x86Tv
if %errorlevel% equ 3 goto tvImageList

:oreo80x86Tv
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-26\android-tv\x86" (
   msg %username% 'system-images android sdk already exist'
   goto oreoListTvA
 ) else (
   call sdkmanager system-images;android-26;android-tv;x86
   call sdkmanager "platform-tools" "platforms;android-26"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-26\android-tv\x86" (
    msg %username% 'system-images android sdk already exist'
    goto oreoListTvA
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-26;android-tv;x86
    call sdkmanager "platform-tools" "platforms;android-26"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:oreo81x86Tv
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-27\android-tv\x86" (
   msg %username% 'system-images android sdk already exist'
   goto oreoListTvA
 ) else (
   call sdkmanager system-images;android-27;android-tv;x86
   call sdkmanager "platform-tools" "platforms;android-27"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-27\android-tv\x86" (
    msg %username% 'system-images android sdk already exist'
    goto oreoListTvA
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-27;android-tv;x86
    call sdkmanager "platform-tools" "platforms;android-27"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:pieListTvA
cls
rem echo==============================================================================================================
rem echo                                     PIE IMAGE LIST SDK MANAGER
rem echo =============================================================================================================
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Pie - 9.0 - x86
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto pie90x86Tv
if %errorlevel% equ 2 goto tvImageList

:pie90x86Tv
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-28\android-tv\x86" (
   msg %username% 'system-images android sdk already exist'
   goto pieListTvA
 ) else (
   call sdkmanager system-images;android-28;android-tv;x86
   call sdkmanager "platform-tools" "platforms;android-28"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-28\android-tv\x86" (
    msg %username% 'system-images android sdk already exist'
    goto pieListTvA
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-28;android-tv;x86
    call sdkmanager "platform-tools" "platforms;android-28"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:qListTvA
cls
rem echo==============================================================================================================
rem echo                                     PIE IMAGE LIST SDK MANAGER
rem echo =============================================================================================================
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Q - 10.0 - x86
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto q100x86Tv
if %errorlevel% equ 2 goto tvImageList

:q100x86Tv
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-29\android-tv\x86" (
   msg %username% 'system-images android sdk already exist'
   goto qListTvA
 ) else (
   call sdkmanager system-images;android-29;android-tv;x86
   call sdkmanager "platform-tools" "platforms;android-29"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-29\android-tv\x86" (
    msg %username% 'system-images android sdk already exist'
    goto qListTvA
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-29;android-tv;x86
    call sdkmanager "platform-tools" "platforms;android-29"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem echo==============================================================================================================
rem echo                                    WEAR IMAGE LIST SDK MANAGER
rem echo =============================================================================================================
:wearImageList
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Marshmallow
echo  2. Nouget
echo  3. Oreo
echo  4. Pie
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:12340 /m "please select android sdk version ?"

if %errorlevel% equ 1 goto marshmallowListWr
if %errorlevel% equ 2 goto nougetListWr
if %errorlevel% equ 3 goto oreoListWr
if %errorlevel% equ 4 goto pieListWr
if %errorlevel% equ 5 goto sdkTools

rem echo==============================================================================================================
rem echo                                 MARSHMALLOW LIST GROUP SDK MANAGER
rem echo =============================================================================================================
:marshmallowListWr
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Marshmallow - 6.0 - x86
echo  2. Marshmallow - 6.0 - armeabi-v7a
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto marshmallow60x86w
if %errorlevel% equ 2 goto marshmallow60Armv7aw
if %errorlevel% equ 3 goto wearImageList

:marshmallow60x86w
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\android-wear\x86" (
   msg %username% 'system-images android sdk already exist'
   goto marshmallowListWr
 ) else (
   call sdkmanager system-images;android-23;android-wear;x86
   call sdkmanager "platform-tools" "platforms;android-23"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\android-wear\x86" (
    msg %username% 'system-images android sdk already exist'
    goto marshmallowListWr
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-23;android-wear;x86
    call sdkmanager "platform-tools" "platforms;android-23"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:marshmallow60Armv7aw
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\android-wear\armeabi-v7a" (
   msg %username% 'system-images android sdk already exist'
   goto marshmallowListWr
 ) else (
   call sdkmanager system-images;android-23;android-wear;armeabi-v7a
   call sdkmanager "platform-tools" "platforms;android-23"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\android-wear\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto marshmallowListWr
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-23;android-wear;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-23"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem echo==============================================================================================================
rem echo                                 NOUGET LIST GROUP SDK MANAGER
rem echo =============================================================================================================
:nougetListWr
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Nouget - 7.1 - x86
echo  2. Nouget - 7.1 - armeabi-v7a
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto nouget71x86w
if %errorlevel% equ 2 goto nouget71Armv7aw
if %errorlevel% equ 3 goto wearImageList

:nouget71x86w
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-25\android-wear\x86" (
   msg %username% 'system-images android sdk already exist'
   goto nougetListWr
 ) else (
   call sdkmanager system-images;android-25;android-wear;x86
   call sdkmanager "platform-tools" "platforms;android-25"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-25\android-wear\x86" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListWr
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-25;android-wear;x86
    call sdkmanager "platform-tools" "platforms;android-25"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:nouget71Armv7aw
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-25\android-wear\armeabi-v7a" (
   msg %username% 'system-images android sdk already exist'
   goto nougetListWr
 ) else (
   call sdkmanager system-images;android-25;android-wear;armeabi-v7a
   call sdkmanager "platform-tools" "platforms;android-25"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-25\android-wear\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListWr
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-25;android-wear;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-25"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem echo==============================================================================================================
rem echo                                 OREO LIST GROUP SDK MANAGER
rem echo =============================================================================================================
:oreoListWr
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Oreo - 8.0 - x86
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto oreo80x86w
if %errorlevel% equ 2 goto wearImageList

:oreo80x86w
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-26\android-wear\x86" (
   msg %username% 'system-images android sdk already exist'
   goto oreoListWr
 ) else (
   call sdkmanager system-images;android-26;android-wear;x86
   call sdkmanager "platform-tools" "platforms;android-26"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-26\android-wear\x86" (
    msg %username% 'system-images android sdk already exist'
    goto oreoListWr
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-26;android-wear;x86
    call sdkmanager "platform-tools" "platforms;android-23"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem echo==============================================================================================================
rem echo                                 PIE LIST GROUP SDK MANAGER
rem echo =============================================================================================================
:pieListWr
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Pie - 9.0 - x86
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto pie90x86w
if %errorlevel% equ 2 goto wearImageList

:pie90x86w
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-28\android-wear\x86" (
   msg %username% 'system-images android sdk already exist'
   goto pieListWr
 ) else (
   call sdkmanager system-images;android-28;android-wear;x86
   call sdkmanager "platform-tools" "platforms;android-28"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-28\android-wear\x86" (
    msg %username% 'system-images android sdk already exist'
    goto pieListWr
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-28;android-wear;x86
    call sdkmanager "platform-tools" "platforms;android-23"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem echo==============================================================================================================
rem echo                                 GOOGLE PLAYSTORE IMAGE LIST SDK MANAGER
rem echo =============================================================================================================
:googlepImageList
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Nouget
echo  2. Oreo
echo  3. Pie
echo  4. Q
echo  5. R
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:123450 /m "please select android sdk version ?"

if %errorlevel% equ 1 goto nougetListGp
if %errorlevel% equ 2 goto oreoListGp
if %errorlevel% equ 3 goto pieListGp
if %errorlevel% equ 4 goto qListGp
if %errorlevel% equ 5 goto rListGp
if %errorlevel% equ 6 goto sdkTools

rem echo==============================================================================================================
rem echo                                MARSHMALLOW LIST GROUP SDK MANAGER
rem echo =============================================================================================================
:nougetListGp
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Nouget - 7.0 - x86
echo  2. Nouget - 7.1 - x86
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto nouget24x86gp
if %errorlevel% equ 2 goto nouget25x86gp
if %errorlevel% equ 3 goto googlepImageList

:nouget24x86gp
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-24\google_apis_playstore\x86" (
   msg %username% 'system-images android sdk already exist'
   goto nougetListGp
 ) else (
   call sdkmanager system-images;android-24;google_apis_playstore;x86
   call sdkmanager "platform-tools" "platforms;android-24"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-24\google_apis_playstore\x86" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListGp
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-24;google_apis_playstore;x86
    call sdkmanager "platform-tools" "platforms;android-23"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:nouget25x86gp
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-25\google_apis_playstore\x86" (
   msg %username% 'system-images android sdk already exist'
   goto nougetListGp
 ) else (
   call sdkmanager system-images;android-25;google_apis_playstore;x86
   call sdkmanager "platform-tools" "platforms;android-25"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-25\google_apis_playstore\x86" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListGp
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-25;google_apis_playstore;x86
    call sdkmanager "platform-tools" "platforms;android-23"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem echo==============================================================================================================
rem echo                                OREO LIST GROUP SDK MANAGER
rem echo =============================================================================================================
:oreoListGp
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Oreo - 8.0 - x86
echo  2. Oreo - 8.1 - x86
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto oreo80x86Gp
if %errorlevel% equ 2 goto oreo81x86Gp
if %errorlevel% equ 3 goto googlepImageList

:oreo80x86Gp
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-26\google_apis_playstore\x86" (
   msg %username% 'system-images android sdk already exist'
   goto oreoListGp
 ) else (
   call sdkmanager system-images;android-26;google_apis_playstore;x86
   call sdkmanager "platform-tools" "platforms;android-26"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-26\google_apis_playstore\x86" (
    msg %username% 'system-images android sdk already exist'
    goto oreoListGp
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-26;google_apis_playstore;x86
    call sdkmanager "platform-tools" "platforms;android-26"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:oreo81x86Gp
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-27\google_apis_playstore\x86" (
   msg %username% 'system-images android sdk already exist'
   goto oreoListGp
 ) else (
   call sdkmanager system-images;android-27;google_apis_playstore;x86
   call sdkmanager "platform-tools" "platforms;android-27"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-27\google_apis_playstore\x86" (
    msg %username% 'system-images android sdk already exist'
    goto oreoListGp
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-27;google_apis_playstore;x86
    call sdkmanager "platform-tools" "platforms;android-27"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem echo==============================================================================================================
rem echo                                 PIE LIST GROUP SDK MANAGER
rem echo =============================================================================================================
:pieListGp
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Pie - 9.0 - x86
echo  2. Pie - 9.0 - x86_64
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto pie90x86gp
if %errorlevel% equ 2 goto pie90x86_64gp
if %errorlevel% equ 3 goto googlepImageList

:pie90x86gp
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-28\google_apis_playstore\x86" (
   msg %username% 'system-images android sdk already exist'
   goto pieListGp
 ) else (
   call sdkmanager system-images;android-28;google_apis_playstore;x86
   call sdkmanager "platform-tools" "platforms;android-28"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-28\google_apis_playstore\x86" (
    msg %username% 'system-images android sdk already exist'
    goto pieListGp
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-28;google_apis_playstore;x86
    call sdkmanager "platform-tools" "platforms;android-28"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:pie90x86_64gp
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-28\google_apis_playstore\x86_64" (
   msg %username% 'system-images android sdk already exist'
   goto pieListGp
 ) else (
   call sdkmanager system-images;android-28;google_apis_playstore;x86_64
   call sdkmanager "platform-tools" "platforms;android-28"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-28\google_apis_playstore\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto pieListGp
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-28;google_apis_playstore;x86_64
    call sdkmanager "platform-tools" "platforms;android-28"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem echo==============================================================================================================
rem echo                                  Q LIST GROUP SDK MANAGER
rem echo =============================================================================================================
:qListGp
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Q - 10.0 - x86
echo  2. Q - 10.0 - x86_64
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto q100x86gp
if %errorlevel% equ 2 goto q100x86_64gp
if %errorlevel% equ 3 goto googlepImageList

:q100x86gp
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-29\google_apis_playstore\x86" (
   msg %username% 'system-images android sdk already exist'
   goto qListGp
 ) else (
   call sdkmanager system-images;android-29;google_apis_playstore;x86
   call sdkmanager "platform-tools" "platforms;android-29"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-29\google_apis_playstore\x86" (
    msg %username% 'system-images android sdk already exist'
    goto qListGp
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-29;google_apis_playstore;x86
    call sdkmanager "platform-tools" "platforms;android-29"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:q100x86_64gp
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-29\google_apis_playstore\x86_64" (
   msg %username% 'system-images android sdk already exist'
   goto qListGp
 ) else (
   call sdkmanager system-images;android-29;google_apis_playstore;x86_64
   call sdkmanager "platform-tools" "platforms;android-29"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-29\google_apis_playstore\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto qListGp
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-29;google_apis_playstore;x86_64
    call sdkmanager "platform-tools" "platforms;android-29"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem echo==============================================================================================================
rem echo                                  R LIST GROUP SDK MANAGER
rem echo =============================================================================================================
:rListGp
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. R - 10.0 - x86
echo  2. R - 10.0 - x86_64
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "please select type android sdk version ?"

if %errorlevel% equ 1 goto r110x86gp
if %errorlevel% equ 2 goto r110x86_64gp
if %errorlevel% equ 3 goto googlepImageList

:r110x86gp
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-30\google_apis_playstore\x86" (
   msg %username% 'system-images android sdk already exist'
   goto rListGp
 ) else (
   call sdkmanager system-images;android-30;google_apis_playstore;x86
   call sdkmanager "platform-tools" "platforms;android-30"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-30\google_apis_playstore\x86" (
    msg %username% 'system-images android sdk already exist'
    goto rListGp
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-30;google_apis_playstore;x86
    call sdkmanager "platform-tools" "platforms;android-30"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

:r110x86_64gp
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                WARNING !!! don't close this cli because the android package image can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%LOCALAPPDATA%\Android\Sdk\licenses\android-sdk-license" (
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-30\google_apis_playstore\x86_64" (
   msg %username% 'system-images android sdk already exist'
   goto rListGp
 ) else (
   call sdkmanager system-images;android-30;google_apis_playstore;x86_64
   call sdkmanager "platform-tools" "platforms;android-30"
   msg %username% 'system-images successfully to download'
   goto sdkTools
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-30\google_apis_playstore\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto rListGp
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-30;google_apis_playstore;x86_64
    call sdkmanager "platform-tools" "platforms;android-30"
    msg %username% 'system-images successfully to download'
    goto sdkTools
  )
)

rem ==============================================================================================================
rem ==============================================================================================================
rem ==============================================================================================================
rem
rem                                              MORE INFORMATION
rem
rem ==============================================================================================================
:aboutMe
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. About Developer
echo  2. Buy A Cup Of Coffee
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "choice action ?"

if %errorlevel% equ 1 goto developer
if %errorlevel%% equ 2 goto buyCoffe
if %errorlevel%% equ 3 goto appStart

rem echo==============================================================================================================
rem echo                                          ABOUT DEVELOPER
rem echo =============================================================================================================
:developer
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Facebook
echo  2. Github
echo  3. Linkedn
echo  4. Instagram
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:12340 /m "choice action ?"

if %errorlevel%% equ 1 (
 start https://bit.ly/35yfLpK
 goto developer
)

if %errorlevel%% equ 2 (
 start https://bit.ly/3kLQVt3
 goto developer
)

if %errorlevel%% equ 3 (
 start https://bit.ly/34vyfrt
 goto developer
)

if %errorlevel%% equ 4 (
 start https://bit.ly/2TvCSeS
 goto developer
)

if %errorlevel%% equ 5 goto aboutMe

rem echo==============================================================================================================
rem echo                                       DONATION DEVELOPER
rem echo =============================================================================================================
:buyCoffe
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Support Donation Project
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choice action ?"

if %errorlevel%% equ 1 (
 start https://bit.ly/37KsgkB
 goto buyCoffe
)

if %errorlevel%% equ 2 goto aboutMe

rem ==============================================================================================================
rem ==============================================================================================================
rem ==============================================================================================================
rem
rem                                               AVD TOOLS
rem
rem ==============================================================================================================
:avdTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. List Avd Emulator
echo  2. Create Avd Emulator
echo  3. Running Avd Emulator
echo  4. Delete Avd Emulator
echo  5. Update Avd Emulator
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:123450 /m "choose action ?"

if %errorlevel% equ 1 goto listEmulator
if %errorlevel% equ 2 goto createEmulator
if %errorlevel% equ 3 goto runEmulator
if %errorlevel% equ 4 goto deleteEmulator
if %errorlevel% equ 5 goto updateEmulator
if %errorlevel% equ 6 goto appStart

:listEmulator
cls
start avdmanager list avd
goto avdTools

rem rem echo==============================================================================================================
rem rem echo                                    CREATE AVD EMULATOR
rem rem echo =============================================================================================================
:createEmulator
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Phone
echo  2. Tablet
echo  3. Wear OS
echo  4. TV
rem echo  5. Custom
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:12340 /m "choose action ?"

if %errorlevel% equ 1 goto phoneSkinList
if %errorlevel% equ 2 goto tableSkinList
if %errorlevel% equ 3 goto awrSkinList
if %errorlevel% equ 4 goto tvSkinList
rem if %errorlevel% equ 5 goto customList
if %errorlevel% equ 5 goto avdTools

rem echo==============================================================================================================
rem echo                                     PHONE SKIN LIST
rem echo =============================================================================================================
:phoneSkinList
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. QVGA
echo  2. WQVGA
echo  3. FWVGA
echo  4. WVGA
echo  5. FOLDABLE
echo  6. NEXUS
echo  7. PIXEL
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:12345670 /m "choose action ?"

if %errorlevel% equ 1 goto qvgaList
if %errorlevel% equ 2 goto wqvgaList
if %errorlevel% equ 3 goto fwvgaList
if %errorlevel% equ 4 goto wvgaList
if %errorlevel% equ 5 goto foldableList
if %errorlevel% equ 6 goto nexusList
if %errorlevel% equ 7 goto pixelList
if %errorlevel% equ 8 goto createEmulator

rem echo==============================================================================================================
rem echo                                     QVGA SKIN LIST
rem echo =============================================================================================================
:qvgaList
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. QVGA - 2.7 - 240x320 - idpi
echo  2. QVGA Slider - 2.7 - 240x320 - ldpi
echo  3. QVGA (ADP2) - 3.2 - 320x480 - mdpi
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:1230 /m "choose action ?"

if %errorlevel% equ 1 goto qvga
if %errorlevel% equ 2 goto qvgaSlider
if %errorlevel% equ 3 goto qvgaAdp2
if %errorlevel% equ 4 goto phoneSkinList

rem echo==============================================================================================================
rem echo                                    QVGA AVD EMULATOR
rem echo =============================================================================================================
:qvga
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionQvga
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionQvga
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionQvga
if %errorlevel% equ 2 goto qvgaList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionQvga
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionQvga

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionQvga
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionQvga
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionQvga
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideQvga
if %errorlevel% equ 2 goto imageVersionQvga

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideQvga
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionQvga

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionQvga
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionQvga
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionQvga
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsideQvga
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsideQvga
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionQvga
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideQvga
if %errorlevel% equ 2 goto targetVersionInsideQvga

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideQvga
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionQvga

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\2.7_QVGA\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\google_apis\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\2.7_QVGA\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\2.7_QVGA\config.ini) -replace 'AvdId=*.*','AvdId=2.7_QVGA_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\2.7_QVGA\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\2.7_QVGA\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=2.7 QVGA API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\2.7_QVGA\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\2.7_QVGA\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\2.7_QVGA\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\2.7_QVGA\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\platforms\android-19\skins\QVGA' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\2.7_QVGA\config.ini"

  goto installImageQvga
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideQvga
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageQvga
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n 2.7_QVGA_API_%androidVersionInt% -d "2.7in QVGA" -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to create avd'
goto overWriteConfigQvga

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigQvga
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\2.7_QVGA_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\2.7_QVGA\config.ini %userprofile%\.android\avd\2.7_QVGA_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                    QVGA SLIDER AVD EMULATOR
rem echo =============================================================================================================
:qvgaSlider
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionQvgaS
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionQvgaS
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionQvgaS
if %errorlevel% equ 2 goto qvgaList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionQvgaS
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionQvgaS

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionQvgaS
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionQvgaS
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionQvgaS
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideQvgaS
if %errorlevel% equ 2 goto imageVersionQvgaS

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideQvgaS
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionQvgaS

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionQvgaS
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionQvgaS
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionQvgaS
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsideQvgaS
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsideQvgaS
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionQvgaS
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideQvgaS
if %errorlevel% equ 2 goto targetVersionInsideQvgaS

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideQvgaS
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionQvgaS

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\2.7_QVGA_slider\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\2.7_QVGA_slider\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\2.7_QVGA_slider\config.ini) -replace 'AvdId=*.*','AvdId=2.7_Qvga_Slider_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\2.7_QVGA_slider\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\2.7_QVGA_slider\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=2.7 Qvga Slider API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\2.7_QVGA_slider\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\2.7_QVGA_slider\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\2.7_QVGA_slider\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\2.7_QVGA_slider\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\platforms\android-19\skins\QVGA' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\2.7_QVGA_slider\config.ini"

  goto installImageQvgaS
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideQvgaS
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageQvgaS
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n 2.7_Qvga_Slider_API_%androidVersionInt% -d "2.7in QVGA slider" -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigQvgaS

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigQvgaS
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\2.7_Qvga_Slider_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\2.7_QVGA_slider\config.ini %userprofile%\.android\avd\2.7_Qvga_Slider_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                    QVGA ADP2 AVD EMULATOR
rem echo =============================================================================================================
:qvgaAdp2
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionQvgaA2
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionQvgaA2
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionQvgaA2
if %errorlevel% equ 2 goto qvgaList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionQvgaA2
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionQvgaA2

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionQvgaA2
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionQvgaA2
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionQvgaA2
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideQvgaA2
if %errorlevel% equ 2 goto imageVersionQvgaA2

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideQvgaA2
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionQvgaA2

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionQvgaA2
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionQvgaA2
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionQvgaA2
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsideQvgaA2
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsideQvgaA2
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionQvgaA2
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideQvgaA2
if %errorlevel% equ 2 goto targetVersionInsideQvgaA2

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideQvgaA2
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionQvgaA2

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\3.2_QVGA_ADP2\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\3.2_QVGA_ADP2\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\3.2_QVGA_ADP2\config.ini) -replace 'AvdId=*.*','AvdId=3.2_QVGA_ADP2_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\3.2_QVGA_ADP2\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\3.2_QVGA_ADP2\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=3.2 QVGA ADP2 API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\3.2_QVGA_ADP2\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\3.2_QVGA_ADP2\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\3.2_QVGA_ADP2\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\3.2_QVGA_ADP2\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\platforms\android-19\skins\QVGA' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\3.2_QVGA_ADP2\config.ini"

  goto installImageQvgaA2
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideQvgaA2
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageQvgaA2
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n 3.2_QVGA_ADP2_API_%androidVersionInt% -d "3.2in QVGA (ADP2)" -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigQvgaA2

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigQvgaA2
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\3.2_QVGA_ADP2_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\3.2_QVGA_ADP2\config.ini %userprofile%\.android\avd\3.2_QVGA_ADP2_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                     WQGA SKIN LIST
rem echo =============================================================================================================
:wqvgaList
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. WQVGA - 3.3 - 240x400 - ldpi
echo  2. WQVGA - 3.4 - 240x432 - ldpi
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "choose action ?"

if %errorlevel% equ 1 goto wqvga33
if %errorlevel% equ 2 goto wqvga34
if %errorlevel% equ 3 goto phoneSkinList

rem echo==============================================================================================================
rem echo                                    WQVGA 3.3 AVD EMULATOR
rem echo =============================================================================================================
:wqvga33
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionWqvga33
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionWqvga33
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionWqvga33
if %errorlevel% equ 2 goto wqvgaList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionWqvga33
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionWqvga33

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionWqvga33
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto checkImageVersionWqvga33
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionWqvga33
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideWqvga33
if %errorlevel% equ 2 goto imageVersionWqvga33

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideWqvga33
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionWqvga33

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionWqvga33
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionWqvga33
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionWqvga33
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsideWqvga33
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsideWqvga33
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionWqvga33
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideWqvga33
if %errorlevel% equ 2 goto targetVersionInsideWqvga33

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideWqvga33
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionWqvga33

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\3.3_WQVGA\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\3.3_WQVGA\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\3.3_WQVGA\config.ini) -replace 'AvdId=*.*','AvdId=3.3_WQVGA_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\3.3_WQVGA\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\3.3_WQVGA\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=3.3 WQVGA API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\3.3_WQVGA\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\3.3_WQVGA\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\3.3_WQVGA\config.ini"

  goto installImageWqvga33
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideWqvga33
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageWqvga33
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n 3.3_WQVGA_API_%androidVersionInt% -d "3.3in WQVGA" -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigWqvga33

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigWqvga33
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\3.3_WQVGA_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\3.3_WQVGA\config.ini %userprofile%\.android\avd\3.3_WQVGA_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                    WQVGA 3.4 AVD EMULATOR
rem echo =============================================================================================================
:wqvga34
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionWqvga34
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionWqvga34
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionWqvga34
if %errorlevel% equ 2 goto wqvgaList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionWqvga34
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionWqvga34

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionWqvga34
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionWqvga34
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionWqvga34
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideWqvga34
if %errorlevel% equ 2 goto imageVersionWqvga34

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideWqvga34
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionWqvga34

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionWqvga34
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionWqvga34
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionWqvga34
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsideWqvga34
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsideWqvga34
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionWqvga34
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideWqvga34
if %errorlevel% equ 2 goto targetVersionInsideWqvga34

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideWqvga34
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionWqvga34

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\3.4_WQVGA\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\3.4_WQVGA\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\3.4_WQVGA\config.ini) -replace 'AvdId=*.*','AvdId=3.4_WQVGA_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\3.4_WQVGA\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\3.4_WQVGA\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=3.4 WQVGA API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\3.4_WQVGA\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\3.4_WQVGA\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\3.4_WQVGA\config.ini"

  goto installImageWqvga34
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideWqvga34
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageWqvga34
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n 3.4_WQVGA_API_%androidVersionInt% -d "3.4in WQVGA" -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigWqvga34

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigWqvga34
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\3.4_WQVGA_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\3.4_WQVGA\config.ini %userprofile%\.android\avd\3.4_WQVGA_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                     FWGA SKIN LIST
rem echo =============================================================================================================
:fwvgaList
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. FWVGA slider - 3.7 - 480x854 - hdpi
echo  2. FWVGA - 5.4 - 480x854 - mdpi
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "choose action ?"

if %errorlevel% equ 1 goto fwvgaSlider
if %errorlevel% equ 2 goto fwvgaDefault
if %errorlevel% equ 3 goto phoneSkinList

rem echo==============================================================================================================
rem echo                                    FWGA SLIDER AVD EMULATOR
rem echo =============================================================================================================
:fwvgaSlider
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionFwvgaS
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionFwvgaS
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionFwvgaS
if %errorlevel% equ 2 goto fwvgaList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionFwvgaS
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionFwvgaS

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionFwvgaS
) else (
  msg %username% 'system-images android sdk not found or not found'
  goto imageVersionFwvgaS
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionFwvgaS
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideFwvgaS
if %errorlevel% equ 2 goto imageVersionFwvgaS

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideFwvgaS
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionFwvgaS

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionFwvgaS
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionFwvgaS
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionFwvgaS
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsideFwvgaS
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsideFwvgaS
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionFwvgaS
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideFwvgaS
if %errorlevel% equ 2 goto targetVersionInsideFwvgaS

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideFwvgaS
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionFwvgaS

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\3.7_FWVGA_slider\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\3.7_FWVGA_slider\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\3.7_FWVGA_slider\config.ini) -replace 'AvdId=*.*','AvdId=3.7_FWVGA_slider_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\3.7_FWVGA_slider\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\3.7_FWVGA_slider\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=3.7 FWVGA slider API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\3.7_FWVGA_slider\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\3.7_FWVGA_slider\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\3.7_FWVGA_slider\config.ini"

  goto installImageFwvgaS
) else (
  msg %username% 'cpu Architecture android not found or not support'
  goto abiVersionInsideFwvgaS
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageFwvgaS
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n 3.7_FWVGA_slider_API_%androidVersionInt% -d "3.7 FWVGA slider" -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd'
goto overWriteConfigFwvgaS

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigFwvgaS
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\3.7_FWVGA_slider_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\3.7_FWVGA_slider\config.ini %userprofile%\.android\avd\3.7_FWVGA_slider_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                    FWGA DEFAULT AVD EMULATOR
rem echo =============================================================================================================
:fwvgaDefault
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionFwvgaD
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionFwvgaD
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionFwvgaD
if %errorlevel% equ 2 goto fwvgaList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionFwvgaD
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionFwvgaD

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionFwvgaD
) else (
  msg %username% 'system-images android sdk target not found or not support'
  goto imageVersionFwvgaD
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionFwvgaD
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideFwvgaD
if %errorlevel% equ 2 goto imageVersionFwvgaD

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideFwvgaD
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionFwvgaD

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionFwvgaD
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionFwvgaD
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionFwvgaD
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsideFwvgaD
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsideFwvgaD
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionFwvgaD
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideFwvgaD
if %errorlevel% equ 2 goto targetVersionInsideFwvgaD

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideFwvgaD
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back
echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionFwvgaD

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\5.4_FWVGA\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\5.4_FWVGA\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\5.4_FWVGA\config.ini) -replace 'AvdId=*.*','AvdId=5.4_FWVGA_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\5.4_FWVGA\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\5.4_FWVGA\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=5.4 FWVGA API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\5.4_FWVGA\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\5.4_FWVGA\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\5.4_FWVGA\config.ini"

  goto installImageFwvgaD
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideFwvgaD
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageFwvgaD
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n 5.4_FWVGA_API_%androidVersionInt% -d "5.4in FWVGA" -k "system-images;android-%androidVersionInt%;google_apis;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigFwvgaD

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigFwvgaD
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\5.4_FWVGA_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\5.4_FWVGA\config.ini %userprofile%\.android\avd\5.4_FWVGA_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                     WVGA SKIN LIST
rem echo =============================================================================================================
:wvgaList
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. WVGA - 4.7 - 720x1280 - xhdpi
echo  2. WVGA - 5.1 - 480x800 - mdpi
echo  3. WVGA (Nexus One) - 3.4 - 480x800 - hdpi
echo  4. WVGA (Nexus S) - 4.0 - 480x800 - hdpi
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:12340 /m "choose action ?"

if %errorlevel% equ 1 goto wvga47
if %errorlevel% equ 2 goto wvga51
if %errorlevel% equ 3 goto wvgaNexusOne
if %errorlevel% equ 4 goto wvgaNexusS
if %errorlevel% equ 5 goto phoneSkinList

rem echo==============================================================================================================
rem echo                                    WVFGA 4.7 AVD EMULATOR
rem echo =============================================================================================================
:wvga47
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionWvga47
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionWvga47
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionWvga47
if %errorlevel% equ 2 goto wvgaList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionWvga47
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionWvga47

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionWvga47
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionWvga47
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionWvga47
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideWvga47
if %errorlevel% equ 2 goto imageVersionWvga47

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideWvga47
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionWvga47

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionWvga47
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionWvga47
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionWvga47
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsideWvga47
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsideWvga47
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionWvga47
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\google_apis goto abiVersionInsideWvga47
if %errorlevel% equ 2 goto targetVersionInsideWvga47

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideWvga47
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionWvga47

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\4.7_WXGA\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\4.7_WXGA\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\4.7_WXGA\config.ini) -replace 'AvdId=*.*','AvdId=4.7_WXGA_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\4.7_WXGA\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\4.7_WXGA\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=4.7_WXGA_API API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\4.7_WXGA\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\4.7_WXGA\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\4.7_WXGA\config.ini"

  goto installImageWvga47
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideWvga47
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageWvga47
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n 4.7_WXGA_API%androidVersionInt% -d "4.7in WXGA" -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigWvga47

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigWvga47
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\4.7_WXGA_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\4.7_WXGA\config.ini %userprofile%\.android\avd\4.7_WXGA_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                    WVFGA 5.1 AVD EMULATOR
rem echo =============================================================================================================
:wvga51
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionWvga51
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionWvga51
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set System Images
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionWvga51
if %errorlevel% equ 2 goto wvgaList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionWvga51
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionWvga51

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionWvga51
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionWvga51
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionWvga51
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideWvga51
if %errorlevel% equ 2 goto imageVersionWvga51

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideWvga51
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionWvga51

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionWvga51
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionWvga51
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionWvga51
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsideWvga51
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsideWvga51
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionWvga51
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideWvga51
if %errorlevel% equ 2 goto targetVersionInsideWvga51

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideWvga51
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionWvga51

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\5.1_WVGA\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\5.1_WVGA\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\5.1_WVGA\config.ini) -replace 'AvdId=*.*','AvdId=5.1_WVGA_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\5.1_WVGA\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\5.1_WVGA\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=5.1 WVGA API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\5.1_WVGA\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\5.1_WVGA\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\5.1_WVGA\config.ini"

  goto installImageWvga51
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideWvga51
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageWvga51
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n 5.1_WVGA_API_%androidVersionInt% -d "5.1in WVGA" -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigWvga51

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigWvga51
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\5.1_WVGA_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\5.1_WVGA\config.ini %userprofile%\.android\avd\5.1_WVGA_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                   WVGA NEXUS ONE AVD EMULATOR
rem echo =============================================================================================================
:wvgaNexusOne
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionWvgaNo
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionWvgaNo
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set System Images
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionWvgaNo
if %errorlevel% equ 2 goto wvgaList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionWvgaNo
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionWvgaNo

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionWvgaNo
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionWvgaNo
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionWvgaNo
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideWvgaNo
if %errorlevel% equ 2 goto imageVersionWvgaNo

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideWvgaNo
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionWvgaNo

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionWvgaNo
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionWvgaNo
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionWvgaNo
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsideWvgaNo
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsideWvgaNo
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionWvgaNo
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideWvgaNo
if %errorlevel% equ 2 goto targetVersionInsideWvgaNo

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideWvgaNo
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionWvgaNo

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\3.7_WVGA_Nexus_One\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\3.7_WVGA_Nexus_One\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\3.7_WVGA_Nexus_One\config.ini) -replace 'AvdId=*.*','AvdId=3.7_WVGA_Nexus_One_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\3.7_WVGA_Nexus_One\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\3.7_WVGA_Nexus_One\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=3.7 WVGA Nexus One API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\3.7_WVGA_Nexus_One\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\3.7_WVGA_Nexus_One\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\3.7_WVGA_Nexus_One\config.ini"

  goto installImageWvgaNo
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideWvgaNo
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageWvgaNo
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n 3.7_WVGA_Nexus_One_API_%androidVersionInt% -d "3.7in WVGA (Nexus One)" -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigWvgaNo

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigWvgaNo
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\3.7_WVGA_Nexus_One_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\3.7_WVGA_Nexus_One\config.ini %userprofile%\.android\avd\3.7_WVGA_Nexus_One_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                    WVGA NEXUS S AVD EMULATOR
rem echo =============================================================================================================
:wvgaNexusS
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionWvgaNs
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionWvgaNs
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionWvgaNs
if %errorlevel% equ 2 goto wvgaList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionWvgaNs
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionWvgaNs

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionWvgaNs
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionWvgaNs
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionWvgaNs
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideWvgaNs
if %errorlevel% equ 2 goto imageVersionWvgaNs

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideWvgaNs
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionWvgaNs

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionWvgaNs
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionWvgaNs
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionWvgaNs
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsideWvgaNs
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsideWvgaNs
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionWvgaNs
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideWvgaNs
if %errorlevel% equ 2 goto targetVersionInsideWvgaNs

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideWvgaNs
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back
echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionWvgaNs

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\4_WVGA_Nexus_S\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\4_WVGA_Nexus_S\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\4_WVGA_Nexus_S\config.ini) -replace 'AvdId=*.*','AvdId=4_WVGA_Nexus_S_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\4_WVGA_Nexus_S\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\4_WVGA_Nexus_S\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=4 WVGA Nexus S API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\4_WVGA_Nexus_S\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\4_WVGA_Nexus_S\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\4_WVGA_Nexus_S\config.ini"

  goto installImageWvgaNs
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideWvgaNs
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageWvgaNs
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n 4_WVGA_Nexus_S_API_%androidVersionInt% -d "4in WVGA (Nexus S)" -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigWvgaNs

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigWvgaNs
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\4_WVGA_Nexus_S_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\4_WVGA_Nexus_S\config.ini %userprofile%\.android\avd\4_WVGA_Nexus_S_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                     FOLDABLE SKIN LIST
rem echo =============================================================================================================
:foldableList
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Foldable - 7.3 - 1536x2152 - 420dpi
echo  2. Foldable - 8.3 - 2200x2480 - 420dpi
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "choose action ?"

if %errorlevel% equ 1 goto foldable73
if %errorlevel% equ 2 goto foldable83
if %errorlevel% equ 3 goto phoneSkinList

rem echo==============================================================================================================
rem echo                                    FOLDABLE 7.3 AVD EMULATOR
rem echo =============================================================================================================
:foldable73
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionFdb73
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionFdb73
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionFdb73
if %errorlevel% equ 2 goto phoneSkinList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionFdb73
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionFdb73

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
   if "android-%androidVersionInt%" equ "android-29" (
    goto checkTargetVersionFdb73
  ) else if "android-%androidVersionInt%" equ "android-30" (
    goto checkTargetVersionFdb73
  ) else (
    msg %username% 'system-images android sdk must be greater than version 28'
    goto imageVersionFdb73
  )
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionFdb73
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionFdb73
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideFdb73
if %errorlevel% equ 2 goto imageVersionFdb73

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideFdb73
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionFdb73

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionFdb73
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionFdb73
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsideFdb73
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsideFdb73
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionFdb73
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideFdb73
if %errorlevel% equ 2 goto imageVersionFdb73

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideFdb73
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back
echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionFdb73

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\7.3_Foldable\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\7.3_Foldable\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\7.3_Foldable\config.ini) -replace 'AvdId=*.*','AvdId=7.3_Foldable_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\7.3_Foldable\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\7.3_Foldable\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=7.3 Foldable API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\7.3_Foldable\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\7.3_Foldable\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\7.3_Foldable\config.ini"

  goto installImageFdb73
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideFdb73
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageFdb73
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

if %androidVersionInt% equ 29 (
 call avdmanager create avd -n 8_Foldable_API_%androidVersionInt% -d 6 -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
 msg %username% 'successfully to created avd emulator'
 goto overWriteConfigFdb83
)else (
 call avdmanager create avd -n 8_Foldable_API_%androidVersionInt% -d 7 -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
 msg %username% 'successfully to created avd emulator'
 goto overWriteConfigFdb83
)

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigFdb73
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\7.3_Foldable_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\7.3_Foldable\config.ini %userprofile%\.android\avd\7.3_Foldable_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                    FOLDABLE 8.3 AVD EMULATOR
rem echo =============================================================================================================
:foldable83
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionFdb83
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionFdb83
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionFdb83
if %errorlevel% equ 2 goto phoneSkinList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionFdb83
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionFdb83

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
   if "android-%androidVersionInt%" equ "android-29" (
    goto checkTargetVersionFdb83
  ) else if "android-%androidVersionInt%" equ "android-30" (
    goto checkTargetVersionFdb83
  ) else (
    msg %username% 'system-images android sdk must be greater than version 28'
    goto imageVersionFdb83
  )
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionFdb83
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionFdb83
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideFdb83
if %errorlevel% equ 2 goto imageVersionFdb83

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideFdb83
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionFdb83

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionFdb83
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionFdb83
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsideFdb83
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsideFdb83
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionFdb83
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideFdb83
if %errorlevel% equ 2 goto targetVersionInsideFdb83

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideFdb83
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back
echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionFdb83

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\google_apis\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\8_Foldable\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\google_apis\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\8_Foldable\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\8_Foldable\config.ini) -replace 'AvdId=*.*','AvdId=8_Foldable_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\8_Foldable\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\8_Foldable\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=8 Foldable API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\8_Foldable\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\8_Foldable\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\8_Foldable\config.ini"

  goto installImageFdb83
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideFdb83
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageFdb83
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

if %androidVersionInt% equ 29 (
 call avdmanager create avd -n 8_Foldable_API_%androidVersionInt% -d 6 -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
 msg %username% 'successfully to created avd emulator'
 goto overWriteConfigFdb83
)else (
 call avdmanager create avd -n 8_Foldable_API_%androidVersionInt% -d 7 -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
 msg %username% 'successfully to created avd emulator'
 goto overWriteConfigFdb83
)

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigFdb83
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\8_Foldable_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\8_Foldable\config.ini %userprofile%\.android\avd\8_Foldable_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                     NEXUS SKIN LIST
rem echo =============================================================================================================
:nexusList
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Nexus One - 3.7 - 480x800 - hdpi
echo  2. Nexus 4 - 4.7 - 768x1280 - xhdpi
echo  3. Nexus 5 - 4.95 - 1080x1920 - xxhdpi
echo  4. Nexus 5X - 5.2 - 1080x1920 420dpi
echo  5. Nexus 6  - 5.96 - 1440x2560 - 560dpi
echo  6. Nexus 6P - 5.7 - 1440x2560 - 560dpi
echo  7. Nexus S - 4.0 - 480x800 - hdpi
echo  8. Galaxy Nexus - 4.65 - 720x1280 - xhdpi
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:123456780 /m "choose action ?"

if %errorlevel% equ 1 goto nexusOne
if %errorlevel% equ 2 goto nexusFour
if %errorlevel% equ 3 goto nexusFive
if %errorlevel% equ 4 goto nexusFiveX
if %errorlevel% equ 5 goto nexusSix
if %errorlevel% equ 6 goto nexusSixP
if %errorlevel% equ 7 goto nexusS
if %errorlevel% equ 8 goto galaxyNexus
if %errorlevel% equ 9 goto phoneSkinList

rem echo==============================================================================================================
rem echo                                     NEXUS ONE AVD EMULATOR
rem echo =============================================================================================================
:nexusOne
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionNexusOne
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionNexusOne
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionNexusOne
if %errorlevel% equ 2 goto nexusList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionNexusOne
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionNexusOne

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionNexusOne
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionNexusOne
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionNexusOne
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideNexusOne
if %errorlevel% equ 2 goto imageVersionNexusOne

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideNexusOne
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionNexusOne

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionNexusOne
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionNexusOne
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionNexusOne
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsideNexusOne
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsideNexusOne
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionNexusOne
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideNexusOne
if %errorlevel% equ 2 goto targetVersionInsideNexusOne

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideNexusOne
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back
echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionNexusOne

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Nexus_One\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Nexus_One\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Nexus_One\config.ini) -replace 'AvdId=*.*','AvdId=Nexus_One_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Nexus_One\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Nexus_One\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=Nexus One API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Nexus_One\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Nexus_One\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Nexus_One\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Nexus_One\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\skins\nexus_one' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\nexus_one\config.ini"

  goto installImageNexusOne
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideNexusOne
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageNexusOne
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n Nexus_One_API_%androidVersionInt% -d "Nexus One" -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigNexusOne

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigNexusOne
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\Nexus_One_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\Nexus_One\config.ini %userprofile%\.android\avd\Nexus_One_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                     NEXUS FOUR AVD EMULATOR
rem echo =============================================================================================================
:nexusFour
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionNexusFour
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionNexusFour
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionNexusFour
if %errorlevel% equ 2 goto nexusList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionNexusFour
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionNexusFour

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionNexusFour
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionNexusFour
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionNexusFour
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideNexusFour
if %errorlevel% equ 2 goto imageVersionNexusFour

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideNexusFour
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionNexusFour

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionNexusFour
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionNexusFour
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionNexusFour
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsideNexusFour
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsideNexusFour
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionNexusFour
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideNexusFour
if %errorlevel% equ 2 goto targetVersionInsideNexusFour

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideNexusFour
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back
echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionNexusFour

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\google_apis\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\nexus_4\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\google_apis\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\nexus_4\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\nexus_4\config.ini) -replace 'AvdId=*.*','AvdId=Nexus_4_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\nexus_4\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\nexus_4\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=Nexus 4 API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\nexus_4\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\nexus_4\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\nexus_4\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\nexus_4\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\skins\nexus_4' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\nexus_4\config.ini"

  goto installImageNexusFour
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideNexusFour
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageNexusFour
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo            WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n Nexus_4_API_%androidVersionInt% -d "Nexus 4" -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigNexusFour

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigNexusFour
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\Nexus_4_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\Nexus_4\config.ini %userprofile%\.android\avd\Nexus_4_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                     NEXUS FIVE AVD EMULATOR
rem echo =============================================================================================================
:nexusFive
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionNexusFive
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionNexusFive
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionNexusFive
if %errorlevel% equ 2 goto nexusList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionNexusFive
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionNexusFive

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionNexusFive
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionNexusFive
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionNexusFive
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideNexusFive
if %errorlevel% equ 2 goto imageVersionNexusFive

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideNexusFive
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionNexusFive

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionNexusFive
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionNexusFive
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionNexusFive
  ) else (
    msg %username% 'systems-images android target version not found or not support'
    goto targetVersionInsideNexusFive
  )
) else (
  msg %username% 'systems-images android target version not found or not support'
  goto targetVersionInsideNexusFive
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionNexusFive
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideNexusFive
if %errorlevel% equ 2 goto targetVersionInsideNexusFive

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideNexusFive
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back
echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionNexusFive

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\nexus_5\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\nexus_5\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\nexus_5\config.ini) -replace 'AvdId=*.*','AvdId=Nexus_5_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\nexus_5\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\nexus_5\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=Nexus 5 API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\nexus_5\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\nexus_5\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\nexus_5\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\nexus_5\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\skins\nexus_5' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\nexus_5\config.ini"

  goto installImageNexusFive
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideNexusFive
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageNexusFive
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n Nexus_5_API_%androidVersionInt% -d "Nexus 5" -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to create avd'
goto overWriteConfigNexusFive

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigNexusFive
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\Nexus_5_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\nexus_5\config.ini %userprofile%\.android\avd\Nexus_5_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                     NEXUS FIVE X AVD EMULATOR
rem echo =============================================================================================================
:nexusFiveX
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionNexusFiveX
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionNexusFiveX
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionNexusFiveX
if %errorlevel% equ 2 goto nexusList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionNexusFiveX
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionNexusFiveX

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionNexusFiveX
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionNexusFiveX
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionNexusFiveX
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideNexusFiveX
if %errorlevel% equ 2 goto imageVersionNexusFiveX

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideNexusFiveX
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionNexusFiveX

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionNexusFiveX
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionNexusFiveX
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionNexusFiveX
  ) else (
    msg %username% 'systems-images android target version not found or not support'
    goto targetVersionInsideNexusFiveX
  )
) else (
  msg %username% 'systems-images android target version not found or not support'
  goto targetVersionInsideNexusFiveX
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionNexusFiveX
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideNexusFiveX
if %errorlevel% equ 2 goto targetVersionInsideNexusFiveX

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideNexusFiveX
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back
echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionNexusFiveX

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Nexus_5X\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Nexus_5X\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Nexus_5X\config.ini) -replace 'AvdId=*.*','AvdId=Nexus_5X_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Nexus_5X\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Nexus_5X\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=Nexus 5X API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Nexus_5X\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Nexus_5X\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Nexus_5X\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Nexus_5X\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\skins\nexus_5x' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Nexus_5X\config.ini"

  goto installImageNexusFiveX
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideNexusFiveX
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageNexusFiveX
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n Nexus_5X_API_%androidVersionInt% -d "Nexus 5X" -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigNexusFiveX

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigNexusFiveX
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\Nexus_5X_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\Nexus_5X\config.ini %userprofile%\.android\avd\Nexus_5X_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                     NEXUS SIX AVD EMULATOR
rem echo =============================================================================================================
:nexusSix
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionNexusSix
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionNexusSix
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionNexusSix
if %errorlevel% equ 2 goto nexusList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionNexusSix
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionNexusSix

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionNexusSix
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionNexusSix
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionNexusSix
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideNexusSix
if %errorlevel% equ 2 goto imageVersionNexusSix

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideNexusSix
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionNexusSix

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionNexusSix
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionNexusSix
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionNexusSix
  ) else (
    msg %username% 'systems-images android target version not found or not support'
    goto targetVersionInsideNexusSix
  )
) else (
  msg %username% 'systems-images android target version not found or not support'
  goto targetVersionInsideNexusSix
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionNexusSix
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideNexusSix
if %errorlevel% equ 2 goto targetVersionInsideNexusSix

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideNexusSix
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back
echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionNexusSix

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Nexus_6\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Nexus_6\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Nexus_6\config.ini) -replace 'AvdId=*.*','AvdId=Nexus_6_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Nexus_6\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Nexus_6\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=Nexus 6 API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Nexus_6\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Nexus_6\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Nexus_6\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Nexus_6\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\skins\nexus_6' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Nexus_6\config.ini"

  goto installImageNexusSix
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideNexusSix
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageNexusSix
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n Nexus_6_API_%androidVersionInt% -d "Nexus 6" -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigNexusSix

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigNexusSix
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\Nexus_6_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\Nexus_6\config.ini %userprofile%\.android\avd\Nexus_6_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                     NEXUS SIX P AVD EMULATOR
rem echo =============================================================================================================
:nexusSixP
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionNexusSixP
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionNexusSixP
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionNexusSixP
if %errorlevel% equ 2 goto nexusList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionNexusSixP
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionNexusSixP

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionNexusSixP
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionNexusSixP
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionNexusSixP
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideNexusSixP
if %errorlevel% equ 2 goto imageVersionNexusSixP

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideNexusSixP
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionNexusSixP

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionNexusSixP
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionNexusSixP
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionNexusSixP
  ) else (
    msg %username% 'systems-images android target version not found or not support'
    goto targetVersionInsideNexusSixP
  )
) else (
  msg %username% 'systems-images android target version not found or not support'
  goto targetVersionInsideNexusSixP
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionNexusSixP
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideNexusSixP
if %errorlevel% equ 2 goto targetVersionInsideNexusSixP

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideNexusSixP
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionNexusSixP

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersion%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Nexus_6P\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Nexus_6P\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Nexus_6P\config.ini) -replace 'AvdId=*.*','AvdId=Nexus_6P_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Nexus_6P\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Nexus_6P\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=Nexus 6P API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Nexus_6P\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Nexus_6P\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Nexus_6P\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Nexus_6P\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\skins\nexus_6p' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Nexus_6P\config.ini"

  goto installImageNexusSixP
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideNexusSixP
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageNexusSixP
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n Nexus_6P_API_%androidVersion% -d "Nexus 6P" -k "system-images;android-%androidVersion%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigNexusSixP

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigNexusSixP
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\Nexus_6P_API_%androidVersion%.avd" replace %systemdrive%\bangjago\configs\phone\Nexus_6P\config.ini %userprofile%\.android\avd\Nexus_6P_API_%androidVersion%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                     NEXUS S AVD EMULATOR
rem echo =============================================================================================================
:nexusS
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionNexusS
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionNexusS
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionNexusS
if %errorlevel% equ 2 goto nexusList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionNexusS
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionNexusS

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionNexusS
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionNexusS
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionNexusS
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideNexusS
if %errorlevel% equ 2 goto imageVersionNexusS

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideNexusS
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionNexusS

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionNexusS
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionNexusS
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionNexusS
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsideNexusS
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsideNexusS
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionNexusS
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideNexusS
if %errorlevel% equ 2 goto targetVersionInsideNexusS

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideNexusS
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionNexusS

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersion%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Nexus_S\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Nexus_S\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Nexus_S\config.ini) -replace 'AvdId=*.*','AvdId=Nexus_S_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Nexus_S\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Nexus_S\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=Nexus S API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Nexus_S\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Nexus_S\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Nexus_S\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Nexus_S\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Nexus_S\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Nexus_S\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\skins\nexus_s' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Nexus_S\config.ini"

  goto installImageNexusS
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideNexusS
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageNexusS
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n Nexus_S_API_%androidVersionInt% -d "Nexus S" -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigNexusS

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigNexusS
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\Nexus_S_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\Nexus_S\config.ini %userprofile%\.android\avd\Nexus_S_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                    GALAXY NEXUS AVD EMULATOR
rem echo =============================================================================================================
:galaxyNexus
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionGalaxyNexus
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionGalaxyNexus
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionGalaxyNexus
if %errorlevel% equ 2 goto nexusList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionGalaxyNexus
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionGalaxyNexus

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionGalaxyNexus
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionGalaxyNexus
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionGalaxyNexus
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideGalaxyNexus
if %errorlevel% equ 2 goto imageVersionGalaxyNexus

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideGalaxyNexus
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionGalaxyNexus

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionGalaxyNexus
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionGalaxyNexus
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionGalaxyNexus
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsideGalaxyNexus
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsideGalaxyNexus
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionGalaxyNexus
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideGalaxyNexus
if %errorlevel% equ 2 goto targetVersionInsideGalaxyNexus

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideGalaxyNexus
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionGalaxyNexus

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Galaxy_Nexus\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Galaxy_Nexus\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Galaxy_Nexus\config.ini) -replace 'AvdId=*.*','AvdId=Galaxy_Nexus_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Galaxy_Nexus\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Galaxy_Nexus\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=Galaxy Nexus API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Galaxy_Nexus\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Galaxy_Nexus\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\skins\galaxy_nexus' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Galaxy_Nexus\config.ini"

  goto installImageGalaxyNexus
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideGalaxyNexus
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageGalaxyNexus
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n Galaxy_Nexus_API_%androidVersionInt% -d "Galaxy Nexus" -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigGalaxyNexus

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigGalaxyNexus
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\Galaxy_Nexus_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\Galaxy_Nexus\config.ini %userprofile%\.android\avd\Galaxy_Nexus_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                     PIXEL SKIN LIST
rem echo =============================================================================================================
:pixelList
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Pixel - 5.0 - 1080x1920 - 420dpi
echo  2. Pixel XL - 5.5 - 1440x2560 - 560dpi
echo  3. Pixel 2 - 5.0 - 1080x1920 - 420dpi
echo  4. Pixel 2 XL - 5.9 - 1440x2880 - 560dpi
echo  5. Pixel 3 - 5.4 - 1080x2160 - 440dpi
echo  6. Pixel 3 XL - 6.3 - 1440x2960 - 560dpi
echo  7. Pixel 3a - 5.6 - 1080x2220 - 440dpi
echo  8. Pixel 3a XL - 6.0 - 1080x2160 - 400dpi
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:123456780 /m "choose action ?"

if %errorlevel% equ 1 goto pixel
if %errorlevel% equ 2 goto pixelXl
if %errorlevel% equ 3 goto pixelTwo
if %errorlevel% equ 4 goto pixelTwoXl
if %errorlevel% equ 5 goto pixelThree
if %errorlevel% equ 6 goto pixelThreeXl
if %errorlevel% equ 7 goto pixelThreeA
if %errorlevel% equ 8 goto pixelThreeAXl
if %errorlevel% equ 9 goto phoneSkinList

rem echo==============================================================================================================
rem echo                                         PIXEL AVD EMULATOR
rem echo =============================================================================================================
:pixel
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionPixel
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionPixel
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionPixel
if %errorlevel% equ 2 goto pixelList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionPixel
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionPixel

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionPixel
) else (
  msg %username% 'system-images android sdk not found or not found'
  goto imageVersionPixel
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionPixel
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsidePixel
if %errorlevel% equ 2 goto imageVersionPixel

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsidePixel
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionPixel

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionPixel
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionPixel
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionPixel
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsidePixel
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsidePixel
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionPixel
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsidePixel
if %errorlevel% equ 2 goto targetVersionInsidePixel

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsidePixel
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionPixel

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersion%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel\config.ini) -replace 'AvdId=*.*','AvdId=Pixel_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=Pixel API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\skins\pixel' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel\config.ini"

  goto installImagePixel
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsidePixel
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImagePixel
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo            WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n Pixel_API_%androidVersionInt% -d pixel -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigPixel

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigPixel
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\Pixel_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\Pixel\config.ini %userprofile%\.android\avd\Pixel_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                         PIXEL XL AVD EMULATOR
rem echo =============================================================================================================
:pixelXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionPixelXl
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionPixelXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionPixelXl
if %errorlevel% equ 2 goto pixelList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionPixelXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionPixelXl
if not %androidVersionInt% gtr 0 goto imageVersion

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionPixelXl
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionPixelXl
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionPixelXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsidePixelXl
if %errorlevel% equ 2 goto imageVersionPixelXl

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsidePixelXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionPixelXl

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionPixelXl
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionPixelXl
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionPixelXl
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsidePixelXl
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsidePixelXl
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionPixelXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsidePixelXl
if %errorlevel% equ 2 goto targetVersionInsidePixelXl

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsidePixelXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionPixelXl

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_XL\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_XL\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_XL\config.ini) -replace 'AvdId=*.*','AvdId=Pixel_XL_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_XL\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_XL\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=Pixel XL API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_XL\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_XL\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_XL\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_XL\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\skins\pixel_xl_silver' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_XL\config.ini"

  goto installImagePixelXl
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsidePixelXl
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImagePixelXl
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n Pixel_XL_API_%androidVersionInt% -d pixel_xl -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigPixelXl

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigPixelXl
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\Pixel_XL_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\Pixel_XL\config.ini %userprofile%\.android\avd\Pixel_XL_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                         PIXEL TWO AVD EMULATOR
rem echo =============================================================================================================
:pixelTwo
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionPixelTwo
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionPixelTwo
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionPixelTwo
if %errorlevel% equ 2 goto pixelList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionPixelTwo
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionPixelTwo

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionPixelTwo
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionPixelTwo
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionPixelTwo
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsidePixelTwo
if %errorlevel% equ 2 goto imageVersionPixelTwo

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsidePixelTwo
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionPixelTwo

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionPixelTwo
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionPixelTwo
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionPixelTwo
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsidePixelTwo
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsidePixelTwo
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionPixelTwo
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\google_apis goto abiVersionInsidePixelTwo
if %errorlevel% equ 2 goto targetVersionInsidePixelTwo

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsidePixelTwo
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionPixelTwo

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_2\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_2\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_2\config.ini) -replace 'AvdId=*.*','AvdId=Pixel_2_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_2\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_2\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=Pixel 2 API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_2\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_2\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_2\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_2\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\skins\pixel_2' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_2\config.ini"

  goto installImagePixelTwo
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsidePixelTwo
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImagePixelTwo
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n Pixel_2_API_%androidVersionInt% -d pixel -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigPixelTwo

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigPixelTwo
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\Pixel_2_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\Pixel_2\config.ini %userprofile%\.android\avd\Pixel_2_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                         PIXEL TWO XL AVD EMULATOR
rem echo =============================================================================================================
:pixelTwoXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionPixelTwoXl
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionPixelTwoXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionPixelTwoXl
if %errorlevel% equ 2 goto pixelList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionPixelTwoXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionPixelTwoXl

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionPixelTwoXl
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionPixelTwoXl
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionPixelTwoXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsidePixelTwoXl
if %errorlevel% equ 2 goto imageVersionPixelTwoXl

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsidePixelTwoXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionPixelTwoXl

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionPixelTwoXl
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionPixelTwoXl
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionPixelTwoXl
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsidePixelTwoXl
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsidePixelTwoXl
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionPixelTwoXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsidePixelTwoXl
if %errorlevel% equ 2 goto targetVersionInsidePixelTwoXl

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsidePixelTwoXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionPixelTwoXl

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_2_XL\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_2_XL\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_2_XL\config.ini) -replace 'AvdId=*.*','AvdId=Pixel_2_XL_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_2_XL\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_2_XL\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=Pixel 2 XL %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_2_XL\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_2_XL\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_2_XL\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_2_XL\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\skins\pixel_2_xl' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_2_XL\config.ini"

  goto installImagePixelTwoXl
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsidePixelTwoXl
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImagePixelTwoXl
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n Pixel_2_XL_API_%androidVersionInt% -d pixel_xl -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigPixelTwoXl

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigPixelTwoXl
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\Pixel_2_XL_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\Pixel_2_XL\config.ini %userprofile%\.android\avd\Pixel_2_XL_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                         PIXEL THREE AVD EMULATOR
rem echo =============================================================================================================
:pixelThree
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionPixelThree
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionPixelThree
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionPixelThree
if %errorlevel% equ 2 goto pixelList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionPixelThree
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionPixelThree

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionPixelThree
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionPixelThree
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionPixelThree
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsidePixelThree
if %errorlevel% equ 2 goto imageVersionPixelThree

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsidePixelThree
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionPixelThree

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionPixelThree
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionPixelThree
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionPixelThree
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsidePixelThree
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsidePixelThree
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionPixelThree
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsidePixelThree
if %errorlevel% equ 2 goto targetVersionInsidePixelThree

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsidePixelThree
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionPixelThree

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_3\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_3\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_3\config.ini) -replace 'AvdId=*.*','AvdId=Pixel_3_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_3\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_3\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=Pixel 3 API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_3\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_3\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_3\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_3\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\skins\pixel_3' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_3\config.ini"

  goto installImagePixelThree
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsidePixelThree
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImagePixelThree
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n Pixel_3_API_%androidVersionInt% -d pixel -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigPixelThree

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigPixelThree
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\Pixel_3_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\Pixel_3\config.ini %userprofile%\.android\avd\Pixel_3_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                         PIXEL THREE XL AVD EMULATOR
rem echo =============================================================================================================
:pixelThreeXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionPixelThreeXl
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionPixelThreeXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionPixelThreeXl
if %errorlevel% equ 2 goto pixelList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionPixelThreeXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionPixelThreeXl

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionPixelThreeXl
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionPixelThreeXl
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionPixelThreeXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsidePixelThreeXl
if %errorlevel% equ 2 goto imageVersionPixelThreeXl

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsidePixelThreeXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionPixelThreeXl

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionPixelThreeXl
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionPixelThreeXl
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionPixelThreeXl
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsidePixelThreeXl
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsidePixelThreeXl
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionPixelThreeXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsidePixelThreeXl
if %errorlevel% equ 2 goto targetVersionInsidePixelThreeXl

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsidePixelThreeXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionPixelThreeXl

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_3_XL\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_3_XL\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_3_XL\config.ini) -replace 'AvdId=*.*','AvdId=Pixel_3_XL_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_3_XL\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_3_XL\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=Pixel 3 XL API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_3_XL\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_3_XL\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_3_XL\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_3_XL\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\skins\pixel_3_xl' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_3_XL\config.ini"

  goto installImagePixelThreeXl
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsidePixelThreeXl
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImagePixelThreeXl
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n Pixel_3_XL_API_%androidVersionInt% -d pixel_xl -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigPixelThree

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigPixelThree
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\Pixel_3_XL_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\Pixel_3_XL\config.ini %userprofile%\.android\avd\Pixel_3_XL_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                         PIXEL THREE A AVD EMULATOR
rem echo =============================================================================================================
:pixelThreeA
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionPixelThreeA
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionPixelThreeA
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionPixelThreeA
if %errorlevel% equ 2 goto pixelList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionPixelThreeA
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionPixelThreeA

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionPixelThreeA
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionPixelThreeA
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionPixelThreeA
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsidePixelThreeA
if %errorlevel% equ 2 goto imageVersionPixelThreeA

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsidePixelThreeA
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionPixelThreeA

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionPixelThreeA
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionPixelThreeA
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionPixelThreeA
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsidePixelThreeA
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsidePixelThreeA
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionPixelThreeA
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsidePixelThreeA
if %errorlevel% equ 2 goto targetVersionInsidePixelThreeA

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsidePixelThreeA
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionPixelThreeA

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_3a\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_3a\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_3a\config.ini) -replace 'AvdId=*.*','AvdId=Pixel_3a_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_3a\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_3a\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=Pixel 3a API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_3a\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_3a\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_3a\config.ini"

  goto installImagePixelThreeA
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsidePixelThreeA
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImagePixelThreeA
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n Pixel_3a_API_%androidVersionInt% -d pixel -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigPixelThreeA

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigPixelThreeA
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\Pixel_3a_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\Pixel_3a\config.ini %userprofile%\.android\avd\Pixel_3a_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                         PIXEL THREE A XL AVD EMULATOR
rem echo =============================================================================================================
:pixelThreeAXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionPixelThreeAXl
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionPixelThreeAXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionPixelThreeAXl
if %errorlevel% equ 2 goto pixelList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionPixelThreeAXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionPixelThreeAXl

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionPixelThreeAXl
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionPixelThreeAXl
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionPixelThreeAXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsidePixelThreeAXl
if %errorlevel% equ 2 goto imageVersionPixelThreeAXl

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsidePixelThreeAXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionPixelThreeAXl

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionPixelThreeAXl
  ) else if "%targetVersion%" equ "google_apis_playstore" (
    goto checkAbiVersionPixelThreeAXl
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionPixelThreeAXl
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsidePixelThreeAXl
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsidePixelThreeAXl
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionPixelThreeAXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\google_apis goto abiVersionInsidePixelThreeAXl
if %errorlevel% equ 2 goto targetVersionInsidePixelThreeAXl

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsidePixelThreeAXl
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionPixelThreeAXl

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_3a_XL\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_3a_XL\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_3a_XL\config.ini) -replace 'AvdId=*.*','AvdId=Pixel_3a_XL_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_3a_XL\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_3a_XL\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=Pixel 3a XL API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_3a_XL\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_3a_XL\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_3a_XL\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\phone\Pixel_3a_XL\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\skins\pixel_xl_silver' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\phone\Pixel_3a_XL\config.ini"

  goto installImagePixelThreeAXl
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsidePixelThreeAXl
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImagePixelThreeAXl
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n Pixel_3a_XL_API_%androidVersionInt% -d pixel_xl -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigPixelThreeAXl

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigPixelThreeAXl
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\Pixel_3a_XL_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\phone\Pixel_3a_XL\config.ini %userprofile%\.android\avd\Pixel_3a_XL_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                     TABLET SKIN LIST
rem echo =============================================================================================================
:tableSkinList
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. WXGA
echo  2. WSVGA
echo  3. NEXUS
echo  4. PIXEL
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:12340 /m "choose action ?"

if %errorlevel% equ 1 goto wxgaListTablet
if %errorlevel% equ 2 goto wsvgaListTablet
if %errorlevel% equ 3 goto nexusListTablet
if %errorlevel% equ 4 goto pixelListTablet
if %errorlevel% equ 5 goto createEmulator

rem echo==============================================================================================================
rem echo                                     WXGA TABLET SKIN LIST
rem echo =============================================================================================================
:wxgaListTablet
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. WXGA Tablet - 10.1 - 800x1280 - mdpi
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 goto wxga
if %errorlevel% equ 2 goto tableSkinList

rem echo==============================================================================================================
rem echo                                 WXGA TABLET AVD EMULATOR
rem echo =============================================================================================================
:wxga
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionWxgaTablet
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionWxgaTablet
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto checkImageVersionWxgaTablet
if %errorlevel% equ 2 goto wxgaListTablet

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionWxgaTablet
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionWxgaTablet

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionWxgaTablet
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionWxgaTablet
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionWxgaTablet
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideWxgaTablet
if %errorlevel% equ 2 goto imageVersionWxgaTablet

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideWxgaTablet
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionWxgaTablet

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionWxgaTablet
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionWxgaTablet
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsideWxgaTablet
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsideWxgaTablet
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionWxgaTablet
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideWxgaTablet
if %errorlevel% equ 2 goto targetVersionInsideWxgaTablet

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideWxgaTablet
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionWxgaTablet

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersion%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\10.1_WXGA_Tablet\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\10.1_WXGA_Tablet\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\10.1_WXGA_Tablet\config.ini) -replace 'AvdId=*.*','AvdId=10.1_WXGA_Tablet_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\10.1_WXGA_Tablet\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\10.1_WXGA_Tablet\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=10.1 WXGA (Tablet) API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\10.1_WXGA_Tablet\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\10.1_WXGA_Tablet\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\10.1_WXGA_Tablet\config.ini"

  goto installImageWxgaTablet
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideWxgaTablet
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageWxgaTablet
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n 10.1_WXGA_Tablet_API_%androidVersionInt% -d "10.1in WXGA (Tablet)" -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigWxgaTablet

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigWxgaTablet
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\10.1_WXGA_Tablet_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\tablet\10.1_WXGA_Tablet\config.ini %userprofile%\.android\avd\10.1_WXGA_Tablet_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                     WSVGA TABLET SKIN LIST
rem echo =============================================================================================================
:wsvgaListTablet
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. WSVGA - 7.0 - 600x1024 - mdpi
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 goto wsvga
if %errorlevel% equ 2 goto tableSkinList

rem echo==============================================================================================================
rem echo                                 WSVGA TABLET AVD EMULATOR
rem echo =============================================================================================================
:wsvga
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionWsvgaTablet
) else (
  goto tableSkinList
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionWsvgaTablet
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionWsvgaTablet
if %errorlevel% equ 2 goto wsvgaListTablet

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionWsvgaTablet
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionWsvgaTablet

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionWsvgaTablet
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionWsvgaTablet
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionWsvgaTablet
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideWsvgaTablet
if %errorlevel% equ 2 goto imageVersionWsvgaTablet

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideWsvgaTablet
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionWsvgaTablet

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionWsvgaTablet
  else if "%targetVersion%" equ "default" (
    goto checkAbiVersionWsvgaTablet
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsideWsvgaTablet
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsideWsvgaTablet
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionWsvgaTablet
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideWsvgaTablet
if %errorlevel% equ 2 goto targetVersionInsideWsvgaTablet

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideWsvgaTablet
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionWsvgaTablet

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\7_WSVGA_Tablet\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\7_WSVGA_Tablet\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\7_WSVGA_Tablet\config.ini) -replace 'AvdId=*.*','AvdId=7_WSVGA_Tablet_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\7_WSVGA_Tablet\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\7_WSVGA_Tablet\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=7_WSVGA_Tablet API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\7_WSVGA_Tablet\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\7_WSVGA_Tablet\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\7_WSVGA_Tablet\config.ini"

  goto installImageWsvgaTablet
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideWsvgaTablet
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageWsvgaTablet
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n 7_WSVGA_Tablet_API_%androidVersionInt% -d "7in WSVGA (Tablet)" -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigWsvgaTablet

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigWsvgaTablet
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\7_WSVGA_Tablet_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\tablet\7_WSVGA_Tablet\config.ini %userprofile%\.android\avd\7_WSVGA_Tablet_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                     NEXUS TABLET SKIN LIST
rem echo =============================================================================================================
:nexusListTablet
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Nexus 7 - 7.2 - 1200x1920 - xhdpi
echo  2. Nexus 7 (2012) - 7.0 - 800x1280 - tvdpi
echo  3. Nexus 9 - 8.6 - 2048x1536 - xhdpi
echo  4. Nexus 10 - 10.5 - 2560x1600 - xhdpi
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:12340 /m "choose action ?"

if %errorlevel% equ 1 goto nexus7
if %errorlevel% equ 2 goto nexus72012
if %errorlevel% equ 3 goto nexus9
if %errorlevel% equ 4 goto nexus10
if %errorlevel% equ 5 goto tableSkinList

rem echo==============================================================================================================
rem echo                                 NEXUS 7 TABLET AVD EMULATOR
rem echo =============================================================================================================
:nexus7
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionNexus7
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionNexus7
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionNexus7
if %errorlevel% equ 2 goto nexusListTablet

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionNexus7
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionNexus7

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionNexus7
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionNexus7
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionNexus7
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideNexus7
if %errorlevel% equ 2 goto imageVersionNexus7

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideNexus7
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionNexus7

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionNexus7
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionNexus7
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsideNexus7
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsideNexus7
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionNexus7
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideNexus7
if %errorlevel% equ 2 goto targetVersionInsideNexus7

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideNexus7
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionNexus7

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersion%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\nexus_7\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\nexus_7\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\nexus_7\config.ini) -replace 'AvdId=*.*','AvdId=Nexus_7_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\nexus_7\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\nexus_7\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=Nexus 7 API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\nexus_7\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\nexus_7\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\nexus_7\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\nexus_7\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\skins\nexus_7_2013' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\nexus_7\config.ini"

  goto installImageNexus7
) else (
  msg %username% 'cpu architecture android not foundor not support'
  goto abiVersionInsideNexus7
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageNexus7
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n Nexus_7_API_%androidVersionInt% -d "Nexus 7 2013" -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd'
goto overWriteConfigNexus7

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigNexus7
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\Nexus_7_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\tablet\nexus_7\config.ini %userprofile%\.android\avd\Nexus_7_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                 NEXUS 7 2012 TABLET AVD EMULATOR
rem echo =============================================================================================================
:nexus72012
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionNexus72012
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionNexus72012
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionNexus72012
if %errorlevel% equ 2 goto nexusListTablet

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionNexus72012
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionNexus72012

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionNexus72012
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionNexus72012
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionNexus72012
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideNexus72012
if %errorlevel% equ 2 goto imageVersionNexus72012

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideNexus72012
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionNexus72012

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionNexus72012
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionNexus72012
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsideNexus72012
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsideNexus72012
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionNexus72012
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideNexus72012
if %errorlevel% equ 2 goto targetVersionInsideNexus72012

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideNexus72012
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionNexus72012

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersion%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\Nexus_7_2012\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\Nexus_7_2012\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\Nexus_7_2012\config.ini) -replace 'AvdId=*.*','AvdId=Nexus_7_2012_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\Nexus_7_2012\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\Nexus_7_2012\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=Nexus 7 (2012) API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\Nexus_7_2012\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\Nexus_7_2012\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\Nexus_7_2012\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\Nexus_7_2012\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\skins\nexus_7' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\Nexus_7_2012\config.ini"

  goto installImageNexus72012
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideNexus72012
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageNexus72012
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n Nexus_7_2012_API_%androidVersionInt% -d "Nexus 7" -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigNexus72012

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigNexus72012
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\Nexus_7_2012_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\tablet\Nexus_7_2012\config.ini %userprofile%\.android\avd\Nexus_7_2012_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                 NEXUS 9 TABLET AVD EMULATOR
rem echo =============================================================================================================
:nexus9
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionNexus9
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionNexus9
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionNexus9
if %errorlevel% equ 2 goto nexusListTablet

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionNexus9
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionNexus9

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionNexus9
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionNexus9
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionNexus9
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideNexus9
if %errorlevel% equ 2 goto imageVersionNexus9

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideNexus9
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionNexus9

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionNexus9
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionNexus9
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsideNexus9
  )
) else (
   msg %username% 'system-images android target version not found or not support'
   goto targetVersionInsideNexus9
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionNexus9
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideNexus9
if %errorlevel% equ 2 goto targetVersionInsideNexus9

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideNexus9
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionNexus9

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\Nexus_9\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\Nexus_9\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\Nexus_9\config.ini) -replace 'AvdId=*.*','AvdId=Nexus_9_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\Nexus_9\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\Nexus_9\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=Nexus 9 API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\Nexus_9\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\Nexus_9\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\Nexus_9\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\Nexus_9\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\skins\Nexus_9' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\Nexus_9\config.ini"

  goto installImageNexus9
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideNexus9
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageNexus9
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n Nexus_9_API_%androidVersionInt% -d "Nexus 9" -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigNexus9

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigNexus9
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\Nexus_9_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\tablet\Nexus_9\config.ini %userprofile%\.android\avd\Nexus_9_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                 NEXUS 10 TABLET AVD EMULATOR
rem echo =============================================================================================================
:nexus10
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionNexus10
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionNexus10
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionNexus10
if %errorlevel% equ 2 goto nexusListTablet

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionNexus10
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionNexus10

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionNexus10
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionNexus10
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionNexus10
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideNexus10
if %errorlevel% equ 2 goto imageVersionNexus10

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideNexus10
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionNexus10

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
    goto checkAbiVersionNexus10
  ) else if "%targetVersion%" equ "default" (
    goto checkAbiVersionNexus10
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsideNexus10
  )
) else (
   msg %username% 'system-images android target version not found or not support'
   goto targetVersionInsideNexus10
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionNexus10
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideNexus10
if %errorlevel% equ 2 goto targetVersionInsideNexus10

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideNexus10
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionNexus10

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\Nexus_10\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\Nexus_10\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\Nexus_10\config.ini) -replace 'AvdId=*.*','AvdId=Nexus_10_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\Nexus_10\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\Nexus_10\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=Nexus 10 API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\Nexus_10\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\Nexus_10\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\Nexus_10\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\Nexus_10\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\skins\nexus_10' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\Nexus_10\config.ini"

  goto installImageNexus10
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideNexus10
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageNexus10
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n Nexus_10_API_%androidVersionInt% -d "Nexus 10" -k "system-images;android-%androidVersionInt%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigNexus10

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigNexus10
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\Nexus_10_API_%androidVersionInt%.avd" replace %systemdrive%\bangjago\configs\tablet\Nexus_10\config.ini %userprofile%\.android\avd\Nexus_10_API_%androidVersionInt%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                     PIXEL TABLET SKIN LIST
rem echo =============================================================================================================
:pixelListTablet
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Pixel C - 9.9 - 2560x1600 - xhdpi
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 goto pixelc
if %errorlevel% equ 2 goto tableSkinList

rem echo==============================================================================================================
rem echo                                PIXEL C TABLET AVD EMULATOR
rem echo =============================================================================================================
:pixelc
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionPixelc
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionPixelc
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionPixelc
if %errorlevel% equ 2 goto pixelListTablet

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionPixelc
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionPixelc

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionPixelc
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionPixelc
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionPixelc
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsidePixelc
if %errorlevel% equ 2 goto imageVersionPixelc

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsidePixelc
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionPixelc

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "google_apis" (
      goto checkAbiVersionPixelc
    ) else if "%targetVersion%" equ "default" (
      goto checkAbiVersionPixelc
    ) else (
      msg %username% 'system-images android target version not found or not support'
      goto targetVersionInsidePixelc
    )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsidePixelc
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionPixelc
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsidePixelc
if %errorlevel% equ 2 goto targetVersionInsidePixelc

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsidePixelc
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionPixelc

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersion%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\pixel_c\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\pixel_c\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\pixel_c\config.ini) -replace 'AvdId=*.*','AvdId=Pixel_C_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\pixel_c\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\pixel_c\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=Pixel C API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\pixel_c\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\pixel_c\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\pixel_c\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tablet\pixel_c\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\skins\pixel_c' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tablet\pixel_c\config.ini"

  goto installImagePixelc
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsidePixelc
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImagePixelc
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n Pixel_C_API_%androidVersion% -d pixel_c -k "system-images;android-%androidVersion%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigPixelc

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigPixelc
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\Pixel_C_API_%androidVersion%.avd" replace %systemdrive%\bangjago\configs\tablet\Pixel_C\config.ini %userprofile%\.android\avd\Pixel_C_API_%androidVersion%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                     WEAR OS SKIN LIST
rem echo =============================================================================================================
:awrSkinList
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Android Wear Round
echo  2. Android Wear Round Chin
echo  3. Android Wear Square
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:1230 /m "choose action ?"

if %errorlevel% equ 1 goto awrList
if %errorlevel% equ 2 goto awrcList
if %errorlevel% equ 3 goto awrsList
if %errorlevel% equ 4 goto createEmulator

rem echo==============================================================================================================
rem echo                                     ANDROID WEAR SKIN LIST
rem echo =============================================================================================================
:awrList
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. AWR - 1.65 - 320x320 - hdpi
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 goto awr
if %errorlevel% equ 2 goto awrSkinList

rem echo==============================================================================================================
rem echo                                ANDROID WEAR AVD EMULATOR
rem echo =============================================================================================================
:awr
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionAwr
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionAwr
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionAwr
if %errorlevel% equ 2 goto awrList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionAwr
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionAwr

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionAwr
) else (
  msg %username% 'system-images android sdk version not found or not support'
  goto imageVersionAwr
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionAwr
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideAwr
if %errorlevel% equ 2 goto imageVersionAwr

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideAwr
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionAwr

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
    if "%targetVersion%" equ "android-wear" (
      goto checkAbiVersionAwr
    ) else if "%targetVersion%" equ "android-wear-cn" (
      goto checkAbiVersionAwr
    ) else (
      msg %username% 'system-images android target version not found or not support'
      goto targetVersionInsideAwr
    )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsideAwr
 )

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionAwr
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideAwr
if %errorlevel% equ 2 goto targetVersionInsideAwr

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideAwr
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionAwr

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersion%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\WearOS\Android_Wear_Round\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\WearOS\Android_Wear_Round\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\WearOS\Android_Wear_Round\config.ini) -replace 'AvdId=*.*','AvdId=Android_Wear_Round_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\WearOS\Android_Wear_Round\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\WearOS\Android_Wear_Round\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=Android Wear Round API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\WearOS\Android_Wear_Round\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\WearOS\Android_Wear_Round\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\WearOS\Android_Wear_Round\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\WearOS\Android_Wear_Round\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\system-images\android-25\android-wear\x86\skins\AndroidWearRound' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\WearOS\Android_Wear_Round\config.ini"

  goto installImageAwr
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideAwr
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageAwr
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n Android_Wear_Round_API_%androidVersion% -d wear_round -k "system-images;android-%androidVersion%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'sucessfully to created avd emulator'
goto overWriteConfigAwr

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigAwr
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\Android_Wear_Round_API_%androidVersion%.avd" replace %systemdrive%\bangjago\configs\WearOS\Android_Wear_Round\config.ini %userprofile%\.android\avd\Android_Wear_Round_API_%androidVersion%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                     ANDROID WEAR ROUND CHIN SKIN LIST
rem echo =============================================================================================================
:awrcList
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. AWRC - 2.11 - 290x320 - hdpi
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 goto awrc
if %errorlevel% equ 2 goto awrSkinList

rem echo==============================================================================================================
rem echo                                ANROID WEAR ROUND CHIN TABLET AVD EMULATOR
rem echo =============================================================================================================
:awrc
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionAwrc
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionAwrc
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionAwrc
if %errorlevel% equ 2 goto awrcList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionAwrc
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionAwrc

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionAwrc
) else (
  msg %username% 'system-images android sdk version not found or not support'
  goto imageVersionAwrc
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionAwrc
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideAwrc
if %errorlevel% equ 2 goto imageVersionAwrc

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideAwrc
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionAwrc

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
    if "%targetVersion%" equ "android-wear" (
      goto checkAbiVersionAwrc
    ) else if "%targetVersion%" equ "android-wear-cn" (
      goto checkAbiVersionAwrc
    ) else (
      msg %username% 'system-images android target version not found or not support'
      goto targetVersionInsideAwrc
    )
) else (
   msg %username% 'system-images android target version not found or not support'
   goto targetVersionInsideAwrc
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionAwrc
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideAwrc
if %errorlevel% equ 2 goto targetVersionInsideAwrc

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideAwrc
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionAwrc

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersion%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\WearOS\Android_Wear_Round_Chin\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\WearOS\Android_Wear_Round_Chin\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\WearOS\Android_Wear_Round_Chin\config.ini) -replace 'AvdId=*.*','AvdId=Android_Wear_Round_Chin_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\WearOS\Android_Wear_Round_Chin\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\WearOS\Android_Wear_Round_Chin\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=Android Wear Round Chin API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\WearOS\Android_Wear_Round_Chin\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\WearOS\Android_Wear_Round_Chin\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\WearOS\Android_Wear_Round_Chin\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\WearOS\Android_Wear_Round_Chin\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\system-images\android-25\android-wear\x86\skins\AndroidWearRoundChin320x290' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\WearOS\Android_Wear_Round_Chin\config.ini"

  goto installImageAwrc
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideAwrc
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageAwrc
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n Android_Wear_Round_Chin_API_%androidVersion% -d wear_round_chin_320_290 -k "system-images;android-%androidVersion%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigAwrc

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigAwrc
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\Android_Wear_Round_Chin_API_%androidVersion%.avd" replace %systemdrive%\bangjago\configs\WearOS\Android_Wear_Round_Chin\config.ini %userprofile%\.android\avd\Android_Wear_Round_Chin_API_%androidVersion%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                     ANDROID WEAR ROUND SQUARE SKIN LIST
rem echo =============================================================================================================
:awrsList
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. AWRS - 1.65 - 320x320 - hdpi
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 goto awrs
if %errorlevel% equ 2 goto awrSkinList

rem echo==============================================================================================================
rem echo                                AWRS TABLET AVD EMULATOR
rem echo =============================================================================================================
:awrs
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionAws
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionAws
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionAws
if %errorlevel% equ 2 goto awrsList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionAws
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionAws

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionAws
) else (
  msg %username% 'system-images android sdk not found or not support'
  goto imageVersionAws
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionAws
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideAws
if %errorlevel% equ 2 goto imageVersionAws

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideAws
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionAws

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
    if "%targetVersion%" equ "android-wear" (
      goto checkAbiVersionAws
    ) else if "%targetVersion%" equ "android-wear-cn" (
      goto checkAbiVersionAws
    ) else (
      msg %username% 'system-images android target version not found or not support'
      goto targetVersionInsideAws
    )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsideAws
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionAws
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideAws
if %errorlevel% equ 2 goto targetVersionInsideAws

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideAws
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionAws

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersion%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\WearOS\Android_Wear_Square\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\WearOS\Android_Wear_Square\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\WearOS\Android_Wear_Square\config.ini) -replace 'AvdId=*.*','AvdId=Android_Wear_Square_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\WearOS\Android_Wear_Square\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\WearOS\Android_Wear_Square\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=Android Wear Square API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\WearOS\Android_Wear_Square\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\WearOS\Android_Wear_Square\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\WearOS\Android_Wear_Square\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\WearOS\Android_Wear_Square\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\skins\AndroidWearSquare' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\WearOS\Android_Wear_Square\config.ini"

  goto installImageAws
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideAws
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageAws
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n Android_Wear_Square_API_%androidVersion% -d wear_square -k "system-images;android-%androidVersion%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigAws

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigAws
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\Android_Wear_Square_API_%androidVersion%.avd" replace %systemdrive%\bangjago\configs\WearOS\Android_Wear_Square\config.ini %userprofile%\.android\avd\Android_Wear_Round_Square_API_%androidVersion%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                     TV SKIN LIST
rem echo =============================================================================================================
:tvSkinList
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Android TV (720p)
echo  2. Android TV (1080p)
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "choose action ?"

if %errorlevel% equ 1 goto Tv720pList
if %errorlevel% equ 2 goto Tv1080pList
if %errorlevel% equ 3 goto createEmulator

rem echo==============================================================================================================
rem echo                                     ANDROID WEAR ROUND SQUARE SKIN LIST
rem echo =============================================================================================================
:Tv720pList
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Android TV - 55.0 - 1280x720  - tvdpi
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 goto Tv720p
if %errorlevel% equ 2 goto tvSkinList

rem echo==============================================================================================================
rem echo                                ANDROID TV 720P AVD EMULATOR
rem echo =============================================================================================================
:Tv720p
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionTv720
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionTv720
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionTv720
if %errorlevel% equ 2 goto Tv720pList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionTv720
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt=%androidVersion%

if %androidVersionInt% equ 0 goto checkImageVersionTv720

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionTv720
) else (
  msg %username% 'system-images android sdk version not found or not support'
  goto imageVersionTv720
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionTv720
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideTv720
if %errorlevel% equ 2 goto imageVersionTv720

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideTv720
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input target type android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionTv720

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "android-tv" (
    goto checkAbiVersionTv720
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsideTv720
  )
) else (
   msg %username% 'system-images android target version not found or not support'
   goto targetVersionInsideTv720
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionTv720
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideTv720
if %errorlevel% equ 2 goto targetVersionInsideTv720

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideTv720
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionTv720

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersion%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\tv\Android_TV_720p\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tv\Android_TV_720p\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tv\Android_TV_720p\config.ini) -replace 'AvdId=*.*','AvdId=Android_TV_720p_API_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tv\Android_TV_720p\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tv\Android_TV_720p\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=Android TV (720p) API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tv\Android_TV_720p\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tv\Android_TV_720p\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tv\Android_TV_720p\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tv\Android_TV_720p\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\skins\tv_720p' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tv\Android_TV_720p\config.ini"

  goto installImageTv720
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideTv720
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageTv720
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n Android_TV_720p_API_%androidVersion% -d tv_720p -k "system-images;android-%androidVersion%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigTv720

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigTv720
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\Android_TV_720p_API_%androidVersion%.avd" replace %systemdrive%\bangjago\configs\tv\Android_TV_720p\config.ini %userprofile%\.android\avd\Android_TV_720p_API_%androidVersion%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                     ANDROID WEAR ROUND SQUARE SKIN LIST
rem echo =============================================================================================================
:Tv1080pList
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Android TV - 55.0 - 1920x1080 - xhdpi
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 goto Tv1080p
if %errorlevel% equ 2 goto tvSkinList

rem echo==============================================================================================================
rem echo                                ANDROID TV 1080P TABLET AVD EMULATOR
rem echo =============================================================================================================
:Tv1080p
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "do you want to create an avd emulator ?"
echo off &echo.&echo off

if %errorlevel% equ 1 (
  goto checkImageVersionTv1080
) else (
  goto createEmulator
)

rem echo==============================================================================================================
rem echo                                     SYSTEM IMAGES VERSION
rem echo =============================================================================================================
:checkImageVersionTv1080
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Android API Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images goto imageVersionTv1080
if %errorlevel% equ 2 goto Tv1080pList

rem echo==============================================================================================================
rem echo                                    SYSTEM IMAGES VERSION INSIDE
rem echo =============================================================================================================
:imageVersionTv1080
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p androidVersion=input type android api version ? &
set /a androidVersionInt="%androidVersion%"

if %androidVersionInt% equ 0 goto checkImageVersionTv1080

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersionInt%" (
  goto checkTargetVersionTv1080
) else (
  msg %username% 'system-images android sdk version not found or not support'
  goto imageVersionTv1080
)

rem echo==============================================================================================================
rem echo                                     TARGET VERSION
rem echo =============================================================================================================
:checkTargetVersionTv1080
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Target Android Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt% goto targetVersionInsideTv1080
if %errorlevel% equ 2 goto imageVersionTv1080

rem echo==============================================================================================================
rem echo                                     TARGET VERSION INSIDE
rem echo =============================================================================================================
:targetVersionInsideTv1080
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p targetVersion=input type target android version ? &

if "%targetVersion%" == "0" goto checkTargetVersionTv1080

if exist "%localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion%" (
  if "%targetVersion%" equ "android-tv" (
    goto checkAbiVersionTv1080
  ) else (
    msg %username% 'system-images android target version not found or not support'
    goto targetVersionInsideTv1080
  )
) else (
  msg %username% 'system-images android target version not found or not support'
  goto targetVersionInsideTv1080
)

rem echo==============================================================================================================
rem echo                                     ABI VERSION
rem echo =============================================================================================================
:checkAbiVersionTv1080
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Set Type Cpu Architecture Version
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choose action ?"

if %errorlevel% equ 1 start %localappdata%\android\sdk\system-images\android-%androidVersionInt%\%targetVersion% goto abiVersionInsideTv1080
if %errorlevel% equ 2 goto targetVersionInsideTv1080

rem echo==============================================================================================================
rem echo                                     ABI VERSION INSIDE
rem echo =============================================================================================================
:abiVersionInsideTv1080
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p abiVersion=input type cpu architecture version ? &

if "%abiVersion%" == "0" goto checkAbiVersionTv1080

if exist "%localappdata%\Android\Sdk\system-images\android-%androidVersion%\%targetVersion%\%abiVersion%" (
  powershell -Command "(gc %systemdrive%\bangjago\configs\tv\Android_TV_1080p\config.ini) -replace 'image.sysdir.1=*.*','image.sysdir.1=system-images\android-%androidVersionInt%\%targetVersion%\%abiVersion%\' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tv\Android_TV_1080p\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tv\Android_TV_1080p\config.ini) -replace 'AvdId=*.*','AvdId=Android_TV_1080p_%androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tv\Android_TV_1080p\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tv\Android_TV_1080p\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=Android TV (1080p) API %androidVersionInt%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tv\Android_TV_1080p\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tv\Android_TV_1080p\config.ini) -replace 'hw.cpu.arch=*.*','hw.cpu.arch=%abiVersion%' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tv\Android_TV_1080p\config.ini"

  powershell -Command "(gc %systemdrive%\bangjago\configs\tv\Android_TV_1080p\config.ini) -replace 'skin.path=*.*','skin.path=%userprofile%\AppData\Local\Android\Sdk\skins\tv_1080p' | Out-File -encoding ASCII %systemdrive%\bangjago\configs\tv\Android_TV_1080p\config.ini"

  goto installImageTv1080
) else (
  msg %username% 'cpu architecture android not found or not support'
  goto abiVersionInsideTv1080
)

rem echo==============================================================================================================
rem echo                                    INSTALL SYSTEM-IMAGES
rem echo =============================================================================================================
:installImageTv1080
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                   WARNING !!! don't close this cli because the system-images can be damaged
echo ==============================================================================================================
echo off &echo.&echo off

call avdmanager create avd -n Android_TV_1080p_API_%androidVersion% -d tv_1080p -k "system-images;android-%androidVersion%;%targetVersion%;%abiVersion%" -c "512M"
msg %username% 'successfully to created avd emulator'
goto overWriteConfigTv1080

rem echo==============================================================================================================
rem echo                                     OVERWRITE CONFIG
rem echo =============================================================================================================
:overWriteConfigTv1080
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%userprofile%\.android\avd\Android_TV_1080p_API_%androidVersion%.avd" replace %systemdrive%\bangjago\configs\tv\Android_TV_1080p\config.ini %userprofile%\.android\avd\Android_TV_1080p_API_%androidVersion%.avd
goto overwriteConfig

rem echo==============================================================================================================
rem echo                                     OVERWRITE AVDMANAGER
rem echo =============================================================================================================
:overwriteConfig
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

choice /m "are you sure you want to custom this avd emulator ?"

echo off &echo.&echo off
echo off &echo.&echo off

if %errorlevel% equ 1 (
  start avdmanager list avd
  goto avdmanagerDefaultNameOver
) else (
  goto runEmulator
)

rem echo==============================================================================================================
rem echo                                     CHECK AVDMANAGER NAME
rem echo =============================================================================================================
:avdmanagerDefaultNameOver
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p defaultName=enter the previous emulator device name ? &

if "%defaultName%" equ "0" goto overwriteConfig

if exist "%userprofile%\.android\avd\%defaultName%.ini" (
  goto avdmanagerNameOutsideOver
) else (
  msg %username% 'emulator device is not exist fot this name'
  goto avdmanagerDefaultNameOver
)

rem echo==============================================================================================================
rem echo                                     UPDATE AVDMANAGER NAME OUTSIDE
rem echo =============================================================================================================
:avdmanagerNameOutsideOver
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

choice /m "are you sure you want to change this name ?"

echo off &echo.&echo off
echo off &echo.&echo off

if %errorlevel% equ 1 goto avdmanagerNameInsideOver
if %errorlevel% equ 2 goto avdmanagerCoreOutsideOver

rem echo==============================================================================================================
rem echo                                     UPDATE AVDMANAGER NAME INSIDE
rem echo =============================================================================================================
:avdmanagerNameInsideOver
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p inputName=input the new avd emulator name ? &

if "%inputName%" equ "0" goto avdmanagerDefaultNameOver

if not "%inputName%" equ "" (
  goto avdmanagerNameOver
) else (
  msg %username%% 'new emulator name is required'
  goto avdmanagerNameInsideOver
)

rem echo==============================================================================================================
rem echo                                       UPDATE AVDMANAGER NAME
rem echo =============================================================================================================
:avdmanagerNameOver
cls
echo off &echo.&echo off

rename %userprofile%\.android\avd\%defaultName%.avd %inputName%.avd

rename %userprofile%\.android\avd\%defaultName%.ini %inputName%.ini

powershell -Command "(gc $env:userprofile\.android\avd\%inputName%.ini) -replace 'path=.*','path=%userprofile%\.android\avd\%inputName%.avd' | Out-File -encoding ASCII $env:userprofile\.android\avd\%inputName%.ini"

powershell -Command "(gc $env:userprofile\.android\avd\%inputName%.ini) -replace 'path.rel=*.*','path.rel=avd\%inputName%.avd' | Out-File -encoding ASCII $env:userprofile\.android\avd\%inputName%.ini"

powershell -Command "(gc $env:userprofile\.android\avd\%inputName%.avd\config.ini) -replace 'sdcard.path=*.*','sdcard.path=%userprofile%\.android\avd\%inputName%.avd\sdcard.img' | Out-File -encoding ASCII $env:userprofile\.android\avd\%inputName%.avd\config.ini"

powershell -Command "(gc $env:userprofile\.android\avd\%inputName%.avd\config.ini) -replace 'AvdId=*.*','AvdId=%inputName%' | Out-File -encoding ASCII $env:userprofile\.android\avd\%inputName%.avd\config.ini"

powershell -Command "(gc $env:userprofile\.android\avd\%inputName%.avd\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=%inputName%' | Out-File -encoding ASCII $env:userprofile\.android\avd\%inputName%.avd\config.ini"

goto avdmanagerCoreOutsideOver

rem echo==============================================================================================================
rem echo                                     UPDATE AVDMANAGER CORE OUTSIDE
rem echo =============================================================================================================
:avdmanagerCoreOutsideOver
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

choice /m "are you sure you want to change this cpu ?"

echo off &echo.&echo off
echo off &echo.&echo off

if %errorlevel% equ 1 goto avdmanagerCoreInsideOver
if %errorlevel%% equ 2 goto avdmanagerRamOutsideOver

rem echo==============================================================================================================
rem echo                                     UPDATE AVDMANAGER CORE INSIDE
rem echo =============================================================================================================
:avdmanagerCoreInsideOver
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                         WARNING !!! please check your cpu core before change this value
echo ==============================================================================================================
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p inputCore=input number of cpu cores ? &
set /a inputCoreInt="%inputCore%"

if "%inputCore%" equ "0" (
  goto avdmanagerNameInsideOver
) else (
  if %inputCoreInt% gtr 0 (
    goto avdmanagerCoreOver
  ) else (
    msg %username% 'cpu cores value must be number'
    goto avdmanagerCoreInsideOver
  )
)

rem echo==============================================================================================================
rem echo                                       UPDATE AVDMANAGER CORE
rem echo =============================================================================================================
:avdmanagerCoreOver
cls
echo off &echo.&echo off
echo off &echo.&echo off

if "%inputName%" equ "" (
  powershell -Command "(gc $env:userprofile\.android\avd\%defaultName%.avd\config.ini) -replace 'hw.cpu.ncore=*.*','hw.cpu.ncore=%inputCoreInt%' | Out-File -encoding ASCII $env:userprofile\.android\avd\%defaultName%.avd\config.ini"
  goto avdmanagerRamOutsideOver
) else (
  powershell -Command "(gc $env:userprofile\.android\avd\%inputName%.avd\config.ini) -replace 'hw.cpu.ncore=*.*','hw.cpu.ncore=%inputCoreInt%' | Out-File -encoding ASCII $env:userprofile\.android\avd\%inputName%.avd\config.ini"
  goto avdmanagerRamOutsideOver
)

rem echo==============================================================================================================
rem echo                                     UPDATE AVDMANAGER RAM OUTSIDE
rem echo =============================================================================================================
:avdmanagerRamOutsideOver
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

choice /m "are you sure you want to change this ram ?"

echo off &echo.&echo off
echo off &echo.&echo off

if %errorlevel% equ 1 goto avdmanagerRamInsideOver
if %errorlevel%% equ 2 goto avdmanagerInternalOutsideOver

rem echo==============================================================================================================
rem echo                                     UPDATE AVDMANAGER RAM INSIDE
rem echo =============================================================================================================
:avdmanagerRamInsideOver
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p inputRam=input amount of ram ? &
set /a inputRamInt="%inputRam%"

if "%inputRam%" equ "0" (
   goto avdmanagerCoreInsideOver
) else (
  if %inputRamInt% gtr 0 (
    goto avdmanagerRamOver
  ) else (
    msg %username% 'ram value must be number'
    goto avdmanagerRamInsideOver
  )
)

rem echo==============================================================================================================
rem echo                                       UPDATE AVDMANAGER RAM
rem echo =============================================================================================================
:avdmanagerRamOver
cls
echo off &echo.&echo off
echo off &echo.&echo off

if "%inputName%" equ "" (
  powershell -Command "(gc $env:userprofile\.android\avd\%defaultName%.avd\config.ini) -replace 'hw.ramSize=*.*','hw.ramSize=%inputRamInt%' | Out-File -encoding ASCII $env:userprofile\.android\avd\%defaultName%.avd\config.ini"
  goto avdmanagerInternalOutsideOver
) else (
  powershell -Command "(gc $env:userprofile\.android\avd\%inputName%.avd\config.ini) -replace 'hw.ramSize=*.*','hw.ramSize=%inputRamInt%' | Out-File -encoding ASCII $env:userprofile\.android\avd\%inputName%.avd\config.ini"
  goto avdmanagerInternalOutsideOver
)

rem echo==============================================================================================================
rem echo                                     UPDATE AVDMANAGER INTERNAL OUTSIDE
rem echo =============================================================================================================
:avdmanagerInternalOutsideOver
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

choice /m "are you sure you want to change this internal storage ?"

echo off &echo.&echo off
echo off &echo.&echo off

if %errorlevel% equ 1 goto avdmanagerInternalInsideOver
if %errorlevel%% equ 2 goto avdmanagervszOutsideOver

rem echo==============================================================================================================
rem echo                                     OVERWRITE AVDMANAGER INTERNAL INSIDE
rem echo =============================================================================================================
:avdmanagerInternalInsideOver
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p inputInternal=input amount of internal storage ? &
set /a inputInternalInt="%inputInternal%"

if "%inputInternal%" equ "0" (
  goto avdmanagerRamInsideOver
) else (
  if %inputInternalInt% gtr 0 (
    goto avdmanagerInternalOver
  ) else (
    msg %username% 'internal storage value must be number'
    goto avdmanagerInternalInsideOver
  )
)

rem echo==============================================================================================================
rem echo                                       OVERWRITE AVDMANAGER INTERNAL
rem echo =============================================================================================================
:avdmanagerInternalOver
cls
echo off &echo.&echo off
echo off &echo.&echo off

if "%inputName%" equ "" (
  powershell -Command "(gc $env:userprofile\.android\avd\%defaultName%.avd\config.ini) -replace 'disk.dataPartition.size=*.*','disk.dataPartition.size=%inputInternalInt%M' | Out-File -encoding ASCII $env:userprofile\.android\avd\%defaultName%.avd\config.ini"
  goto avdmanagervszOutsideOver
) else (
  powershell -Command "(gc $env:userprofile\.android\avd\%inputName%.avd\config.ini) -replace 'disk.dataPartition.size=*.*','disk.dataPartition.size=%inputInternalInt%M' | Out-File -encoding ASCII $env:userprofile\.android\avd\%inputName%.avd\config.ini"
  goto avdmanagervszOutsideOver
)

rem echo==============================================================================================================
rem echo                                     OVERWRITE AVDMANAGER VMS OUTSIDE
rem echo =============================================================================================================
:avdmanagervszOutsideOver
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

choice /m "are you sure you want to change this vm size ?"

echo off &echo.&echo off
echo off &echo.&echo off

if %errorlevel% equ 1 goto avdmanagervszInsideOver
if %errorlevel% equ 2 goto runEmulator

rem echo==============================================================================================================
rem echo                                     OVERWRITE AVDMANAGER VMS INSIDE
rem echo =============================================================================================================
:avdmanagervszInsideOver
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p inputvsz=input amount of vm size ? &
set /a inputvszInt="%inputvsz%"

if "%inputvsz%" equ "0" (
  goto avdmanagerInternalInsideOver
) else (
  if %inputvszInt% gtr 0 (
    goto avdmanagervszOver
  ) else (
    msg %username% 'vm size value must be number'
    goto avdmanagervszInsideOver
  )
)

rem echo==============================================================================================================
rem echo                                       OVERWRITE AVDMANAGER VMS
rem echo =============================================================================================================
:avdmanagervszOver
cls
echo off &echo.&echo off
echo off &echo.&echo off

if "%inputName%" equ "" (
  powershell -Command "(gc $env:userprofile\.android\avd\%defaultName%.avd\config.ini) -replace 'vm.heapSize=*.*','vm.heapSize=%inputvszInt%' | Out-File -encoding ASCII $env:userprofile\.android\avd\%defaultName%.avd\config.ini"
  goto overwriteSucess
) else (
  powershell -Command "(gc $env:userprofile\.android\avd\%inputName%.avd\config.ini) -replace 'vm.heapSize=*.*','vm.heapSize=%inputvszInt%' | Out-File -encoding ASCII $env:userprofile\.android\avd\%inputName%.avd\config.ini"
  goto overwriteSucess
)

:overwriteSucess
msg %username% 'successfully to custom this emulator'
goto runEmulator

rem echo==============================================================================================================
rem echo                                     RUNNING AVDMANAGER
rem echo =============================================================================================================
:runEmulator
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

choice /m "do you want to run the emulator ?"

if %errorlevel%% equ 1 (
  start avdmanager list avd
  goto runningEmulatorInside
) else (
  goto avdTools
)

echo off &echo.&echo off
echo off &echo.&echo off

rem echo==============================================================================================================
rem echo                                     RUNNING AVDMANAGER INSIDE
rem echo =============================================================================================================
:runningEmulatorInside
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p runningName=input avd device emulator name ? &

if "%runningName%" equ "0" goto runEmulator

if exist "%userprofile%\.android\avd\%runningName%.avd"  (
  call emulator -avd %runningName%
  goto avdTools
) else (
  msg %username% 'emulator device is not exist fot this name'
  goto runningEmulatorInside
)

rem echo==============================================================================================================
rem echo                                     DELETE AVDMANAGER
rem echo =============================================================================================================
:deleteEmulator
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

choice /m "are you sure you want to delete this avd device ?"

if %errorlevel% equ 1 (
  start avdmanager list avd
  goto deleteEmulatorInside
) else (
  goto avdTools
)

rem echo==============================================================================================================
rem echo                                     DELETE AVDMANAGER iNSIDE
rem echo =============================================================================================================
:deleteEmulatorInside
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p deleteName=input avd device emulator name ? &

if "%deleteName%" equ "0" goto deleteEmulator

if exist "%userprofile%\.android\avd\%deleteName%.avd"  (
  call avdmanager delete avd -n %deleteName%
  msg %username% 'successfully to delete this emulator'
  goto avdTools
) else (
  msg %username% 'emulator device is not exist fot this name'
  goto deleteEmulatorInside
)

rem echo==============================================================================================================
rem echo                                     UPDATE AVDMANAGER
rem echo =============================================================================================================
:updateEmulator
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

choice /m "are you sure you want to update this avd emulator ?"

echo off &echo.&echo off
echo off &echo.&echo off

if %errorlevel% equ 1 (
  start avdmanager list avd
  goto avdmanagerDefaultName
) else (
  goto avdTools
)

rem echo==============================================================================================================
rem echo                                     CHECK AVDMANAGER NAME
rem echo =============================================================================================================
:avdmanagerDefaultName
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p defaultName=enter the previous emulator device name ? &

if "%defaultName%" equ "0" goto updateEmulator

if exist "%userprofile%\.android\avd\%defaultName%.ini" (
  goto avdmanagerNameOutside
) else (
  msg %username% 'emulator device is not exist fot this name'
  goto avdmanagerDefaultName
)

rem echo==============================================================================================================
rem echo                                     UPDATE AVDMANAGER NAME OUTSIDE
rem echo =============================================================================================================
:avdmanagerNameOutside
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

choice /m "are you sure you want to change this name ?"

echo off &echo.&echo off
echo off &echo.&echo off

if %errorlevel% equ 1 goto avdmanagerNameInside
if %errorlevel% equ 2 goto avdmanagerCoreOutside

rem echo==============================================================================================================
rem echo                                     UPDATE AVDMANAGER NAME INSIDE
rem echo =============================================================================================================
:avdmanagerNameInside
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p inputName=input the new avd emulator name ? &

if "%inputName%" equ "0" goto avdmanagerDefaultName

if not "%inputName%" equ "" (
  goto avdmanagerName
) else (
  msg %username%% 'new emulator name is required'
  goto avdmanagerNameInside
)

rem echo==============================================================================================================
rem echo                                       UPDATE AVDMANAGER NAME
rem echo =============================================================================================================
:avdmanagerName
cls
echo off &echo.&echo off

rename %userprofile%\.android\avd\%defaultName%.avd %inputName%.avd

rename %userprofile%\.android\avd\%defaultName%.ini %inputName%.ini

powershell -Command "(gc $env:userprofile\.android\avd\%inputName%.ini) -replace 'path=.*','path=%userprofile%\.android\avd\%inputName%.avd' | Out-File -encoding ASCII $env:userprofile\.android\avd\%inputName%.ini"

powershell -Command "(gc $env:userprofile\.android\avd\%inputName%.ini) -replace 'path.rel=*.*','path.rel=avd\%inputName%.avd' | Out-File -encoding ASCII $env:userprofile\.android\avd\%inputName%.ini"

powershell -Command "(gc $env:userprofile\.android\avd\%inputName%.avd\config.ini) -replace 'sdcard.path=*.*','sdcard.path=%userprofile%\.android\avd\%inputName%.avd\sdcard.img' | Out-File -encoding ASCII $env:userprofile\.android\avd\%inputName%.avd\config.ini"

powershell -Command "(gc $env:userprofile\.android\avd\%inputName%.avd\config.ini) -replace 'AvdId=*.*','AvdId=%inputName%' | Out-File -encoding ASCII $env:userprofile\.android\avd\%inputName%.avd\config.ini"

powershell -Command "(gc $env:userprofile\.android\avd\%inputName%.avd\config.ini) -replace 'avd.ini.displayname=*.*','avd.ini.displayname=%inputName%' | Out-File -encoding ASCII $env:userprofile\.android\avd\%inputName%.avd\config.ini"

goto avdmanagerCoreOutside

rem echo==============================================================================================================
rem echo                                     UPDATE AVDMANAGER CORE OUTSIDE
rem echo =============================================================================================================
:avdmanagerCoreOutside
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

choice /m "are you sure you want to change this cpu ?"

echo off &echo.&echo off
echo off &echo.&echo off

if %errorlevel% equ 1 goto avdmanagerCoreInside
if %errorlevel%% equ 2 goto avdmanagerRamOutside

rem echo==============================================================================================================
rem echo                                     UPDATE AVDMANAGER CORE INSIDE
rem echo =============================================================================================================
:avdmanagerCoreInside
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                         WARNING !!! please check your cpu core before change this value
echo ==============================================================================================================
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p inputCore=input number of cpu cores ? &
set /a inputCoreInt="%inputCore%"

if "%inputCore%" equ "0" (
  goto avdmanagerNameOutside
) else (
  if %inputCoreInt% gtr 0 (
    goto avdmanagerCore
  ) else (
    msg %username% 'cpu cores value must be number'
    goto avdmanagerCoreInside
  )
)

rem echo==============================================================================================================
rem echo                                       UPDATE AVDMANAGER CORE
rem echo =============================================================================================================
:avdmanagerCore
cls
echo off &echo.&echo off
echo off &echo.&echo off

if "%inputName%" equ "" (
  powershell -Command "(gc $env:userprofile\.android\avd\%defaultName%.avd\config.ini) -replace 'hw.cpu.ncore=*.*','hw.cpu.ncore=%inputCoreInt%' | Out-File -encoding ASCII $env:userprofile\.android\avd\%defaultName%.avd\config.ini"
  goto avdmanagerRamOutside
) else (
  powershell -Command "(gc $env:userprofile\.android\avd\%inputName%.avd\config.ini) -replace 'hw.cpu.ncore=*.*','hw.cpu.ncore=%inputCoreInt%' | Out-File -encoding ASCII $env:userprofile\.android\avd\%inputName%.avd\config.ini"
  goto avdmanagerRamOutside
)

rem echo==============================================================================================================
rem echo                                     UPDATE AVDMANAGER RAM OUTSIDE
rem echo =============================================================================================================
:avdmanagerRamOutside
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

choice /m "are you sure you want to change this ram ?"

echo off &echo.&echo off
echo off &echo.&echo off

if %errorlevel% equ 1 goto avdmanagerRamInside
if %errorlevel%% equ 2 goto avdmanagerInternalOutside

rem echo==============================================================================================================
rem echo                                     UPDATE AVDMANAGER RAM INSIDE
rem echo =============================================================================================================
:avdmanagerRamInside
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p inputRam=input amount of ram ? &
set /a inputRamInt="%inputRam%"

if "%inputRam%" equ "0" (
   goto avdmanagerCoreOutside
) else (
  if %inputRamInt% gtr 0 (
    goto avdmanagerRam
  ) else (
    msg %username% 'ram value must be number'
    goto avdmanagerRamInside
  )
)

rem echo==============================================================================================================
rem echo                                       UPDATE AVDMANAGER RAM
rem echo =============================================================================================================
:avdmanagerRam
cls
echo off &echo.&echo off
echo off &echo.&echo off

if "%inputName%" equ "" (
  powershell -Command "(gc $env:userprofile\.android\avd\%defaultName%.avd\config.ini) -replace 'hw.ramSize=*.*','hw.ramSize=%inputRamInt%' | Out-File -encoding ASCII $env:userprofile\.android\avd\%defaultName%.avd\config.ini"
  goto avdmanagerInternalOutside
) else (
  powershell -Command "(gc $env:userprofile\.android\avd\%inputName%.avd\config.ini) -replace 'hw.ramSize=*.*','hw.ramSize=%inputRamInt%' | Out-File -encoding ASCII $env:userprofile\.android\avd\%inputName%.avd\config.ini"
  goto avdmanagerInternalOutside
)

rem echo==============================================================================================================
rem echo                                     UPDATE AVDMANAGER INTERNAL OUTSIDE
rem echo =============================================================================================================
:avdmanagerInternalOutside
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

choice /m "are you sure you want to change this internal storage ?"

echo off &echo.&echo off
echo off &echo.&echo off

if %errorlevel% equ 1 goto avdmanagerInternalInside
if %errorlevel%% equ 2 goto avdmanagervszOutside

rem echo==============================================================================================================
rem echo                                     UPDATE AVDMANAGER INTERNAL INSIDE
rem echo =============================================================================================================
:avdmanagerInternalInside
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p inputInternal=input amount of internal storage ? &
set /a inputInternalInt="%inputInternal%"

if "%inputInternal%" equ "0" (
  goto avdmanagerRamOutside
) else (
  if %inputInternalInt% gtr 0 (
    goto avdmanagerInternal
  ) else (
    msg %username% 'internal storage value must be number'
    goto avdmanagerInternalInside
  )
)

rem echo==============================================================================================================
rem echo                                       UPDATE AVDMANAGER INTERNAL
rem echo =============================================================================================================
:avdmanagerInternal
cls
echo off &echo.&echo off
echo off &echo.&echo off

if "%inputName%" equ "" (
  powershell -Command "(gc $env:userprofile\.android\avd\%defaultName%.avd\config.ini) -replace 'disk.dataPartition.size=*.*','disk.dataPartition.size=%inputInternalInt%M' | Out-File -encoding ASCII $env:userprofile\.android\avd\%defaultName%.avd\config.ini"
  goto avdmanagervszOutside
) else (
  powershell -Command "(gc $env:userprofile\.android\avd\%inputName%.avd\config.ini) -replace 'disk.dataPartition.size=*.*','disk.dataPartition.size=%inputInternalInt%M' | Out-File -encoding ASCII $env:userprofile\.android\avd\%inputName%.avd\config.ini"
  goto avdmanagervszOutside
)

rem echo==============================================================================================================
rem echo                                     UPDATE AVDMANAGER VMS OUTSIDE
rem echo =============================================================================================================
:avdmanagervszOutside
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

choice /m "are you sure you want to change this vm size ?"

echo off &echo.&echo off
echo off &echo.&echo off

if %errorlevel% equ 1 goto avdmanagervszInside
if %errorlevel% equ 2 goto updateSucess

rem echo==============================================================================================================
rem echo                                     UPDATE AVDMANAGER VMS INSIDE
rem echo =============================================================================================================
:avdmanagervszInside
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

set /p inputvsz=input amount of vm size ? &
set /a inputvszInt="%inputvsz%"

if "%inputvsz%" equ "0" (
  goto avdmanagerInternalOutside
) else (
  if %inputvszInt% gtr 0 (
    goto avdmanagervsz
  ) else (
    msg %username% 'vm size value must be number'
    goto avdmanagervszInside
  )
)

rem echo==============================================================================================================
rem echo                                       UPDATE AVDMANAGER VMS
rem echo =============================================================================================================
:avdmanagervsz
cls
echo off &echo.&echo off
echo off &echo.&echo off

if "%inputName%" equ "" (
  powershell -Command "(gc $env:userprofile\.android\avd\%defaultName%.avd\config.ini) -replace 'vm.heapSize=*.*','vm.heapSize=%inputvszInt%' | Out-File -encoding ASCII $env:userprofile\.android\avd\%defaultName%.avd\config.ini"
  goto updateSucess
) else (
  powershell -Command "(gc $env:userprofile\.android\avd\%inputName%.avd\config.ini) -replace 'vm.heapSize=*.*','vm.heapSize=%inputvszInt%' | Out-File -encoding ASCII $env:userprofile\.android\avd\%inputName%.avd\config.ini"
  goto updateSucess
)

:updateSucess
msg %username% 'successfully to update this emulator'
goto avdTools

rem ==============================================================================================================
rem ==============================================================================================================
rem ==============================================================================================================
rem
rem                                               SOFTWARE TOOLS
rem
rem ==============================================================================================================
:softwareTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Install Java Jdk
echo  2. Install Android Studio
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "choice action ?"

if %errorlevel% equ 1 goto javaJdk
if %errorlevel% equ 2 goto androidSdk
if %errorlevel% equ 3 goto appStart

rem echo==============================================================================================================
rem echo                                           JAVA JDK
rem echo =============================================================================================================
:javaJdk
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "are sure you want to install java jdk ?"

if %errorlevel% equ 1 goto downloadJdk
if %errorlevel% equ 2 goto softwareTools

rem echo==============================================================================================================
rem echo                                     DOWNLOAD JAVA JDK
rem echo =============================================================================================================
:downloadJdk
cls
echo off &echo.&echo off

if not exist "%systemdrive%\Program Files\Java\jdk1.8.0_261" (
  echo Downloading java jdk started...
  powershell -Command "Start-BitsTransfer -Source https://files03.tchspt.com/temp/jdk-8u261-windows-x64.exe -Destination $env:LOCALAPPDATA\jdk-8u261-windows-x64.exe -TransferType Download"
  goto installJdk
) else (
  msg %username% 'java jdk already installed'
  goto softwareTools
)

rem echo==============================================================================================================
rem echo                                     INSTALL JAVA JDK
rem echo =============================================================================================================
:installJdk
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                 WARNING !!! don't close this cli because the installed java jdk can be failed
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\jdk-8u261-windows-x64.exe" (
 call "%localappdata%\jdk-8u261-windows-x64.exe"
 goto deleteJdk
)

rem echo==============================================================================================================
rem echo                                     DELETE JAVA JDK
rem echo =============================================================================================================
:deleteJdk
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                           press enter this cli if the cli can't close automatically
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\jdk-8u261-windows-x64.exe" (
 del "%localappdata%\jdk-8u261-windows-x64.exe"
 goto pathJdk
)

rem echo==============================================================================================================
rem echo                                     PATH JAVA JDK
rem echo =============================================================================================================
:pathJdk
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%systemdrive%\Program Files\Java\jdk1.8.0_261" (
  setx JAVA_HOME "%systemdrive%\Program Files\Java\jdk1.8.0_261" /m
  msg %username% 'java jdk successfully to installed'
  goto softwareTools
) else (
  msg %username% 'java jdk failed to installed'
  goto softwareTools
)

rem echo==============================================================================================================
rem echo                                           ANDROID JDK
rem echo =============================================================================================================
:androidSdk
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off
echo off &echo.&echo off

choice /m "are sure you want to install android studio ?"

if %errorlevel% equ 1 goto downloadSdk
if %errorlevel% equ 2 goto softwareTools

rem echo==============================================================================================================
rem echo                                     DOWNLOAD ANDROID STUDIO
rem echo =============================================================================================================
:downloadSdk
cls
echo off &echo.&echo off

if not exist "%systemdrive%\Program Files\Android\Android Studio" (
  echo Downloading android studio started...
  powershell -Command "Start-BitsTransfer -Source https://files02.tchspt.com/storage2/temp/android-studio-ide-193.6821437-windows.exe -Destination $env:LOCALAPPDATA\android-studio-ide-193.6821437-windows.exe -TransferType Download"
  goto installSdk
) else (
  msg %username% 'android sdk already installed'
  goto softwareTools
)

rem echo==============================================================================================================
rem echo                                     INSTALL ANDROID STUDIO
rem echo =============================================================================================================
:installSdk
cls
echo off &echo.&echo off
echo ============================================================================================================
echo        WARNING !!! don't close this cli because the installed android studio downloading can be failed
echo ============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\android-studio-ide-193.6821437-windows.exe" (
 call "%localappdata%\android-studio-ide-193.6821437-windows.exe"
 goto deleteSdk
)

rem echo==============================================================================================================
rem echo                                     DELETE ANDROID STUDIO
rem echo =============================================================================================================
:deleteSdk
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                           press enter this cli if the cli can't close automatically
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\android-studio-ide-193.6821437-windows.exe" (
 del "%localappdata%\android-studio-ide-193.6821437-windows.exe"
 goto pathSdk
)

rem echo==============================================================================================================
rem echo                                     PATH ANDROID STUDIO
rem echo =============================================================================================================
:pathSdk
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%systemdrive%\Program Files\Android\Android Studio" (
  setx ANDROID_HOME "%localappdata%\android\sdk" /m
  msg %username% 'android studio successfully to installed'
  goto softwareTools
) else (
  msg %username% 'android studio failed to installed'
  goto softwareTools
)