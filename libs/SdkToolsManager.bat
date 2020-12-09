rem ==============================================================================================================
rem ==============================================================================================================
rem ==============================================================================================================
rem
rem                                             SDK TOOLS MANAGER
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

echo  1. SDK Tools Part I
echo  2. SDK Tools Part II
echo  3. SDK Tools Part III
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:1230 /m "choice action ?"

if %errorlevel% equ 1 goto sdkToolsOne
if %errorlevel% equ 2 goto sdkToolsTwo
if %errorlevel% equ 3 goto sdkToolsThree
if %errorlevel% equ 4 goto screenSdkTools

rem echo===============================================================================================================
rem echo                                        SDK Tools Part One
rem echo ==============================================================================================================
:sdkToolsOne
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Android SDK Build Tools
echo  2. Native Development Kit (NDK)
echo  3. Android SDK Command Line Tools
echo  4. Cmake
echo  5. Android Auto API Simulators
echo  6. Android Auto Desktop Head Unit Emulator
echo  7. Android Emulator
echo  8. Android Emulator Hypervisor Driver for AMD Processor
echo  9. Android SDK Platform Tools
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:1234567890 /m "choice action ?"

if %errorlevel% equ 1 goto asdkTools
if %errorlevel% equ 2 goto ndkTools
if %errorlevel% equ 3 goto asdkcmlTools
if %errorlevel% equ 4 goto cmakeTools
if %errorlevel% equ 5 goto aaasTools
if %errorlevel% equ 6 goto aadhueTools
if %errorlevel% equ 7 goto aeTools
if %errorlevel% equ 8 goto aehdTools
if %errorlevel% equ 9 goto asdkptTools
if %errorlevel% equ 10 goto sdkTools

rem echo===============================================================================================================
rem echo                                       Android SDK Build Tools
rem echo ==============================================================================================================
:asdkTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Kitkat
echo  2. Lolipop
echo  3. Marshmallow
echo  4. Nouget
echo  5. Oreo
echo  6. Pie
echo  7. Q
echo  8. R
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:123456780 /m "please select android sdk build tools version  ?"

if %errorlevel% equ 1 goto asdkToolsKitkat
if %errorlevel% equ 2 goto asdkToolsLolipop
if %errorlevel% equ 3 goto asdkToolsMarsmallow
if %errorlevel% equ 4 goto asdkToolsNouget
if %errorlevel% equ 5 goto asdkToolsOreo
if %errorlevel% equ 6 goto asdkToolsPie
if %errorlevel% equ 7 goto asdkToolsQ
if %errorlevel% equ 8 goto asdkToolsR
if %errorlevel% equ 9 goto sdkToolsOne

rem echo===============================================================================================================
rem echo                                       Android SDK Build Tools Kitkat
rem echo ==============================================================================================================
:asdkToolsKitkat
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Kitkat 4.4 - build-tools 19.1.0
echo  2. Kitkat 4.4 - build-tools 20.0.0
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "please select type android sdk build tools version ?"

if %errorlevel% equ 1 goto kitkat19BT
if %errorlevel% equ 2 goto kitkat20BT
if %errorlevel% equ 3 goto asdkTools

