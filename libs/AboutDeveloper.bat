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

echo  1. About Me
echo  2. Support Donation Project
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

echo  1. Donation Project
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:10 /m "choice action ?"

if %errorlevel%% equ 1 (
 start https://bit.ly/37KsgkB
 goto buyCoffe
)

if %errorlevel%% equ 2 goto aboutMe