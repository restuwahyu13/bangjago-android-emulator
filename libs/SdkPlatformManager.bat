rem ==============================================================================================================
rem ==============================================================================================================
rem ==============================================================================================================
rem
rem                                            SDK PLATFORM MANAGER
rem
rem ==============================================================================================================
:sdkPlatforms
cls
echo off &echo.&echo off
echo       /sdmds sd/  /mdh   hdddy-   `ddddh:  -mdd.  sdd+ `dy  +hmmd+    +do  -mdd.  `ohmmd/ `odmmdo`
echo        :MN+-` hM+ `NN+Mo  NM:sMh   `MM/hMs  dM/Mh  hMdM+.Md yMh.-:-    oMy  dM/Md  dMs.-:- yMy``yMy
echo         -ohMd hM+ hMdoMM- NMmdy.   `MMoyNy oMmoNM/ hM-yMsMd hMo-yMM    oMy oMNoNM+ NM//yMm dMo  oMh
echo       +mhdMy hM+/Mm//sMm NM-      `MMhmNs.MM+/+MN.hM. yMMd .dMdhMM    oMy.MM+/+MN.:dMddMm -dMddMd.
echo         `..   ``````   `` ``        ````  ```   `````   ```   `..`   .omM/```   ```  `..`    `..`
echo                                                                 `::`
echo off &echo.&echo off

echo  1. Google Android SDK Platform
echo  2. Default Android SDK Platform
echo  3. Tv Android SDK Platform
echo  4. Wear Android SDK Platform
echo  5. Google Playstore Android SDK Platform
echo  0. Back

echo off &echo.&echo off
echo off &echo.&echo off

choice /n /c:123450 /m "please select vendor android sdk platform version ?"

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

choice /n /c:1234567890 /m "please select android sdk platform version ?"

if %errorlevel% equ 1 goto jellyBeanListGoogle
if %errorlevel% equ 2 goto kitkatListGoogle
if %errorlevel% equ 3 goto lolipopListGoogle
if %errorlevel% equ 4 goto marshmallowListGoogle
if %errorlevel% equ 5 goto nougetListGoogle
if %errorlevel% equ 6 goto oreoListGoogle
if %errorlevel% equ 7 goto pieListGoogle
if %errorlevel% equ 8 goto qListGoogle
if %errorlevel% equ 9 goto rListGoogle
if %errorlevel% equ 10 goto sdkPlatforms

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