:kitkat19BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\19.1.0" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsKitkat
) else (
  call sdkmanager --install "build-tools;19.1.0" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

:kitkat20BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\20.0.0" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsKitkat
) else (
  call sdkmanager --install "build-tools;20.0.0" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

rem echo===============================================================================================================
rem echo                                       Android SDK Build Tools Lolipop
rem echo ==============================================================================================================
:asdkToolsLolipop
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Lolipop 5.0 - build-tools 21.0.0
echo  2. Lolipop 5.1 - build-tools 22.1.2
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "please select type android sdk build tools version ?"

if %errorlevel% equ 1 goto lolipop21BT
if %errorlevel% equ 2 goto lolipop22BT
if %errorlevel% equ 3 goto asdkTools

:lolipop21BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\21.1.2" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsLolipop
) else (
  call sdkmanager --install "build-tools;21.1.2" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

:lolipop22BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\22.0.1" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsLolipop
) else (
  call sdkmanager --install "build-tools;22.0.1" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

rem echo===============================================================================================================
rem echo                                       Android SDK Build Tools Mashmallow
rem echo ==============================================================================================================
:asdkToolsMarsmallow
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Mashmallow 6.0 - build-tools 23.0.1
echo  2. Mashmallow 6.0 - build-tools 23.0.2
echo  3. Mashmallow 6.0 - build-tools 23.0.3
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:1230 /m "please select type android sdk build tools version ?"

if %errorlevel% equ 1 goto marsmallow231BT
if %errorlevel% equ 2 goto marsmallow232BT
if %errorlevel% equ 3 goto marsmallow233BT
if %errorlevel% equ 4 goto asdkTools

:marsmallow231BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\23.0.1" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsMarsmallow
) else (
  call sdkmanager --install "build-tools;23.0.1" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

:marsmallow232BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\23.0.2" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsMarsmallow
) else (
  call sdkmanager --install "build-tools;23.0.2" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

:marsmallow233BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\23.0.3" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsMarsmallow
) else (
  call sdkmanager --install "build-tools;23.0.3" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

rem echo===============================================================================================================
rem echo                                       Android SDK Build Tools Nouget
rem echo ==============================================================================================================
:asdkToolsNouget
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Nouget 7.0 - build-tools 24.0.0
echo  2. Nouget 7.0 - build-tools 24.0.1
echo  3. Nouget 7.0 - build-tools 24.0.2
echo  4. Nouget 7.0 - build-tools 24.0.3
echo  5. Nouget 7.1 - build-tools 25.0.0
echo  6. Nouget 7.1 - build-tools 25.0.1
echo  7. Nouget 7.1 - build-tools 25.0.2
echo  8. Nouget 7.1 - build-tools 25.0.3
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:123456780 /m "please select type android sdk build tools version ?"

if %errorlevel% equ 1 goto nouget240BT
if %errorlevel% equ 2 goto nouget241BT
if %errorlevel% equ 3 goto nouget242BT
if %errorlevel% equ 4 goto nouget243BT
if %errorlevel% equ 5 goto nouget250BT
if %errorlevel% equ 6 goto nouget251BT
if %errorlevel% equ 7 goto nouget252BT
if %errorlevel% equ 8 goto nouget253BT
if %errorlevel% equ 9 goto asdkTools

:nouget240BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\24.0.0" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsNouget
) else (
  call sdkmanager --install "build-tools;24.0.0" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

:nouget241BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\24.0.1" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsNouget
) else (
  call sdkmanager --install "build-tools;24.0.1" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

:nouget242BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\24.0.2" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsNouget
) else (
  call sdkmanager --install "build-tools;24.0.2" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

:nouget243BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\24.0.3" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsNouget
) else (
  call sdkmanager --install "build-tools;24.0.3" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

:nouget250BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\25.0.0" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsNouget
) else (
  call sdkmanager --install "build-tools;25.0.0" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

:nouget251BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\25.0.1" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsNouget
) else (
  call sdkmanager --install "build-tools;25.0.1" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

:nouget252BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\25.0.2" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsNouget
) else (
  call sdkmanager --install "build-tools;25.0.2" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

:nouget253BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\25.0.3" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsNouget
) else (
  call sdkmanager --install "build-tools;25.0.3" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

rem echo===============================================================================================================
rem echo                                       Android SDK Build Tools Oreo
rem echo ==============================================================================================================
:asdkToolsOreo
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Oreo 8.0 - build-tools 26.0.0
echo  2. Oreo 8.0 - build-tools 26.0.1
echo  3. Oreo 8.0 - build-tools 26.0.2
echo  4. Oreo 8.0 - build-tools 26.0.3
echo  5. Oreo 8.1 - build-tools 27.0.0
echo  6. Oreo 8.1 - build-tools 27.0.1
echo  7. Oreo 8.1 - build-tools 27.0.2
echo  8. Oreo 8.1 - build-tools 27.0.3
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:123456780 /m "please select type android sdk build tools version ?"

if %errorlevel% equ 1 goto oreo260BT
if %errorlevel% equ 2 goto oreo261BT
if %errorlevel% equ 3 goto oreo262BT
if %errorlevel% equ 4 goto oreo263BT
if %errorlevel% equ 5 goto oreo270BT
if %errorlevel% equ 6 goto oreo271BT
if %errorlevel% equ 7 goto oreo272BT
if %errorlevel% equ 8 goto oreo273BT
if %errorlevel% equ 9 goto asdkTools

:oreo260BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\26.0.0" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsOreo
) else (
  call sdkmanager --install "build-tools;26.0.0" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

:oreo261BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\26.0.1" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsOreo
) else (
  call sdkmanager --install "build-tools;26.0.1" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

:oreo262BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\26.0.2" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsOreo
) else (
  call sdkmanager --install "build-tools;26.0.2" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

:oreo263BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\26.0.3" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsOreo
) else (
  call sdkmanager --install "build-tools;26.0.3" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

:oreo270BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\27.0.0" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsLolipop
) else (
  call sdkmanager --install "build-tools;27.0.0" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

:oreo271BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\27.0.1" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsOreo
) else (
  call sdkmanager --install "build-tools;27.0.1" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

:oreo272BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\27.0.2" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsOreo
) else (
  call sdkmanager --install "build-tools;27.0.2" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

:oreo273BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\27.0.3" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsOreo
) else (
  call sdkmanager --install "build-tools;27.0.3" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

rem echo===============================================================================================================
rem echo                                       Android SDK Build Tools Pie
rem echo ==============================================================================================================
:asdkToolsPie
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Pie 9.0 - build-tools 28.0.0
echo  2. Pie 9.0 - build-tools 28.0.1
echo  3. Pie 9.0 - build-tools 28.0.2
echo  4. Pie 9.0 - build-tools 28.0.3
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:12340 /m "please select type android sdk build tools version ?"

if %errorlevel% equ 1 goto pie280BT
if %errorlevel% equ 2 goto pie281BT
if %errorlevel% equ 3 goto pie282BT
if %errorlevel% equ 4 goto pie283BT
if %errorlevel% equ 5 goto asdkTools

:pie280BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\28.0.0" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsPie
) else (
  call sdkmanager --install "build-tools;28.0.0" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

:pie281BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\28.0.1" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsPie
) else (
  call sdkmanager --install "build-tools;28.0.1" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

:pie282BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\28.0.2" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsPie
) else (
  call sdkmanager --install "build-tools;28.0.2" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

:pie283BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\28.0.3" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsPie
) else (
  call sdkmanager --install "build-tools;28.0.3" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

rem echo===============================================================================================================
rem echo                                       Android SDK Build Tools Q
rem echo ==============================================================================================================
:asdkToolsQ
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Q 10.0 - build-tools 29.0.0
echo  2. Q 10.0 - build-tools 29.0.1
echo  3. Q 10.0 - build-tools 29.0.2
echo  4. Q 10.0 - build-tools 29.0.3
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:12340 /m "please select type android sdk build tools version ?"

if %errorlevel% equ 1 goto q290BT
if %errorlevel% equ 2 goto q291BT
if %errorlevel% equ 3 goto q292BT
if %errorlevel% equ 4 goto q293BT
if %errorlevel% equ 5 goto asdkTools

:q290BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\29.0.0" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsQ
) else (
  call sdkmanager --install "build-tools;29.0.0" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

:q291BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\29.0.1" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsQ
) else (
  call sdkmanager --install "build-tools;29.0.1" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

:q292BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\29.0.2" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsQ
) else (
  call sdkmanager --install "build-tools;29.0.2" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

:q293BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\29.0.3" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsQ
) else (
  call sdkmanager --install "build-tools;29.0.3" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

rem echo===============================================================================================================
rem echo                                       Android SDK Build Tools R
rem echo ==============================================================================================================
:asdkToolsR
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. R 11.0 - build-tools 30.0.0
echo  2. R 11.0 - build-tools 30.0.1
echo  3. R 11.0 - build-tools 30.0.2
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:1230 /m "please select type android sdk build tools version ?"

if %errorlevel% equ 1 goto r300BT
if %errorlevel% equ 2 goto r301BT
if %errorlevel% equ 3 goto r302BT
if %errorlevel% equ 4 goto asdkTools

:r300BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\30.0.0" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsR
) else (
  call sdkmanager --install "build-tools;30.0.0" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

:r301BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\30.0.1" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsR
) else (
  call sdkmanager --install "build-tools;30.0.1" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

:r302BT
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if exist "%localappdata%\Android\Sdk\build-tools\30.0.2" (
  msg %username% 'android sdk build tools already exist'
  goto asdkToolsR
) else (
  call sdkmanager --install "build-tools;30.0.2" --channel=0
  msg %username% 'android sdk build tools successfully to download'
  goto sdkTools
)

rem echo===============================================================================================================
rem echo                                       Android NDK Build Tools
rem echo ==============================================================================================================
:ndkTools
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
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:1230 /m "please select android sdk build tools version  ?"

if %errorlevel% equ 1 goto ndkToolsJellyBean
if %errorlevel% equ 2 goto ndkToolsKitkat
if %errorlevel% equ 3 goto ndkToolsLolipop
if %errorlevel% equ 4 goto sdkToolsOne

rem echo===============================================================================================================
rem echo                                       Android NDK Build Tools Jelly Bean
rem echo ==============================================================================================================
:ndkToolsJellyBean
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Jelly Bean 4.1 - ndk 16.1.4479499
echo  2. Jelly Bean 4.2 - ndk 17.2.4988734
echo  3. Jelly Bean 4.3 - ndk 18.1.5063045
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:1230 /m "please select type android sdk build tools version ?"

if %errorlevel% equ 1 goto jellbean161ndk
if %errorlevel% equ 2 goto jellbean172ndk
if %errorlevel% equ 3 goto jellbean181ndk
if %errorlevel% equ 4 goto ndkTools

:jellbean161ndk
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android ndk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\ndk" (
   call sdkmanager --install "ndk;16.1.4479499" --channel=0
   msg %username% 'android ndk build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\ndk\16.1.4479499" (
    msg %username% 'android ndk build tools already exist'
    goto ndkToolsJellyBean
  ) else (
    call sdkmanager --install "ndk;16.1.4479499" --channel=0
    msg %username% 'android ndk build tools successfully to download'
    goto sdkTools
  )
)

