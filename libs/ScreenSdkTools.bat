rem ==============================================================================================================
rem ==============================================================================================================
rem ==============================================================================================================
rem
rem                                            SCREEN SDK TOOLS
rem
rem ==============================================================================================================
:screenSdkTools
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. SDK Tools Manager
echo  2. SDK Platform Manager
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:120 /m "choice action ?"

if %errorlevel% equ 1 goto sdkTools
if %errorlevel% equ 2 goto sdkPlatforms
if %errorlevel% equ 3 goto sdkTools