choice /n /c:1234560 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-16" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-16" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-16\google_apis\x86" (
    msg %username% 'system-images android sdk already exist'
    goto jellyBeanListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-16;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-16"
    call sdkmanager --install "sources;android-16" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-16" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
    call sdkmanager --install "sources;android-17" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-17" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-17\google_apis\x86" (
    msg %username% 'system-images android sdk already exist'
    goto jellyBeanListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-17;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-17"
    call sdkmanager --install "sources;android-17" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-17" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-18" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-18" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-18\google_apis\x86" (
    msg %username% 'system-images android sdk already exist'
    goto jellyBeanListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-18;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-18"
    call sdkmanager --install "sources;android-18" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-18" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-16" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-16" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-16\google_apis\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto jellyBeanListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-16;google_apis;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-16"
    call sdkmanager --install "sources;android-16" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-16" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-17" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-17" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-17\google_apis\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto jellyBeanListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-17;google_apis;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-17"
    call sdkmanager --install "sources;android-17" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-17" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-18" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-18" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-18\google_apis\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto jellyBeanListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-18;google_apis;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-18"
    call sdkmanager --install "sources;android-18" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-18" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:120 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-19" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-19" --channel=0
   call sdkmanager --install "build-tools;19.1.0" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-19\google_apis\x86" (
    msg %username% 'system-images android sdk already exist'
    goto kitkatListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-19;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-19"
    call sdkmanager --install "sources;android-19" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-19" --channel=0
    call sdkmanager --install "build-tools;19.1.0" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-19" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-19" --channel=0
   call sdkmanager --install "build-tools;19.1.0" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-19\google_apis\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto kitkatListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-19;google_apis;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-19"
    call sdkmanager --install "sources;android-19" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-19" --channel=0
    call sdkmanager --install "build-tools;19.1.0" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:1234560 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-21" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-21" --channel=0
   call sdkmanager --install "build-tools;21.1.2" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-21\google_apis\x86" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-21;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-21"
    call sdkmanager --install "sources;android-21" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-21" --channel=0
    call sdkmanager --install "build-tools;21.1.2" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-22" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-22" --channel=0
   call sdkmanager --install "build-tools;22.0.1" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-22\google_apis\x86" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-22;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-22"
    call sdkmanager --install "sources;android-22" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-22" --channel=0
    call sdkmanager --install "build-tools;22.0.1" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-21" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-21" --channel=0
   call sdkmanager --install "build-tools;21.1.2" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-21\google_apis\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-21;google_apis;x86_64
    call sdkmanager "platform-tools" "platforms;android-21"
    call sdkmanager --install "sources;android-21" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-21" --channel=0
    call sdkmanager --install "build-tools;21.1.2" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-22" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-22" --channel=0
   call sdkmanager --install "build-tools;22.0.1" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-22\google_apis\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-22;google_apis;x86_64
    call sdkmanager "platform-tools" "platforms;android-22"
    call sdkmanager --install "sources;android-22" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-22" --channel=0
    call sdkmanager --install "build-tools;22.0.1" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-21" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-21" --channel=0
   call sdkmanager --install "build-tools;21.1.2" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-21\google_apis\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-21;google_apis;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-21"
    call sdkmanager --install "sources;android-21" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-21" --channel=0
    call sdkmanager --install "build-tools;21.1.2" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-22" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-22" --channel=0
   call sdkmanager --install "build-tools;22.0.1" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-22\google_apis\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-22;google_apis;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-22"
    call sdkmanager --install "sources;android-22" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-22" --channel=0
    call sdkmanager --install "build-tools;22.0.1" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:1230 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-23" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-23" --channel=0
   call sdkmanager --install "build-tools;23.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\google_apis\x86" (
    msg %username% 'system-images android sdk already exist'
    goto marshmallowListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-23;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-23"
    call sdkmanager --install "sources;android-23" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-23" --channel=0
    call sdkmanager --install "build-tools;23.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-23" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-23" --channel=0
   call sdkmanager --install "build-tools;23.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\google_apis\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto marshmallowListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-23;google_apis;x86_64
    call sdkmanager "platform-tools" "platforms;android-23"
    call sdkmanager --install "sources;android-23" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-23" --channel=0
    call sdkmanager --install "build-tools;23.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-23" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-23" --channel=0
   call sdkmanager --install "build-tools;23.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\google_apis\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto marshmallowListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-23;google_apis;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-23"
    call sdkmanager --install "sources;android-23" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-23" --channel=0
    call sdkmanager --install "build-tools;23.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:1234560 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-24" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-24" --channel=0
   call sdkmanager --install "build-tools;24.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-24\google_apis\x86" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-24;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-24"
    call sdkmanager --install "sources;android-24" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-24" --channel=0
    call sdkmanager --install "build-tools;24.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-25" --channel=0
   call sdkmanager --install "build-tools;25.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-25\google_apis\x86" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-25;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-25"
    call sdkmanager --install "sources;android-25" --channel=0
    call sdkmanager --install "build-tools;25.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-24" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-24" --channel=0
   call sdkmanager --install "build-tools;24.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-24\google_apis\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-24;google_apis;x86_64
    call sdkmanager "platform-tools" "platforms;android-24"
    call sdkmanager --install "sources;android-24" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-24" --channel=0
    call sdkmanager --install "build-tools;24.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-25" --channel=0
   call sdkmanager --install "build-tools;25.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-25\google_apis\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-25;google_apis;x86_64
    call sdkmanager "platform-tools" "platforms;android-25"
    call sdkmanager --install "sources;android-25" --channel=0
    call sdkmanager --install "build-tools;25.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-24" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-24" --channel=0
   call sdkmanager --install "build-tools;24.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-24\google_apis\arm64-v8a" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-24;google_apis;arm64-v8a
    call sdkmanager "platform-tools" "platforms;android-24"
    call sdkmanager --install "sources;android-24" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-24" --channel=0
    call sdkmanager --install "build-tools;24.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-25" --channel=0
   call sdkmanager --install "build-tools;25.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-25\google_apis\arm64-v8a" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-25;google_apis;arm64-v8a
    call sdkmanager "platform-tools" "platforms;android-25"
    call sdkmanager --install "sources;android-25" --channel=0
    call sdkmanager --install "build-tools;25.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:12340 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-26" --channel=0
   call sdkmanager --install "build-tools;26.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-26\google_apis\x86" (
    msg %username% 'system-images android sdk already exist'
    goto oreoListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-26;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-26"
    call sdkmanager --install "sources;android-26" --channel=0
    call sdkmanager --install "build-tools;26.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-27" --channel=0
   call sdkmanager --install "build-tools;27.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-27\google_apis\x86" (
    msg %username% 'system-images android sdk already exist'
    goto oreoListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-27;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-27"
    call sdkmanager --install "sources;android-27" --channel=0
    call sdkmanager --install "build-tools;27.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-26" --channel=0
   call sdkmanager --install "build-tools;26.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-26\google_apis\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto oreoListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-26;google_apis;x86_64
    call sdkmanager "platform-tools" "platforms;android-26"
    call sdkmanager --install "sources;android-26" --channel=0
    call sdkmanager --install "build-tools;26.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-27" --channel=0
   call sdkmanager --install "build-tools;27.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-27\google_apis\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto oreoListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-27;google_apis;x86_64
    call sdkmanager "platform-tools" "platforms;android-27"
    call sdkmanager --install "sources;android-27" --channel=0
    call sdkmanager --install "build-tools;27.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:10 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-28" --channel=0
   call sdkmanager --install "build-tools;28.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-28\google_apis\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto pieListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-28;google_apis;x86_64
    call sdkmanager "platform-tools" "platforms;android-28"
    call sdkmanager --install "sources;android-28" --channel=0
    call sdkmanager --install "build-tools;28.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:120 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-29" --channel=0
   call sdkmanager --install "build-tools;29.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-29\google_apis\x86" (
    msg %username% 'system-images android sdk already exist'
    goto qListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-29;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-29"
    call sdkmanager --install "sources;android-29" --channel=0
    call sdkmanager --install "build-tools;29.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-29" --channel=0
   call sdkmanager --install "build-tools;29.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-29\google_apis\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto qListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-29;google_apis;x86_64
    call sdkmanager "platform-tools" "platforms;android-29"
    call sdkmanager --install "sources;android-29" --channel=0
    call sdkmanager --install "build-tools;29.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:120 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-30" --channel=0
   call sdkmanager --install "build-tools;30.0.2" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-30\google_apis\x86" (
    msg %username% 'system-images android sdk already exist'
    goto rListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-30;google_apis;x86
    call sdkmanager "platform-tools" "platforms;android-30"
    call sdkmanager --install "sources;android-30" --channel=0
    call sdkmanager --install "build-tools;30.0.2" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-30" --channel=0
   call sdkmanager --install "build-tools;30.0.2" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-30\google_apis\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto rListGoogle
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-30;google_apis;x86_64
    call sdkmanager "platform-tools" "platforms;android-30"
    call sdkmanager --install "sources;android-30" --channel=0
    call sdkmanager --install "build-tools;30.0.2" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:123456780 /m "please select android sdk platform version ?"

if %errorlevel% equ 1 goto jellyBeanListDefault
if %errorlevel% equ 2 goto kitkatListDefault
if %errorlevel% equ 3 goto lolipopListDefault
if %errorlevel% equ 4 goto marshmallowListDefault
if %errorlevel% equ 5 goto nougetListDefault
if %errorlevel% equ 6 goto oreoListDefault
if %errorlevel% equ 7 goto pieListDefault
if %errorlevel% equ 8 goto qListDefault
if %errorlevel% equ 9 goto sdkPlatforms

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

choice /n /c:1234560 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-16" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-16" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-16\default\x86" (
    msg %username% 'system-images android sdk already exist'
    goto jellyBeanListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-16;default;x86
    call sdkmanager "platform-tools" "platforms;android-16"
    call sdkmanager --install "sources;android-16" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-16" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-17" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-17" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-17\default\x86" (
    msg %username% 'system-images android sdk already exist'
    goto jellyBeanListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-17;default;x86
    call sdkmanager "platform-tools" "platforms;android-17"
    call sdkmanager --install "sources;android-17" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-17" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-18" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-18" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-18\default\x86" (
    msg %username% 'system-images android sdk already exist'
    goto jellyBeanListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-18;default;x86
    call sdkmanager "platform-tools" "platforms;android-18"
    call sdkmanager --install "sources;android-18" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-18" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-16" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-16" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-16\default\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto jellyBeanListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-16;default;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-16"
    call sdkmanager --install "sources;android-16" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-16" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-17" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-17" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-17\default\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto jellyBeanListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-17;default;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-17"
    call sdkmanager --install "sources;android-17" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-17" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-18" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-18" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-18\default\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto jellyBeanListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-18;default;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-18"
    call sdkmanager --install "sources;android-18" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-18" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:120 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-19" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-19" --channel=0
   call sdkmanager --install "build-tools;19.1.0" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-19\default\x86" (
    msg %username% 'system-images android sdk already exist'
    goto kitkatListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-19;default;x86
    call sdkmanager "platform-tools" "platforms;android-19"
    call sdkmanager --install "sources;android-19" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-19" --channel=0
    call sdkmanager --install "build-tools;19.1.0" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-19" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-19" --channel=0
   call sdkmanager --install "build-tools;19.1.0" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-19\default\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto kitkatListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-19;default;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-19"
    call sdkmanager --install "sources;android-19" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-19" --channel=0
    call sdkmanager --install "build-tools;19.1.0" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:1234560 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-21" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-21" --channel=0
   call sdkmanager --install "build-tools;21.1.2" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-21\default\x86" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-21;default;x86
    call sdkmanager "platform-tools" "platforms;android-21"
    call sdkmanager --install "sources;android-21" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-21" --channel=0
    call sdkmanager --install "build-tools;21.1.2" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-22" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-22" --channel=0
   call sdkmanager --install "build-tools;22.0.1" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-22\default\x86" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-22;default;x86
    call sdkmanager "platform-tools" "platforms;android-22"
    call sdkmanager --install "sources;android-22" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-22" --channel=0
    call sdkmanager --install "build-tools;22.0.1" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-21" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-21" --channel=0
   call sdkmanager --install "build-tools;21.1.2" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-21\default\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-21;default;x86_64
    call sdkmanager "platform-tools" "platforms;android-21"
    call sdkmanager --install "sources;android-21" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-21" --channel=0
    call sdkmanager --install "build-tools;21.1.2" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-22" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-22" --channel=0
   call sdkmanager --install "build-tools;22.0.1" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-22\default\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-22;default;x86_64
    call sdkmanager "platform-tools" "platforms;android-22"
    call sdkmanager --install "sources;android-22" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-22" --channel=0
    call sdkmanager --install "build-tools;22.0.1" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-21" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-21" --channel=0
   call sdkmanager --install "build-tools;21.1.2" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-21\default\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-21;default;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-21"
    call sdkmanager --install "sources;android-21" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-21" --channel=0
    call sdkmanager --install "build-tools;21.1.2" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-22" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-22" --channel=0
   call sdkmanager --install "build-tools;22.0.1" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-22\default\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-22;default;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-22"
    call sdkmanager --install "sources;android-22" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-22" --channel=0
    call sdkmanager --install "build-tools;22.0.1" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:1230 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-23" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-23" --channel=0
   call sdkmanager --install "build-tools;23.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\default\x86" (
    msg %username% 'system-images android sdk already exist'
    goto marshmallowListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-23;default;x86
    call sdkmanager "platform-tools" "platforms;android-23"
    call sdkmanager --install "sources;android-23" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-23" --channel=0
    call sdkmanager --install "build-tools;23.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-23" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-23" --channel=0
   call sdkmanager --install "build-tools;23.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\default\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto marshmallowListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-23;default;x86_64
    call sdkmanager "platform-tools" "platforms;android-23"
    call sdkmanager --install "sources;android-23" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-23" --channel=0
    call sdkmanager --install "build-tools;23.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-23" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-23" --channel=0
   call sdkmanager --install "build-tools;23.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\default\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto marshmallowListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-23;default;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-23"
    call sdkmanager --install "sources;android-23" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-23" --channel=0
    call sdkmanager --install "build-tools;23.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:123450 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-24" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-24" --channel=0
   call sdkmanager --install "build-tools;24.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-24\default\x86" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-24;default;x86
    call sdkmanager "platform-tools" "platforms;android-24"
    call sdkmanager --install "sources;android-24" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-24" --channel=0
    call sdkmanager --install "build-tools;24.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-25" --channel=0
   call sdkmanager --install "build-tools;25.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-25\default\x86" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-25;default;x86
    call sdkmanager "platform-tools" "platforms;android-25"
    call sdkmanager --install "sources;android-25" --channel=0
    call sdkmanager --install "build-tools;25.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-24" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-24" --channel=0
   call sdkmanager --install "build-tools;24.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-24\default\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-24;default;x86_64
    call sdkmanager "platform-tools" "platforms;android-24"
    call sdkmanager --install "sources;android-24" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-24" --channel=0
    call sdkmanager --install "build-tools;24.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-25" --channel=0
   call sdkmanager --install "build-tools;25.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-25\default\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-25;default;x86_64
    call sdkmanager "platform-tools" "platforms;android-25"
    call sdkmanager --install "sources;android-25" --channel=0
    call sdkmanager --install "build-tools;25.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-24" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-24" --channel=0
   call sdkmanager --install "build-tools;24.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-24\default\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-24;default;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-24"
    call sdkmanager --install "sources;android-24" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-24" --channel=0
    call sdkmanager --install "build-tools;24.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:12340 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-26" --channel=0
   call sdkmanager --install "build-tools;26.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-26\default\x86" (
    msg %username% 'system-images android sdk already exist'
    goto oreoListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-26;default;x86
    call sdkmanager "platform-tools" "platforms;android-26"
    call sdkmanager --install "sources;android-26" --channel=0
    call sdkmanager --install "build-tools;26.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-27" --channel=0
   call sdkmanager --install "build-tools;27.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-27\default\x86" (
    msg %username% 'system-images android sdk already exist'
    goto oreoListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-27;default;x86
    call sdkmanager "platform-tools" "platforms;android-27"
    call sdkmanager --install "sources;android-27" --channel=0
    call sdkmanager --install "build-tools;27.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-26" --channel=0
   call sdkmanager --install "build-tools;26.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-26\default\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto oreoListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-26;default;x86_64
    call sdkmanager "platform-tools" "platforms;android-26"
    call sdkmanager --install "sources;android-26" --channel=0
    call sdkmanager --install "build-tools;26.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-27" --channel=0
   call sdkmanager --install "build-tools;27.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-27\default\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto oreoListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-27;default;x86_64
    call sdkmanager "platform-tools" "platforms;android-27"
    call sdkmanager --install "sources;android-27" --channel=0
    call sdkmanager --install "build-tools;27.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:120 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-28" --channel=0
   call sdkmanager --install "build-tools;28.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-28\default\x86" (
    msg %username% 'system-images android sdk already exist'
    goto pieListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-28;default;x86
    call sdkmanager "platform-tools" "platforms;android-28"
    call sdkmanager --install "sources;android-28" --channel=0
    call sdkmanager --install "build-tools;28.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-28" --channel=0
   call sdkmanager --install "build-tools;28.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-28\default\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto pieListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-28;default;x86_64
    call sdkmanager "platform-tools" "platforms;android-28"
    call sdkmanager --install "sources;android-28" --channel=0
    call sdkmanager --install "build-tools;28.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:120 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-29" --channel=0
   call sdkmanager --install "build-tools;29.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-29\default\x86" (
    msg %username% 'system-images android sdk already exist'
    goto qListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-29;default;x86
    call sdkmanager "platform-tools" "platforms;android-29"
    call sdkmanager --install "sources;android-29" --channel=0
    call sdkmanager --install "build-tools;29.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-29" --channel=0
   call sdkmanager --install "build-tools;29.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-29\default\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto qListDefault
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-29;default;x86_64
    call sdkmanager "platform-tools" "platforms;android-29"
    call sdkmanager --install "sources;android-29" --channel=0
    call sdkmanager --install "build-tools;29.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:1234560 /m "please select android sdk platform version ?"

if %errorlevel% equ 1 goto lolipopListTvA
if %errorlevel% equ 2 goto marshmallowListTvA
if %errorlevel% equ 3 goto nougetListTvA
if %errorlevel% equ 4 goto oreoListTvA
if %errorlevel% equ 5 goto pieListTvA
if %errorlevel% equ 6 goto qListTvA
if %errorlevel% equ 7 goto sdkPlatforms

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

choice /n /c:1230 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-21" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-21" --channel=0
   call sdkmanager --install "build-tools;21.1.2" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-21\android-tv\x86" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListTvA
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-21;android-tv;x86
    call sdkmanager "platform-tools" "platforms;android-21"
    call sdkmanager --install "sources;android-21" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-21" --channel=0
    call sdkmanager --install "build-tools;21.1.2" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-22" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-22" --channel=0
   call sdkmanager --install "build-tools;22.0.1" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-22\android-tv\x86" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListTvA
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-22;android-tv;x86
    call sdkmanager "platform-tools" "platforms;android-22"
    call sdkmanager --install "sources;android-22" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-22" --channel=0
    call sdkmanager --install "build-tools;22.0.1" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-21" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-21" --channel=0
   call sdkmanager --install "build-tools;21.1.2" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-21\android-tv\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto lolipopListTvA
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-21;android-tv;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-21"
    call sdkmanager --install "sources;android-21" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-21" --channel=0
    call sdkmanager --install "build-tools;21.1.2" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:120 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-23" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-23" --channel=0
   call sdkmanager --install "build-tools;23.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\android-tv\x86" (
    msg %username% 'system-images android sdk already exist'
    goto marshmallowListTvA
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-23;android-tv;x86
    call sdkmanager "platform-tools" "platforms;android-23"
    call sdkmanager --install "sources;android-23" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-23" --channel=0
    call sdkmanager --install "build-tools;23.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-23" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-23" --channel=0
   call sdkmanager --install "build-tools;23.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\android-tv\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto marshmallowListTvA
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-23;android-tv;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-23"
    call sdkmanager --install "sources;android-23" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-23" --channel=0
    call sdkmanager --install "build-tools;23.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:120 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-24" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-24" --channel=0
   call sdkmanager --install "build-tools;24.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-24\android-tv\x86" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListTvA
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-24;android-tv;x86
    call sdkmanager "platform-tools" "platforms;android-24"
    call sdkmanager --install "sources;android-24" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-24" --channel=0
    call sdkmanager --install "build-tools;24.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
 if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-25\android-tv\x86" (
   msg %username% 'system-images android sdk already exist'
   goto nougetListTvA
 ) else (
   call sdkmanager system-images;android-25;android-tv;x86
   call sdkmanager "platform-tools" "platforms;android-25"
   call sdkmanager --install "sources;android-25" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-25" --channel=0
   call sdkmanager --install "build-tools;25.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-25\android-tv\x86" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListTvA
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-25;android-tv;x86
    call sdkmanager "platform-tools" "platforms;android-25"
    call sdkmanager --install "sources;android-25" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-25" --channel=0
    call sdkmanager --install "build-tools;25.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:120 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-26" --channel=0
   call sdkmanager --install "build-tools;26.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-26\android-tv\x86" (
    msg %username% 'system-images android sdk already exist'
    goto oreoListTvA
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-26;android-tv;x86
    call sdkmanager "platform-tools" "platforms;android-26"
    call sdkmanager --install "sources;android-26" --channel=0
    call sdkmanager --install "build-tools;26.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-27" --channel=0
   call sdkmanager --install "build-tools;27.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-27\android-tv\x86" (
    msg %username% 'system-images android sdk already exist'
    goto oreoListTvA
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-27;android-tv;x86
    call sdkmanager "platform-tools" "platforms;android-27"
    call sdkmanager --install "sources;android-27" --channel=0
    call sdkmanager --install "build-tools;27.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:10 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-28" --channel=0
   call sdkmanager --install "build-tools;28.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-28\android-tv\x86" (
    msg %username% 'system-images android sdk already exist'
    goto pieListTvA
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-28;android-tv;x86
    call sdkmanager "platform-tools" "platforms;android-28"
    call sdkmanager --install "sources;android-28" --channel=0
    call sdkmanager --install "build-tools;28.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:10 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-29" --channel=0
   call sdkmanager --install "build-tools;29.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-29\android-tv\x86" (
    msg %username% 'system-images android sdk already exist'
    goto qListTvA
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-29;android-tv;x86
    call sdkmanager "platform-tools" "platforms;android-29"
    call sdkmanager --install "sources;android-29" --channel=0
    call sdkmanager --install "build-tools;29.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:12340 /m "please select android sdk platform version ?"

if %errorlevel% equ 1 goto marshmallowListWr
if %errorlevel% equ 2 goto nougetListWr
if %errorlevel% equ 3 goto oreoListWr
if %errorlevel% equ 4 goto pieListWr
if %errorlevel% equ 5 goto sdkPlatforms

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

choice /n /c:120 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-23" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-23" --channel=0
   call sdkmanager --install "build-tools;23.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\android-wear\x86" (
    msg %username% 'system-images android sdk already exist'
    goto marshmallowListWr
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-23;android-wear;x86
    call sdkmanager "platform-tools" "platforms;android-23"
    call sdkmanager --install "sources;android-23" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-23" --channel=0
    call sdkmanager --install "build-tools;23.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-23" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-23" --channel=0
   call sdkmanager --install "build-tools;23.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-23\android-wear\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto marshmallowListWr
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-23;android-wear;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-23"
    call sdkmanager --install "sources;android-23" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-23" --channel=0
    call sdkmanager --install "build-tools;23.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:120 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-25" --channel=0
   call sdkmanager --install "build-tools;25.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-25\android-wear\x86" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListWr
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-25;android-wear;x86
    call sdkmanager "platform-tools" "platforms;android-25"
    call sdkmanager --install "sources;android-25" --channel=0
    call sdkmanager --install "build-tools;25.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-25" --channel=0
   call sdkmanager --install "build-tools;25.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-25\android-wear\armeabi-v7a" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListWr
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-25;android-wear;armeabi-v7a
    call sdkmanager "platform-tools" "platforms;android-25"
    call sdkmanager --install "sources;android-25" --channel=0
    call sdkmanager --install "build-tools;25.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:10 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-26" --channel=0
   call sdkmanager --install "build-tools;26.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-26\android-wear\x86" (
    msg %username% 'system-images android sdk already exist'
    goto oreoListWr
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-26;android-wear;x86
    call sdkmanager "platform-tools" "platforms;android-26"
    call sdkmanager --install "sources;android-26" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-26" --channel=0
    call sdkmanager --install "build-tools;26.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:10 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-28" --channel=0
   call sdkmanager --install "build-tools;28.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-28\android-wear\x86" (
    msg %username% 'system-images android sdk already exist'
    goto pieListWr
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-28;android-wear;x86
    call sdkmanager "platform-tools" "platforms;android-28"
    call sdkmanager --install "sources;android-28" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-28" --channel=0
    call sdkmanager --install "build-tools;28.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:123450 /m "please select android sdk platform version ?"

if %errorlevel% equ 1 goto nougetListGp
if %errorlevel% equ 2 goto oreoListGp
if %errorlevel% equ 3 goto pieListGp
if %errorlevel% equ 4 goto qListGp
if %errorlevel% equ 5 goto rListGp
if %errorlevel% equ 6 goto sdkPlatforms

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

choice /n /c:120 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-24" --channel=0
   call sdkmanager --install "add-ons;addon-google_apis-google-24" --channel=0
   call sdkmanager --install "build-tools;24.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-24\google_apis_playstore\x86" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListGp
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-24;google_apis_playstore;x86
    call sdkmanager "platform-tools" "platforms;android-24"
    call sdkmanager --install "sources;android-24" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-24" --channel=0
    call sdkmanager --install "build-tools;24.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-25" --channel=0
   call sdkmanager --install "build-tools;25.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-25\google_apis_playstore\x86" (
    msg %username% 'system-images android sdk already exist'
    goto nougetListGp
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-25;google_apis_playstore;x86
    call sdkmanager "platform-tools" "platforms;android-25"
    call sdkmanager --install "sources;android-25" --channel=0
    call sdkmanager --install "add-ons;addon-google_apis-google-25" --channel=0
    call sdkmanager --install "build-tools;25.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:120 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-26" --channel=0
   call sdkmanager --install "build-tools;26.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-26\google_apis_playstore\x86" (
    msg %username% 'system-images android sdk already exist'
    goto oreoListGp
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-26;google_apis_playstore;x86
    call sdkmanager "platform-tools" "platforms;android-26"
    call sdkmanager --install "sources;android-26" --channel=0
    call sdkmanager --install "build-tools;26.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-27" --channel=0
   call sdkmanager --install "build-tools;27.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-27\google_apis_playstore\x86" (
    msg %username% 'system-images android sdk already exist'
    goto oreoListGp
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-27;google_apis_playstore;x86
    call sdkmanager "platform-tools" "platforms;android-27"
    call sdkmanager --install "sources;android-27" --channel=0
    call sdkmanager --install "build-tools;27.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:120 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-28" --channel=0
   call sdkmanager --install "build-tools;28.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-28\google_apis_playstore\x86" (
    msg %username% 'system-images android sdk already exist'
    goto pieListGp
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-28;google_apis_playstore;x86
    call sdkmanager "platform-tools" "platforms;android-28"
    call sdkmanager --install "sources;android-28" --channel=0
    call sdkmanager --install "build-tools;28.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-28" --channel=0
   call sdkmanager --install "build-tools;28.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-28\google_apis_playstore\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto pieListGp
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-28;google_apis_playstore;x86_64
    call sdkmanager "platform-tools" "platforms;android-28"
    call sdkmanager --install "sources;android-28" --channel=0
    call sdkmanager --install "build-tools;28.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:120 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-29" --channel=0
   call sdkmanager --install "build-tools;29.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-29\google_apis_playstore\x86" (
    msg %username% 'system-images android sdk already exist'
    goto qListGp
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-29;google_apis_playstore;x86
    call sdkmanager "platform-tools" "platforms;android-29"
    call sdkmanager --install "sources;android-29" --channel=0
    call sdkmanager --install "build-tools;29.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-29" --channel=0
   call sdkmanager --install "build-tools;29.0.3" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-29\google_apis_playstore\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto qListGp
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-29;google_apis_playstore;x86_64
    call sdkmanager "platform-tools" "platforms;android-29"
    call sdkmanager --install "sources;android-29" --channel=0
    call sdkmanager --install "build-tools;29.0.3" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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

choice /n /c:120 /m "please select type android sdk platform version ?"

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
   call sdkmanager --install "sources;android-30" --channel=0
   call sdkmanager --install "build-tools;30.0.2" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-30\google_apis_playstore\x86" (
    msg %username% 'system-images android sdk already exist'
    goto rListGp
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-30;google_apis_playstore;x86
    call sdkmanager "platform-tools" "platforms;android-30"
    call sdkmanager --install "sources;android-30" --channel=0
    call sdkmanager --install "build-tools;30.0.2" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
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
   call sdkmanager --install "sources;android-30" --channel=0
   call sdkmanager --install "build-tools;30.0.2" --channel=0
   msg %username% 'system-images successfully to download'
   goto sdkPlatforms
  )
) else (
  if exist "%LOCALAPPDATA%\Android\Sdk\system-images\android-30\google_apis_playstore\x86_64" (
    msg %username% 'system-images android sdk already exist'
    goto rListGp
  ) else (
    call sdkmanager --licenses
    call sdkmanager system-images;android-30;google_apis_playstore;x86_64
    call sdkmanager "platform-tools" "platforms;android-30"
    call sdkmanager --install "sources;android-30" --channel=0
    call sdkmanager --install "build-tools;30.0.2" --channel=0
    msg %username% 'system-images successfully to download'
    goto sdkPlatforms
  )
)