:jellbean172ndk
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android ndk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\ndk" (
   call sdkmanager --install "ndk;17.2.4988734" --channel=0
   msg %username% 'android ndk build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\ndk\17.2.4988734" (
    msg %username% 'android ndk build tools already exist'
    goto ndkToolsJellyBean
  ) else (
    call sdkmanager --install "ndk;17.2.4988734" --channel=0
    msg %username% 'android ndk build tools successfully to download'
    goto sdkTools
  )
)

:jellbean181ndk
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android ndk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\ndk" (
   call sdkmanager --install "ndk;18.1.5063045" --channel=0
   msg %username% 'android ndk build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\ndk\18.1.5063045" (
    msg %username% 'android ndk build tools already exist'
    goto ndkToolsJellyBean
  ) else (
    call sdkmanager --install "ndk;18.1.5063045" --channel=0
    msg %username% 'android ndk build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                                       Android NDK Build Tools Kitkat
rem echo ==============================================================================================================
:ndkToolsKitkat
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Kitkat 4.4 - ndk 19.2.5345600
echo  2. Kitkat 4.4 - ndk 20.0.5594570
echo  3. Kitkat 4.4 - ndk 20.1.5948944
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:1230 /m "please select type android sdk build tools version ?"

if %errorlevel% equ 1 goto kitkat192ndk
if %errorlevel% equ 2 goto kitkat200ndk
if %errorlevel% equ 3 goto kitkat201ndk
if %errorlevel% equ 4 goto ndkTools

:kitkat192ndk
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android ndk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\ndk" (
   call sdkmanager --install "ndk;19.2.5345600" --channel=0
   msg %username% 'android ndk build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\ndk\19.2.5345600" (
    msg %username% 'android ndk build tools already exist'
    goto ndkToolsKitkat
  ) else (
    call sdkmanager --install "ndk;19.2.5345600" --channel=0
    msg %username% 'android ndk build tools successfully to download'
    goto sdkTools
  )
)

:kitkat200ndk
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android ndk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\ndk" (
   call sdkmanager --install "ndk;20.0.5594570" --channel=0
   msg %username% 'android ndk build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\ndk\20.0.5594570" (
    msg %username% 'android ndk build tools already exist'
    goto ndkToolsKitkat
  ) else (
    call sdkmanager --install "ndk;20.0.5594570" --channel=0
    msg %username% 'android ndk build tools successfully to download'
    goto sdkTools
  )
)

:kitkat201ndk
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android ndk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\ndk" (
   call sdkmanager --install "ndk;20.1.5948944" --channel=0
   msg %username% 'android ndk build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\ndk\20.1.5948944" (
    msg %username% 'android ndk build tools already exist'
    goto ndkToolsKitkat
  ) else (
    call sdkmanager --install "ndk;20.1.5948944" --channel=0
    msg %username% 'android ndk build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                                       Android NDK Build Tools Kitkat
rem echo ==============================================================================================================
:ndkToolsLolipop
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Lolipop 5.0 - ndk 21.0.6113669
echo  2. Lolipop 5.0 - ndk 21.1.6352462
echo  3. Lolipop 5.0 - ndk 21.2.6472646
echo  4. Lolipop 5.0 - ndk 21.3.6528147
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:12340 /m "please select type android sdk build tools version ?"

if %errorlevel% equ 1 goto lolipop210ndk
if %errorlevel% equ 2 goto lolipop211ndk
if %errorlevel% equ 3 goto lolipop212ndk
if %errorlevel% equ 4 goto lolipop213ndk
if %errorlevel% equ 5 goto ndkTools

:lolipop210ndk
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android ndk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\ndk" (
   call sdkmanager --install "ndk;21.0.6113669" --channel=0
   msg %username% 'android ndk build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\ndk\21.0.6113669" (
    msg %username% 'android ndk build tools already exist'
    goto ndkToolsLolipop
  ) else (
    call sdkmanager --install "ndk;21.0.6113669" --channel=0
    msg %username% 'android ndk build tools successfully to download'
    goto sdkTools
  )
)

:lolipop211ndk
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android ndk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\ndk" (
   call sdkmanager --install "ndk;21.1.6352462" --channel=0
   msg %username% 'android ndk build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\ndk\21.1.6352462" (
    msg %username% 'android ndk build tools already exist'
    goto ndkToolsLolipop
  ) else (
    call sdkmanager --install "ndk;21.1.6352462" --channel=0
    msg %username% 'android ndk build tools successfully to download'
    goto sdkTools
  )
)

:lolipop212ndk
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android ndk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\ndk" (
   call sdkmanager --install "ndk;21.2.6472646" --channel=0
   msg %username% 'android ndk build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\ndk\21.2.6472646" (
    msg %username% 'android ndk build tools already exist'
    goto ndkToolsLolipop
  ) else (
    call sdkmanager --install "ndk;21.2.6472646" --channel=0
    msg %username% 'android ndk build tools successfully to download'
    goto sdkTools
  )
)

