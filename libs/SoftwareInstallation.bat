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

echo  1. Install Java JDK
echo  2. Install Android Studio
echo  3. Install Nodejs
echo  4. Install Flutter SDK
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:12340 /m "choice action ?"

if %errorlevel% equ 1 goto javaJdk
if %errorlevel% equ 2 goto androidSdk
if %errorlevel% equ 3 goto nodejs
if %errorlevel% equ 4 goto fluttersdk
if %errorlevel% equ 5 goto appStart

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
  powershell -Command "Start-BitsTransfer -Source https://files03.tchspt.com/temp/android-studio-ide-193.6821437-windows.exe -Destination $env:LOCALAPPDATA\android-studio-ide-193.6821437-windows.exe -TransferType Download"
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

rem echo==============================================================================================================
rem echo                                           NODEJS
rem echo =============================================================================================================
:nodejs
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

choice /m "are sure you want to install nodejs ?"

if %errorlevel% equ 1 goto downloadNode
if %errorlevel% equ 2 goto softwareTools

rem echo==============================================================================================================
rem echo                                     DOWNLOAD NODEJS
rem echo =============================================================================================================
:downloadNode
cls
echo off &echo.&echo off

if not exist "%systemdrive%\Program Files\nodejs" (
  echo Downloading nodejs started...
  powershell -Command "Start-BitsTransfer -Source https://nodejs.org/dist/v14.15.1/node-v14.15.1-x64.msi -Destination $env:LOCALAPPDATA\node-v14.15.1-x64.msi -TransferType Download"
  goto installNode
) else (
  msg %username% 'nodejs already installed'
  goto softwareTools
)

rem echo==============================================================================================================
rem echo                                     INSTALL NODEJS
rem echo =============================================================================================================
:installNode
cls
echo off &echo.&echo off
echo ============================================================================================================
echo        WARNING !!! don't close this cli because the installed nodejs downloading can be failed
echo ============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\node-v14.15.1-x64.msi" (
 call "%localappdata%\node-v14.15.1-x64.msi"
 goto deleteSdk
)

rem echo==============================================================================================================
rem echo                                     DELETE NODEJS
rem echo =============================================================================================================
:deleteNode
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                           press enter this cli if the cli can't close automatically
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\node-v14.15.1-x64.msi" (
 del "%localappdata%\node-v14.15.1-x64.msi"
 goto pathSdk
)

rem echo==============================================================================================================
rem echo                                     PATH NODEJS
rem echo =============================================================================================================
:pathNode
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%systemdrive%\Program Files\nodejs" (
  setx NODE_HOME "%systemdrive%\Program Files\nodejs\node_modules\npm\bin" /m
  msg %username% 'nodejs successfully to installed'
  goto softwareTools
) else (
  msg %username% 'nodejs failed to installed'
  goto softwareTools
)

####
####

rem echo==============================================================================================================
rem echo                                           FLUTTER SDK
rem echo =============================================================================================================
:flutterSdk
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

choice /m "are sure you want to install flutter sdk ?"

if %errorlevel% equ 1 goto downloadFlutterSdk
if %errorlevel% equ 2 goto softwareTools

rem echo==============================================================================================================
rem echo                                     DOWNLOAD FLUTTER SDK
rem echo =============================================================================================================
:downloadFlutterSdk
cls
echo off &echo.&echo off

if not exist "%systemdrive%\Program Files\nodejs" (
  echo Downloading nodejs started...
  powershell -Command "Start-BitsTransfer -Source https://storage.googleapis.com/flutter_infra/releases/stable/windows/flutter_windows_1.22.4-stable.zip -Destination $env:LOCALAPPDATA\flutter_windows_1.22.4-stable.zip -TransferType Download"
  goto installFlutterSdk
) else (
  msg %username% 'nodejs already installed'
  goto softwareTools
)

rem echo==============================================================================================================
rem echo                                     INSTALL FLUTTER SDK
rem echo =============================================================================================================
:installFlutterSdk
cls
echo off &echo.&echo off
echo ============================================================================================================
echo        WARNING !!! don't close this cli because the installed nodejs downloading can be failed
echo ============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\node-v14.15.1-x64.msi" (
 call "%localappdata%\node-v14.15.1-x64.msi"
 goto deleteSdk
)

rem echo==============================================================================================================
rem echo                                     DELETE FLUTTER SDK
rem echo =============================================================================================================
:deleteFlutterSdk
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo                           press enter this cli if the cli can't close automatically
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\node-v14.15.1-x64.msi" (
 del "%localappdata%\node-v14.15.1-x64.msi"
 goto pathSdk
)

rem echo==============================================================================================================
rem echo                                     PATH FLUTTER SDK
rem echo =============================================================================================================
:pathFlutterSdk
cls
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%systemdrive%\Program Files\nodejs" (
  setx NODE_HOME "%systemdrive%\Program Files\nodejs\node_modules\npm\bin" /m
  msg %username% 'nodejs successfully to installed'
  goto softwareTools
) else (
  msg %username% 'nodejs failed to installed'
  goto softwareTools
)