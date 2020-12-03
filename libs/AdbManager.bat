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
  msg %username% 'connected using usb debugging failed'
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

set /p localUsbInt=input local usb port debugging ? &
echo %localUsbInt% | findstr /i /r [0-9][0-9][0-9][0-9].*
cls

if "%localUsbInt%" equ "0" goto usbCollections

if not %errorLevel% equ 1 (
  goto installLocalUsb
) else (
  msg %username% 'port usb debugging must be min 4 digit character'
  goto setupLocalUsb
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
  msg %username% 'connected using usb debugging failed'
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

set /p reactNativeUsbInt=input react native usb port debugging ? &
echo %reactNativeUsbInt% | findstr /i /r [0-9][0-9][0-9][0-9].*
cls

if "%reactNativeUsbInt%" equ "0" goto usbCollections

if not %errorLevel% equ 1 (
  goto installReactNativeUsb
) else (
  msg %username% 'port usb debugging must be min 4 digit character'
  goto setupReactNativeUsb
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
  msg %username% 'connected using usb debugging failed'
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

set /p anyUsbInt=input any usb port debugging ? &
echo %anyUsbInt% | findstr /i /r [0-9][0-9][0-9][0-9].*
cls

if "%anyUsbInt%" equ "0" goto usbCollections

if not %errorLevel% equ 1 (
  goto installAnyUsb
) else (
  msg %username% 'port usb debugging must be min 4 digit character'
  goto setupAnyUsb
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
  msg %username% 'connected using wireless failed'
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
echo %localWireless% | findstr /i /r [0-9].*.[.].*.[0-9]
cls

if %localWireless% equ 0 goto wirelesscollecttions

if not %errorlevel% equ 1  (
  goto installLocalWireless
) else (
  msg %username% 'adb wireless ip address is not valid'
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
  msg %username% 'connected using wireless failed'
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
echo %reactNativeWireless% | findstr /i /r [0-9].*.[.].*.[0-9]
cls

if %reactNativeWireless% equ 0 goto wirelesscollecttions

if not %errorlevel% equ 1  (
  goto installReactNativeWireless
) else (
  msg %username% 'adb wireless ip address is not valid'
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
  msg %username% 'connected using wireless failed'
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
echo %anyWireless% | findstr /i /r [0-9].*.[.].*.[0-9]
cls

if %anyWireless% equ 0 goto wirelesscollecttions

if not %errorlevel% equ 1  (
  goto installAnyWireless
) else (
  msg %username% 'adb wireless ip address is not valid'
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
call %localappdata%\bangjago-emulator\adb tcpip 5555
call %localappdata%\android\sdk\platform-tools\adb connect %anyWireless%:5555
call %localappdata%\bangjago-emulator\adb connect %anyWireless%:5555
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