:lolipop213ndk
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android ndk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\ndk" (
   call sdkmanager --install "ndk;21.3.6528147" --channel=0
   msg %username% 'android ndk build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\ndk\21.3.6528147" (
    msg %username% 'android ndk build tools already exist'
    goto ndkToolsLolipop
  ) else (
    call sdkmanager --install "ndk;21.3.6528147" --channel=0
    msg %username% 'android ndk build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                              Android SDK Build Tools Command Line Tools
rem echo ==============================================================================================================
:asdkcmlTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Android SDK Command Line Tools - 1.0
echo  2. Android SDK Command Line Tools - 2.1
echo  3. Android SDK Command Line Tools - 3.0
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:1230 /m "please select android sdk build tools version  ?"

if %errorlevel% equ 1 goto asdkcml10Tools
if %errorlevel% equ 2 goto asdkcml21Tools
if %errorlevel% equ 3 goto asdkcml30Tools
if %errorlevel% equ 4 goto sdkToolsOne

:asdkcml10Tools
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\cmdline-tools" (
   call sdkmanager --install "cmdline-tools;1.0" --channel=0
   msg %username% 'android cmdline-tools build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\cmdline-tools\1.0" (
    msg %username% 'android cmdline-tools build tools already exist'
    goto asdkcmlTools
  ) else (
    call sdkmanager --install "cmdline-tools;1.0" --channel=0
    msg %username% 'android cmdline-tools build tools successfully to download'
    goto sdkTools
  )
)

:asdkcml21Tools
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\cmdline-tools" (
   call sdkmanager --install "cmdline-tools;2.1" --channel=0
   msg %username% 'android cmdline-tools build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\cmdline-tools\2.1" (
    msg %username% 'android cmdline-tools build tools already exist'
    goto asdkcmlTools
  ) else (
    call sdkmanager --install "cmdline-tools;2.1" --channel=0
    msg %username% 'android cmdline-tools build tools successfully to download'
    goto sdkTools
  )
)

:asdkcml30Tools
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\cmdline-tools" (
   call sdkmanager --install "cmdline-tools;3.0" --channel=0
   msg %username% 'android cmdline-tools build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\cmdline-tools\3.0" (
    msg %username% 'android cmdline-tools build tools already exist'
    goto asdkcmlTools
  ) else (
    call sdkmanager --install "cmdline-tools;3.0" --channel=0
    msg %username% 'android cmdline-tools build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                              Android SDK Build Tools Cmake
rem echo ==============================================================================================================
:cmakeTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Cmake - 3.6.4111459
echo  2. Cmake - 3.10.2.4988404
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "please select android sdk build tools version  ?"

if %errorlevel% equ 1 goto cmake36Tools
if %errorlevel% equ 2 goto cmake310Tools
if %errorlevel% equ 3 goto sdkToolsOne

:cmake36Tools
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\cmake" (
   call sdkmanager --install "cmake;3.6.4111459" --channel=0
   msg %username% 'android cmake build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\cmake\3.6.4111459" (
    msg %username% 'android cmake build tools already exist'
    goto cmakeTools
  ) else (
    call sdkmanager --install "cmake;3.6.4111459" --channel=0
    msg %username% 'android cmake build tools successfully to download'
    goto sdkTools
  )
)

:cmake310Tools
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\cmake" (
   call sdkmanager --install "cmake;3.10.2.4988404" --channel=0
   msg %username% 'android cmake build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\cmake\3.10.2.4988404" (
    msg %username% 'android cmake build tools already exist'
    goto cmakeTools
  ) else (
    call sdkmanager --install "cmake;3.10.2.4988404" --channel=0
    msg %username% 'android cmake build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                            Android SDK Build Tools - Android API Auto Simulator
rem echo ==============================================================================================================
:aaasTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Android Auto API Simulators
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "please select android sdk build tools version  ?"

if %errorlevel% equ 1 goto gSimulatorsTools
if %errorlevel% equ 2 goto sdkToolsOne

:gSimulatorsTools
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\extras" (
   call sdkmanager --install "extras;google;simulators" --channel=0
   msg %username% 'android auto api simulators build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\extras\simulators" (
    msg %username% 'android auto api simulators build tools already exist'
    goto aaasTools
  ) else (
    call sdkmanager --install "extras;google;simulators" --channel=0
    msg %username% 'android auto api simulators build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                            Android SDK Build Tools - Android API Auto Simulator
rem echo ==============================================================================================================
:aadhueTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Android Auto Desktop Head Unit Emulator
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "please select android sdk build tools version  ?"

if %errorlevel% equ 1 goto gSimulatorsTools
if %errorlevel% equ 2 goto sdkToolsOne

:gSimulatorsTools
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\extras" (
   call sdkmanager --install "extras;google;auto" --channel=0
   msg %username% 'android auto desktop head unit emulator build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\extras\auto" (
    msg %username% 'android auto desktop head unit emulator build tools already exist'
    goto aadhueTools
  ) else (
    call sdkmanager --install "extras;google;auto" --channel=0
    msg %username% 'android auto desktop head unit emulator build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                            Android SDK Build Tools - Android Emulator
rem echo ==============================================================================================================
:aeTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Emulator
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "please select android sdk build tools version  ?"

if %errorlevel% equ 1 goto asdkEmulator
if %errorlevel% equ 2 goto sdkToolsOne

:asdkEmulator
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\emulator" (
   call sdkmanager --install "emulator" --channel=0
   msg %username% 'android emulator build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\emulator\emulator" (
    msg %username% 'android emulator build tools already exist'
    goto aeTools
  ) else (
    call sdkmanager --install "emulator" --channel=0
    msg %username% 'android emulator build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                       Android SDK Build Tools -  Android Emulator Hypervisor Driver for AMD
rem echo ==============================================================================================================
:aehdTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Android Emulator Hypervisor Driver AMD
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "please select android sdk build tools version  ?"

if %errorlevel% equ 1 goto aehdDriverTools
if %errorlevel% equ 2 goto sdkToolsOne

:aehdDriverTools
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\extras" (
   call sdkmanager --install "extras;google;Android_Emulator_Hypervisor_Driver" --channel=0
   msg %username% 'android emulator hypervisor driver build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\extras\google\Android_Emulator_Hypervisor_Driver" (
    msg %username% 'android emulator hypervisor driver  build tools already exist'
    goto aehdTools
  ) else (
    call sdkmanager --install "extras;google;Android_Emulator_Hypervisor_Driver" --channel=0
    msg %username% 'android emulator hypervisor driver build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                       Android SDK Build Tools -  Android SDK Platform-Tools
rem echo ==============================================================================================================
:asdkptTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Android SDK Platform Tools
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "please select android sdk build tools version  ?"

if %errorlevel% equ 1 goto asdkPlatformTools
if %errorlevel% equ 2 goto sdkToolsOne

:asdkPlatformTools
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\platform-tools" (
   call sdkmanager --install "platform-tools" --channel=0
   msg %username% 'android emulator hypervisor driver build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\platform-tools\adb" (
    msg %username% 'android emulator hypervisor driver  build tools already exist'
    goto asdkptTools
  ) else (
    call sdkmanager --install "platform-tools" --channel=0
    msg %username% 'android emulator hypervisor driver build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                                        SDK Tools Part Two
rem echo ==============================================================================================================
:sdkToolsTwo
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Google Play APK Exspansion Library
echo  2. Google Play Instant Development SDK
echo  3. Google Play Licensing Library
echo  4. Google Play Services
echo  5. Google USB Driver
echo  6. Google Web Driver
echo  7. Intel x86 Emulator Accelerator (HAXM)
echo  8. Layout Inspector Image Server for API 29-30
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:123456780 /m "choice action ?"

if %errorlevel% equ 1 goto gpaelTools
if %errorlevel% equ 2 goto gpidsTools
if %errorlevel% equ 3 goto gpllTools
if %errorlevel% equ 4 goto gpsTools
if %errorlevel% equ 5 goto gudTools
if %errorlevel% equ 6 goto gwdTools
if %errorlevel% equ 7 goto intelx86Tools
if %errorlevel% equ 8 goto liisTools
if %errorlevel% equ 9 goto sdkTools

rem echo===============================================================================================================
rem echo                       Android SDK Build Tools -  Google Play APK Exspansion Library
rem echo ==============================================================================================================
:gpaelTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Google Play APK Exspansion Library
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "please select android sdk build tools version  ?"

if %errorlevel% equ 1 goto gpael10Tools
if %errorlevel% equ 2 goto sdkToolsTwo

:gpael10Tools
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\extras" (
   call sdkmanager --install "extras;google;market_apk_expansion" --channel=0
   msg %username% 'android google play apk exspansion library build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\extras\google\market_apk_expansion" (
    msg %username% 'android google play apk exspansion library  build tools already exist'
    goto gpaelTools
  ) else (
    call sdkmanager --install "extras;google;market_apk_expansion" --channel=0
    msg %username% 'android google play apk exspansion library build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                       Android SDK Build Tools -  Google Play Instant Development SDK
rem echo ==============================================================================================================
:gpidsTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Google Play Instant Development SDK
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "please select android sdk build tools version  ?"

if %errorlevel% equ 1 goto gpids190Tools
if %errorlevel% equ 2 goto sdkToolsTwo

:gpids190Tools
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\extras" (
   call sdkmanager --install "extras;google;instantapps" --channel=0
   msg %username% 'android google play apk exspansion library build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\extras\google\instantapps" (
    msg %username% 'android google play apk exspansion library  build tools already exist'
    goto gpidsTools
  ) else (
    call sdkmanager --install "extras;google;instantapps" --channel=0
    msg %username% 'android google play apk exspansion library build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                       Android SDK Build Tools -   Google Play Licensing Library
rem echo ==============================================================================================================
:gpllTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Google Play Licensing Library
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "please select android sdk build tools version  ?"

if %errorlevel% equ 1 goto gpll10Tools
if %errorlevel% equ 2 goto sdkToolsTwo

:gpll10Tools
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\extras" (
   call sdkmanager --install "extras;google;market_licensing" --channel=0
   msg %username% 'android google play licensing library build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\extras\google\market_licensing" (
    msg %username% 'android google play licensing library  build tools already exist'
    goto gpllTools
  ) else (
    call sdkmanager --install "extras;google;market_licensing" --channel=0
    msg %username% 'android google play licensing library build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                       Android SDK Build Tools -   Google Play Services
rem echo ==============================================================================================================
:gpsTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Google Play Services
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "please select android sdk build tools version  ?"

if %errorlevel% equ 1 goto gps49Tools
if %errorlevel% equ 2 goto sdkToolsTwo

:gps49Tools
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\extras" (
   call sdkmanager --install "extras;google;google_play_services" --channel=0
   msg %username% 'android google play services build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\extras\google\google_play_services" (
    msg %username% 'android google play services  build tools already exist'
    goto gpsTools
  ) else (
    call sdkmanager --install "extras;google;google_play_services" --channel=0
    msg %username% 'android google play services build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                       Android SDK Build Tools - Google USB Driver
rem echo ==============================================================================================================
:gudTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Google USB Driver
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "please select android sdk build tools version  ?"

if %errorlevel% equ 1 goto gud13Tools
if %errorlevel% equ 2 goto sdkToolsTwo

:gud13Tools
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\extras" (
   call sdkmanager --install "extras;google;usb_driver" --channel=0
   msg %username% 'android google usb driver build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\extras\google\usb_driver" (
    msg %username% 'android google usb driver  build tools already exist'
    goto gudTools
  ) else (
    call sdkmanager --install "extras;google;usb_driver" --channel=0
    msg %username% 'android google usb driver build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                       Android SDK Build Tools - Google WEB Driver
rem echo ==============================================================================================================
:gwdTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Google Web Driver
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "please select android sdk build tools version  ?"

if %errorlevel% equ 1 goto gwd20Tools
if %errorlevel% equ 2 goto sdkToolsTwo

:gwd20Tools
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\extras" (
   call sdkmanager --install "extras;google;webdriver" --channel=0
   msg %username% 'android google web driver build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\extras\google\webdriver" (
    msg %username% 'android google web driver  build tools already exist'
    goto gwdTools
  ) else (
    call sdkmanager --install "extras;google;webdriver" --channel=0
    msg %username% 'android google web driver build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                       Android SDK Build Tools - Intel x86 Emulator Accelerator (HAXM)
rem echo ==============================================================================================================
:intelx86Tools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Intel x86 Emulator Accelerator (HAXM)
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "please select android sdk build tools version  ?"

if %errorlevel% equ 1 goto intelx86Tools756
if %errorlevel% equ 2 goto sdkToolsTwo

:intelx86Tools756
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\extras" (
   call sdkmanager --install "extras;intel;Hardware_Accelerated_Execution_Manager" --channel=0
   msg %username% 'android intel haxm successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\extras\intel\Hardware_Accelerated_Execution_Manager" (
    msg %username% 'android intel haxm build tools already exist'
    goto intelx86Tools
  ) else (
    call sdkmanager --install "extras;intel;Hardware_Accelerated_Execution_Manager" --channel=0
    msg %username% 'android intel haxm successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                     Android SDK Build Tools - Layout Inspector Image Server for API 29-30
rem echo ==============================================================================================================
:liisTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Layout Inspector Image Server for API 29-30
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "please select android sdk build tools version  ?"

if %errorlevel% equ 1 goto liis50Tools
if %errorlevel% equ 2 goto sdkToolsTwo

:liis50Tools
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\skiaparser" (
   call sdkmanager --install "skiaparser;1" --channel=0
   msg %username% 'android skiaparser build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\skiaparser\1" (
    msg %username% 'android google usb driver  build tools already exist'
    goto liisTools
  ) else (
    call sdkmanager --install "skiaparser;1" --channel=0
    msg %username% 'android skiaparser build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                                        SDK Tools Part Three
rem echo ==============================================================================================================
:sdkToolsThree
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Android SDK Addons
echo  2. Android SDK Patcher
echo  3. Android SDK Sources
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:1230 /m "choice action ?"

if %errorlevel% equ 1 goto asdkaTools
if %errorlevel% equ 2 goto asdkpTools
if %errorlevel% equ 3 goto asdksTools
if %errorlevel% equ 4 goto sdkTools

rem echo===============================================================================================================
rem echo                       Android SDK Build Tools - Android SDK Addons
rem echo ==============================================================================================================
:asdkaTools
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
echo  4. Mashmallow
echo  5. Nouget
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:123450 /m "please select android sdk build tools version  ?"

if %errorlevel% equ 1 goto asdkaJellBeanAddonsTools
if %errorlevel% equ 2 goto asdkaKitkatAddonsTools
if %errorlevel% equ 3 goto asdkLolipopAddonsTools
if %errorlevel% equ 4 goto asdkMarsmallowAddonsTools
if %errorlevel% equ 5 goto asdkNougetAddonsTools
if %errorlevel% equ 6 goto sdkToolsThree

rem echo===============================================================================================================
rem echo                       Android SDK Build Tools - Android SDK Addons JellyBean
rem echo ==============================================================================================================
:asdkaJellBeanAddonsTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Jelly Bean - 4.1 - Addon Google Apis Google 16
echo  2. Jelly Bean - 4.2 - Addon Google Apis Google 17
echo  3. Jelly Bean - 4.3 - Addon Google Apis Google 18
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:1230 /m "please select type android sdk build tools version  ?"

if %errorlevel% equ 1 goto asdkjb41Tools
if %errorlevel% equ 2 goto asdkjb42Tools
if %errorlevel% equ 3 goto asdkjb43Tools
if %errorlevel% equ 4 goto asdkaTools

:asdkjb41Tools
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\add-ons" (
   call sdkmanager --install "add-ons;addon-google_apis-google-16" --channel=0
   msg %username% 'android addon google apis google build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\add-ons\addon-google_apis-google-16" (
    msg %username% 'android addon google apis google build tools already exist'
    goto asdkaJellBeanAddonsTools
  ) else (
    call sdkmanager --install "add-ons;addon-google_apis-google-16" --channel=0
    msg %username% 'android addon google apis google build tools successfully to download'
    goto sdkTools
  )
)

:asdkjb42Tools
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\add-ons" (
   call sdkmanager --install "add-ons;addon-google_apis-google-17" --channel=0
   msg %username% 'android addon google apis google build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\add-ons\addon-google_apis-google-17" (
    msg %username% 'android addon google apis google build tools already exist'
    goto asdkaJellBeanAddonsTools
  ) else (
    call sdkmanager --install "add-ons;addon-google_apis-google-17" --channel=0
    msg %username% 'android addon google apis google build tools successfully to download'
    goto sdkTools
  )
)

:asdkjb43Tools
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\add-ons" (
   call sdkmanager --install "add-ons;addon-google_apis-google-18" --channel=0
   msg %username% 'android addon google apis google build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\add-ons\addon-google_apis-google-18" (
    msg %username% 'android addon google apis google build tools already exist'
    goto asdkaJellBeanAddonsTools
  ) else (
    call sdkmanager --install "add-ons;addon-google_apis-google-18" --channel=0
    msg %username% 'android addon google apis google build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                       Android SDK Build Tools - Android SDK Addons Kitkat
rem echo ==============================================================================================================
:asdkaKitkatAddonsTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Kitkat - 4.4 - Addon Google Apis Google 19
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "please select type android sdk build tools version  ?"

if %errorlevel% equ 1 goto asdkkitkat44Tools
if %errorlevel% equ 2 goto asdkaTools

:asdkkitkat44Tools
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\add-ons" (
   call sdkmanager --install "add-ons;addon-google_apis-google-19" --channel=0
   msg %username% 'android addon google apis google build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\add-ons\addon-google_apis-google-19" (
    msg %username% 'android addon google apis google build tools already exist'
    goto asdkaKitkatAddonsTools
  ) else (
    call sdkmanager --install "add-ons;addon-google_apis-google-19" --channel=0
    msg %username% 'android addon google apis google build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                       Android SDK Build Tools - Android SDK Addons Lolipop
rem echo ==============================================================================================================
:asdkLolipopAddonsTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Lolipop - 5.0 - Addon Google Apis Google 21
echo  2. Lolipop - 5.1 - Addon Google Apis Google 22
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "please select type android sdk build tools version  ?"

if %errorlevel% equ 1 goto asdklolipop50Tools
if %errorlevel% equ 2 goto asdklolipop51Tools
if %errorlevel% equ 3 goto asdkaTools

:asdklolipop50Tools
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\add-ons" (
   call sdkmanager --install "add-ons;addon-google_apis-google-21" --channel=0
   msg %username% 'android addon google apis google build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\add-ons\addon-google_apis-google-21" (
    msg %username% 'android addon google apis google build tools already exist'
    goto asdkLolipopAddonsTools
  ) else (
    call sdkmanager --install "add-ons;addon-google_apis-google-21" --channel=0
    msg %username% 'android addon google apis google build tools successfully to download'
    goto sdkTools
  )
)

:asdklolipop51Tools
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\add-ons" (
   call sdkmanager --install "add-ons;addon-google_apis-google-22" --channel=0
   msg %username% 'android addon google apis google build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\add-ons\addon-google_apis-google-22" (
    msg %username% 'android addon google apis google build tools already exist'
    goto asdkLolipopAddonsTools
  ) else (
    call sdkmanager --install "add-ons;addon-google_apis-google-22" --channel=0
    msg %username% 'android addon google apis google build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                       Android SDK Build Tools - Android SDK Addons Mashmallow
rem echo ==============================================================================================================
:asdkMarsmallowAddonsTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Mashmallow - 6.0 - Addon Google Apis Google 23
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "please select type android sdk build tools version  ?"

if %errorlevel% equ 1 goto asdkmarsmallow60Tools
if %errorlevel% equ 2 goto asdkaTools

:asdkmarsmallow60Tools
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\add-ons" (
   call sdkmanager --install "add-ons;addon-google_apis-google-23" --channel=0
   msg %username% 'android addon google apis google build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\add-ons\addon-google_apis-google-23" (
    msg %username% 'android addon google apis google build tools already exist'
    goto asdkMarsmallowAddonsTools
  ) else (
    call sdkmanager --install "add-ons;addon-google_apis-google-23" --channel=0
    msg %username% 'android addon google apis google build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                       Android SDK Build Tools - Android SDK Addons Nouget
rem echo ==============================================================================================================
:asdkNougetAddonsTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Nouget - 7.0 - Addon Google Apis Google 24
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "please select type android sdk build tools version  ?"

if %errorlevel% equ 1 goto asdknouget70Tools
if %errorlevel% equ 2 goto asdkaTools

:asdknouget70Tools
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\add-ons" (
   call sdkmanager --install "add-ons;addon-google_apis-google-24" --channel=0
   msg %username% 'android addon google apis google build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\add-ons\addon-google_apis-google-24" (
    msg %username% 'android addon google apis google build tools build tools already exist'
    goto asdkNougetAddonsTools
  ) else (
    call sdkmanager --install "add-ons;addon-google_apis-google-24" --channel=0
    msg %username% 'android addon google apis google build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                                  Android SDK Build Tools - Patcher
rem echo ==============================================================================================================
:asdkpTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Patcher - 4.0
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "please select type android sdk build tools version ?"

if %errorlevel% equ 1 goto asdkp40Tools
if %errorlevel% equ 2 goto sdkToolsThree

:asdkp40Tools
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\patcher" (
   call sdkmanager --install "patcher;v4" --channel=0
   msg %username% 'android patcher build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\patcher\v4" (
    msg %username% 'android patcher build tools already exist'
    goto asdkpTools
  ) else (
    call sdkmanager --install "patcher;v4" --channel=0
    msg %username% 'android patcher build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                       Android SDK Build Tools - Android SDK Sources
rem echo ==============================================================================================================
:asdksTools
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
echo  4. Mashmallow
echo  5. Nouget
echo  6. Oreo
echo  7. Pie
echo  8. Q
echo  9. R
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:1234567890 /m "please select android sdk build tools version  ?"

if %errorlevel% equ 1 goto asdksToolsJellyBeanTools
if %errorlevel% equ 2 goto asdksToolsKitkatTools
if %errorlevel% equ 3 goto asdksToolsLolipopTools
if %errorlevel% equ 4 goto asdksToolsMarsmallowTools
if %errorlevel% equ 5 goto asdksToolsNougetTools
if %errorlevel% equ 6 goto asdksToolsOreoTools
if %errorlevel% equ 7 goto asdksToolsPieTools
if %errorlevel% equ 8 goto asdksToolsQTools
if %errorlevel% equ 9 goto asdksToolsRTools
if %errorlevel% equ 10 goto sdkToolsThree

rem echo===============================================================================================================
rem echo                       Android SDK Build Tools - Android SDK Sources JellyBean
rem echo ==============================================================================================================
:asdksToolsJellyBeanTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Jelly Bean - 4.1 - Sources 16
echo  2. Jelly Bean - 4.2 - Sources 17
echo  3. Jelly Bean - 4.3 - Sources 18
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:1230 /m "please select type android sdk build tools version ?"

if %errorlevel% equ 1 goto asdksToolsJellyBean411
if %errorlevel% equ 2 goto asdksToolsJellyBean422
if %errorlevel% equ 3 goto asdksToolsJellyBean433
if %errorlevel% equ 4 goto asdksTools

:asdksToolsJellyBean411
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\sources" (
   call sdkmanager --install "sources;android-16" --channel=0
   msg %username% 'android sources build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\sources\android-16" (
    msg %username% 'android sources build tools already exist'
    goto asdksToolsJellyBeanTools
  ) else (
    call sdkmanager --install "sources;android-16" --channel=0
    msg %username% 'android sources build tools successfully to download'
    goto sdkTools
  )
)

:asdksToolsJellyBean422
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\sources" (
   call sdkmanager --install "sources;android-17" --channel=0
   msg %username% 'android sources build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\sources\android-17" (
    msg %username% 'android sources build tools already exist'
    goto asdksToolsJellyBeanTools
  ) else (
    call sdkmanager --install "sources;android-17" --channel=0
    msg %username% 'android sources build tools successfully to download'
    goto sdkTools
  )
)

:asdksToolsJellyBean433
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\sources" (
   call sdkmanager --install "sources;android-18" --channel=0
   msg %username% 'android sources build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\sources\android-18" (
    msg %username% 'android sources build tools already exist'
    goto asdksToolsJellyBeanTools
  ) else (
    call sdkmanager --install "sources;android-18" --channel=0
    msg %username% 'android sources build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                       Android SDK Build Tools - Android SDK Sources Kitkat
rem echo ==============================================================================================================
:asdksToolsKitkatTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Kitkat - 4.4 - Sources 19
echo  2. Kitkat - 4.4 - Sources 20
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "please select type android sdk build tools version ?"

if %errorlevel% equ 1 goto asdksToolsKitkatTools444
if %errorlevel% equ 2 goto asdksToolsKitkatTools445
if %errorlevel% equ 3 goto asdksTools

:asdksToolsKitkatTools444
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\sources" (
   call sdkmanager --install "sources;android-19" --channel=0
   msg %username% 'android sources build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\sources\android-19" (
    msg %username% 'android sources build tools already exist'
    goto asdksToolsKitkatTools
  ) else (
    call sdkmanager --install "sources;android-19" --channel=0
    msg %username% 'android sources build tools successfully to download'
    goto sdkTools
  )
)

:asdksToolsKitkatTools445
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\sources" (
   call sdkmanager --install "sources;android-20" --channel=0
   msg %username% 'android sources build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\sources\android-20" (
    msg %username% 'android sources build tools already exist'
    goto asdksToolsKitkatTools
  ) else (
    call sdkmanager --install "sources;android-20" --channel=0
    msg %username% 'android sources build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                       Android SDK Build Tools - Android SDK Sources Lolipop
rem echo ==============================================================================================================
:asdksToolsLolipopTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Lolipop - 5.0 - Sources 21
echo  2. Lolipop - 5.1 - Sources 22
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "please select type android sdk build tools version ?"

if %errorlevel% equ 1 goto asdksToolsLolipopTools511
if %errorlevel% equ 2 goto asdksToolsLolipopTools522
if %errorlevel% equ 3 goto asdksTools

:asdksToolsLolipopTools511
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\sources" (
   call sdkmanager --install "sources;android-21" --channel=0
   msg %username% 'android sources build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\sources\android-21" (
    msg %username% 'android sources build tools already exist'
    goto asdksToolsLolipopTools
  ) else (
    call sdkmanager --install "sources;android-21" --channel=0
    msg %username% 'android sources build tools successfully to download'
    goto sdkTools
  )
)

:asdksToolsLolipopTools522
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\sources" (
   call sdkmanager --install "sources;android-22" --channel=0
   msg %username% 'android sources build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\sources\android-22" (
    msg %username% 'android sources build tools already exist'
    goto asdksToolsLolipopTools
  ) else (
    call sdkmanager --install "sources;android-22" --channel=0
    msg %username% 'android sources build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                       Android SDK Build Tools - Android SDK Sources Marsmallow
rem echo ==============================================================================================================
:asdksToolsMarsmallowTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Marsmallow - 6.0 - Sources 23
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "please select type android sdk build tools version ?"

if %errorlevel% equ 1 goto asdksToolsMarsmallows611
if %errorlevel% equ 2 goto asdksTools

:asdksToolsMarsmallows611
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\sources" (
   call sdkmanager --install "sources;android-23" --channel=0
   msg %username% 'android sources build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\sources\android-23" (
    msg %username% 'android sources build tools already exist'
    goto asdksToolsMarsmallowTools
  ) else (
    call sdkmanager --install "sources;android-23" --channel=0
    msg %username% 'android sources build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                       Android SDK Build Tools - Android SDK Sources Nouget
rem echo ==============================================================================================================
:asdksToolsNougetTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Nouget - 7.0 - Sources 24
echo  2. Nouget - 7.1 - Sources 25
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "please select type android sdk build tools version ?"

if %errorlevel% equ 1 goto asdksToolsNouget511
if %errorlevel% equ 2 goto asdksToolsNouget522
if %errorlevel% equ 3 goto asdksTools

:asdksToolsNouget511
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\sources" (
   call sdkmanager --install "sources;android-24" --channel=0
   msg %username% 'android sources build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\sources\android-24" (
    msg %username% 'android sources build tools already exist'
    goto asdksToolsNougetTools
  ) else (
    call sdkmanager --install "sources;android-24" --channel=0
    msg %username% 'android sources build tools successfully to download'
    goto sdkTools
  )
)

:asdksToolsNouget522
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\sources" (
   call sdkmanager --install "sources;android-25" --channel=0
   msg %username% 'android sources build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\sources\android-25" (
    msg %username% 'android sources build tools already exist'
    goto asdksToolsNougetTools
  ) else (
    call sdkmanager --install "sources;android-25" --channel=0
    msg %username% 'android sources build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                       Android SDK Build Tools - Android SDK Sources Oreo
rem echo ==============================================================================================================
:asdksToolsOreoTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Oreo - 8.0 - Sources 26
echo  2. Oreo - 8.1 - Sources 27
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "please select type android sdk build tools version ?"

if %errorlevel% equ 1 goto asdksToolsOreo800
if %errorlevel% equ 2 goto asdksToolsOreo811
if %errorlevel% equ 3 goto asdksTools

:asdksToolsOreo800
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\sources" (
   call sdkmanager --install "sources;android-26" --channel=0
   msg %username% 'android sources build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\sources\android-26" (
    msg %username% 'android sources build tools already exist'
    goto asdksToolsOreoTools
  ) else (
    call sdkmanager --install "sources;android-26" --channel=0
    msg %username% 'android sources build tools successfully to download'
    goto sdkTools
  )
)

:asdksToolsOreo811
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\sources" (
   call sdkmanager --install "sources;android-27" --channel=0
   msg %username% 'android sources build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\sources\android-27" (
    msg %username% 'android sources build tools already exist'
    goto asdksToolsOreoTools
  ) else (
    call sdkmanager --install "sources;android-27" --channel=0
    msg %username% 'android sources build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                       Android SDK Build Tools - Android SDK Sources Pie
rem echo ==============================================================================================================
:asdksToolsPieTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Pie - 9.0 - Sources 28
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "please select type android sdk build tools version ?"

if %errorlevel% equ 1 goto asdksToolsPie900
if %errorlevel% equ 2 goto asdksTools

:asdksToolsPie900
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\sources" (
   call sdkmanager --install "sources;android-28" --channel=0
   msg %username% 'android sources build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\sources\android-28" (
    msg %username% 'android sources build tools already exist'
    goto asdksToolsPieTools
  ) else (
    call sdkmanager --install "sources;android-28" --channel=0
    msg %username% 'android sources build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                       Android SDK Build Tools - Android SDK Sources Q
rem echo ==============================================================================================================
:asdksToolsQTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Q - 10.0 - Sources 29
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "please select type android sdk build tools version ?"

if %errorlevel% equ 1 goto asdksToolsQ1000
if %errorlevel% equ 2 goto asdksTools

:asdksToolsQ1000
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\sources" (
   call sdkmanager --install "sources;android-29" --channel=0
   msg %username% 'android sources build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\sources\android-29" (
    msg %username% 'android sources build tools already exist'
    goto asdksToolsQTools
  ) else (
    call sdkmanager --install "sources;android-29" --channel=0
    msg %username% 'android sources build tools successfully to download'
    goto sdkTools
  )
)

rem echo===============================================================================================================
rem echo                       Android SDK Build Tools - Android SDK Sources R
rem echo ==============================================================================================================
:asdksToolsRTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. R - 11.0 - Sources 30
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "please select type android sdk build tools version ?"

if %errorlevel% equ 1 goto asdksToolsR1100
if %errorlevel% equ 2 goto asdksTools

:asdksToolsR1100
cls
echo off &echo.&echo off
echo ==============================================================================================================
echo              WARNING !!! don't close this cli because the android sdk build tools can be damaged
echo ==============================================================================================================
echo off &echo.&echo off
echo off &echo.&echo off

if not exist "%localappdata%\Android\Sdk\sources" (
   call sdkmanager --install "sources;android-30" --channel=0
   msg %username% 'android sources build tools successfully to download'
   goto sdkTools
) else (
  if exist "%localappdata%\Android\Sdk\sources\android-30" (
    msg %username% 'android sources build tools already exist'
    goto asdksToolsRTools
  ) else (
    call sdkmanager --install "sources;android-30" --channel=0
    msg %username% 'android sources build tools successfully to download'
    goto sdkTools
  )
)