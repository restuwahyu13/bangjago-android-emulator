## Bangjago Android Emulator (CLI Version)

**Bangjago Emulator** is a cli-based application used for **Mobile Development**, which is used as an **Android Emulator** like **Genymotion** even though it's not as good as **Genymotion**, besides that, I added some features that are not in **Genymotion**, such as connecting your mobile device using **USB Debugging and Wireless** for **Mobile Development**, for now only available for **Windows users**, maybe next time I will make it for another operating system version like **(Mac or Linux)**.

### Language:

- [Indonesian Language](https://github.com/restuwahyu13/bangjago-android-emulator/blob/main/README_IND.md)

### Features:

- [x] Easy To Use
- [x] Effeciency Management RAM and CPU
- [x] Connected over USB and Wireless.
- [x] Connected over Android Emulator
- [x] Installation Android Studio and Java JDK Supported automatically
- [x] Support for like React Native, Flutter, Ionic, Native Script etc.

### Command:
- #### **ADB TOOLS**
  + **Add Adb USB** is used to add **usb debugging port**
  + **Add Adb Wireless** is used to add **ip address**
  + **Restart ADB** is used to reset **adb** to **default port**
  + **Check ADB** is used to check if **adb device is connected or not**
  - **Running Emulator** is used to run **emulator** via **usb debugging** or **wireless**

- #### **SDK TOOLS**
  + **Google Android SDK** to download **android SDK** version **android-google apis**
  + **Default Android SDK** to download **android SDK** version **android-default**
  + **TV Android SDK** to download **android SDK** version **android-tv**
  + **Wear Android SDK** to download **android SDK** version **android-wear**
  + **Google Playstore SDK** to download **android SDK** version **google_apis_playstore**

- #### **AVD TOOLS**
  + **List AVD Emulator** to list all **avd emulators** available
  + **Create AVD Emulator** to create **new avd emulator**
  + **Running AVD Emulator** to run **avd emulator**
  + **Delete AVD Emulator** to remove **avd emulator**
  + **Update AVD Emulator** to update **avd emulator**

- #### **SOFTWARE TOOLS**
  + **Java JDK** to download **java jdk** automatically
  + **Android Studio** to download **android studio** automatically

- #### **More Information**
  + **developer related information** and support **project donation**

### How To Use:

#### 1. Running Application

- First, you must install **Android Studio and Java JDK** if not installed on **Computer/Laptop** over CLI
- Install java jdk versi jdk-8u261 [Download Here](https://www.filehorse.com/download-java-development-kit-64/52937/) **If you encounter an error**
- Upgrade `Android Studio` to `4.1 Version` If any Error encountered when you downloading **Android SDK**
- Download the file via the **bit.ly** link above
- Extract bangjago emulator.zip to **Localdisk C**
- Click properties my computer-> **advanced system settings -> environment variable**
- Copy path **Android SDK** to **environment system variable** -> **ANDROID_HOME**
- Copy path **Java JDK** to **environment system variable** -> **JAVA_HOME**
- Copy path **C:\bangjago to environment system variable -> path**
- Copy path **C:\bangjago to environment system variabel -> bangjago**
- You can open **cmd** and type **start bangjago**, don't use a terminal other than **cmd**
- If you want to install **Android Studio** or **Java JDK** **run as** is required

#### 2. Connected over USB Debugging

- First, you must Provide USB Cabel
- Enable **USB Debugging** on your smartphone
- Ensured your smartphone could connect on your **Computer/Laptop**
- Selected **adb tools** then choose **add add usb**
- Select the default **USB debugging** port and **device**
- Just running emulator -> emulator usb
- If not connected then choosing **adb tools->restart adb** and repeat.

#### 3. Connected over Wireless

- First, you must provide USB cable
- Plug USB to port **Computer/Laptop**
- Enable **USB Debugging** on your smartphone
- Make sure your smartphone is connected
- Selected **adb tools** then choose **add wireless**
- Set **IP Address** default
- If it works, unplug your smartphone from USB.
- Close emulator and Run Emulator again **run emulator -> wireless emulator**
- If not connected , you can select **adb tools -> restart adb** then repeat
- or follow the tutorial below **[React Native](https://tinyurl.com/y6rvxsln)** or **[Flutter](https://tinyurl.com/yxwpy7w7)**

#### 4. Connected over Emulator.

- Select **avd tools -> create emulator** then **Android SDK** will be downloaded automatically
- Skip the first **method** if **avd emulator** already exists
- How to run the emulator **avd tool options -> then select run emulator**
- Enter **emulator name** that was created before

### Default Port Device:

| Name         | IP Address/Port | Type     |
| ------------ | --------------- | -------- |
| Local        | 5555            | USB      |
| React Native | 8081            | USB      |
| Flutter      | 8080            | USB      |
| Local        | 192.168.x.x     | Wireless |
| React Native | 8.0.8.1         | Wireless |
| Flutter      | 8.0.8.0         | Wireless |

### System Images List:

- #### Google System Images

  | Android API Version | Target Version | CPU Version |
  | ------------------- | -------------- | ----------- |
  | Android 16          | google_apis    | x86         |
  | Android 16          | google_apis    | armeabi-v7a |
  | Android 17          | google_apis    | x86         |
  | Android 17          | google_apis    | armeabi-v7a |
  | Android 18          | google_apis    | x86         |
  | Android 18          | google_apis    | armeabi-v7a |
  | Android 19          | google_apis    | x86         |
  | Android 19          | google_apis    | armeabi-v7a |
  | Android 21          | google_apis    | x86         |
  | Android 21          | google_apis    | x86_64      |
  | Android 21          | google_apis    | armeabi-v7a |
  | Android 22          | google_apis    | x86         |
  | Android 22          | google_apis    | x86_64      |
  | Android 22          | google_apis    | armeabi-v7a |
  | Android 23          | google_apis    | x86         |
  | Android 23          | google_apis    | x86_64      |
  | Android 23          | google_apis    | armeabi-v7a |
  | Android 24          | google_apis    | x86         |
  | Android 24          | google_apis    | x86_64      |
  | Android 24          | google_apis    | arm64-v8a   |
  | Android 25          | google_apis    | x86         |
  | Android 25          | google_apis    | x86_64      |
  | Android 25          | google_apis    | armeabi-v7a |
  | Android 25          | google_apis    | arm64-v8a   |
  | Android 26          | google_apis    | x86         |
  | Android 26          | google_apis    | x86_64      |
  | Android 27          | google_apis    | x86         |
  | Android 28          | google_apis    | x86_64      |
  | Android 29          | google_apis    | x86         |
  | Android 29          | google_apis    | x86_64      |
  | Android 30          | google_apis    | x86         |
  | Android 30          | google_apis    | x86_64      |

- #### Default System Images

  | Android API Version | Target Version | CPU Version |
  | ------------------- | -------------- | ----------- |
  | Android 16          | default        | x86         |
  | Android 16          | default        | armeabi-v7a |
  | Android 17          | default        | x86         |
  | Android 17          | default        | armeabi-v7a |
  | Android 18          | default        | x86         |
  | Android 18          | default        | armeabi-v7a |
  | Android 19          | default        | x86         |
  | Android 19          | default        | armeabi-v7a |
  | Android 21          | default        | x86         |
  | Android 21          | default        | x86_64      |
  | Android 21          | default        | armeabi-v7a |
  | Android 22          | default        | x86         |
  | Android 22          | default        | x86_64      |
  | Android 22          | default        | armeabi-v7a |
  | Android 23          | default        | x86         |
  | Android 23          | default        | x86_64      |
  | Android 23          | default        | armeabi-v7a |
  | Android 24          | default        | x86         |
  | Android 24          | default        | x86_64      |
  | Android 24          | default        | armeabi-v7a |
  | Android 25          | default        | x86         |
  | Android 25          | default        | x86_64      |
  | Android 26          | default        | x86         |
  | Android 26          | default        | x86_64      |
  | Android 27          | default        | x86         |
  | Android 27          | default        | x86_64      |
  | Android 28          | default        | x86         |
  | Android 28          | default        | x86_64      |
  | Android 30          | default        | x86         |
  | Android 30          | default        | x86_64      |

- #### TV System Images

  | Android API Version | Target Version | CPU Version |
  | ------------------- | -------------- | ----------- |
  | Android 21          | android-tv     | x86         |
  | Android 21          | android-tv     | armeabi-v7a |
  | Android 22          | android-tv     | x86         |
  | Android 23          | android-tv     | x86         |
  | Android 23          | android-tv     | armeabi-v7a |
  | Android 24          | android-tv     | x86         |
  | Android 25          | android-tv     | x86         |
  | Android 26          | android-tv     | x86         |
  | Android 27          | android-tv     | x86         |
  | Android 28          | android-tv     | x86         |
  | Android 29          | android-tv     | x86         |

- #### Wear OS System Images

  | Android API Version | Target Version | CPU Version |
  | ------------------- | -------------- | ----------- |
  | Android 23          | android-wear   | x86         |
  | Android 23          | android-wear   | armeabi-v7a |
  | Android 25          | android-wear   | x86         |
  | Android 25          | android-wear   | armeabi-v7a |
  | Android 26          | android-wear   | x86         |
  | Android 28          | android-wear   | x86         |

- #### Google Playstore System Images

  | Android API Version | Target Version        | CPU Version |
  | ------------------- | --------------------- | ----------- |
  | Android 24          | google_apis_playstore | x86         |
  | Android 25          | google_apis_playstore | x86         |
  | Android 26          | google_apis_playstore | x86         |
  | Android 27          | google_apis_playstore | x86         |
  | Android 28          | google_apis_playstore | x86         |
  | Android 28          | google_apis_playstore | x86_64      |
  | Android 29          | google_apis_playstore | x86         |
  | Android 29          | google_apis_playstore | x86_64      |
  | Android 30          | google_apis_playstore | x86         |
  | Android 30          | google_apis_playstore | x86_64      |

### Skin Device List:

- #### Default Phone Device

  | Name                   | Ram     | CPU Cores | Internal Storage |
  | ---------------------- | ------- | --------- | ---------------- |
  | 2.7_QVGA               | 1024 MB | 1 Core    | 2048 MB          |
  | 2.7_QVGA_slider        | 1024 MB | 1 Core    | 2048 MB          |
  | 3.2_QVGA_ADP2          | 1024 Mb | 1 Core    | 2048 MB          |
  | 3.3_WQVGA              | 1024 Mb | 1 Core    | 2048 MB          |
  | 3.4_WQVGA              | 1024 Mb | 1 Core    | 2048 MB          |
  | 3.7_FWVGA_slider       | 1024 Mb | 1 Core    | 2048 MB          |
  | 3.7_WVGA_Nexus_One     | 1024 Mb | 1 Core    | 2048 MB          |
  | 4.7_WXGA               | 1024 Mb | 1 Core    | 2048 MB          |
  | 4.65_720p_Galaxy_Nexus | 1024 Mb | 1 Core    | 2048 MB          |
  | 4_WVGA_Nexus_S         | 1024 Mb | 1 Core    | 2048 MB          |
  | 5.1_WVGA               | 1024 Mb | 1 Core    | 2048 MB          |
  | 5.1_WVGA_API           | 1024 Mb | 1 Core    | 2048 MB          |
  | 5.4_FWVGA              | 1024 Mb | 1 Core    | 2048 MB          |
  | 7.3_Foldable           | 2048 MB | 1 Core    | 4096 MB          |
  | 8_Foldable             | 2048 MB | 1 Core    | 4096 MB          |
  | Galaxy_Nexus           | 1024 MB | 1 Core    | 2048 MB          |
  | Nexus_4                | 2048 MB | 1 Core    | 4096 MB          |
  | Nexus_5                | 2048 MB | 1 Core    | 4096 MB          |
  | Nexus_5X               | 2048 MB | 1 Core    | 4096 MB          |
  | Nexus_6                | 2048 MB | 1 Core    | 4096 MB          |
  | Nexus_6P               | 2048 MB | 1 Core    | 4096 MB          |
  | Nexus_One              | 1024 MB | 1 Core    | 2048 MB          |
  | Nexus_S                | 1024 MB | 1 Core    | 2048 MB          |
  | Pixel                  | 2048 MB | 1 Core    | 4096 MB          |
  | Pixel_2                | 2048 MB | 1 Core    | 4096 MB          |
  | Pixel_2_XL             | 2048 MB | 1 Core    | 4096 MB          |
  | Pixel_3                | 2048 MB | 1 Core    | 4096 MB          |
  | Pixel_3_XL             | 2048 MB | 1 Core    | 4096 MB          |
  | Pixel_3a               | 2048 MB | 1 Core    | 4096 MB          |
  | Pixel_3a_XL            | 2048 MB | 1 Core    | 4096 MB          |
  | Pixel_XL               | 2048 MB | 1 Core    | 4096 MB          |

  - #### Default Tablet Device

  | Name             | Ram     | CPU Cores | Internal Storage |
  | ---------------- | ------- | --------- | ---------------- |
  | 7_WSVGA_Tablet   | 1024 MB | 1 Core    | 2048 MB          |
  | 10.1_WXGA_Tablet | 1024 MB | 1 Core    | 2048 MB          |
  | Nexus_7          | 2048 Mb | 1 Core    | 4096 MB          |
  | Nexus_7_2012     | 1024 Mb | 1 Core    | 2048 MB          |
  | Nexus_9          | 2048 Mb | 1 Core    | 4096 MB          |
  | Nexus_10         | 2048 Mb | 1 Core    | 4096 MB          |
  | Pixel_C          | 2048 Mb | 1 Core    | 4096 MB          |

  - #### Default TV Device

  | Name                    | Ram     | CPU Cores | Internal Storage |
  | ----------------------- | ------- | --------- | ---------------- |
  | Android_Wear_Round      | 1024 MB | 1 Core    | 2048 MB          |
  | Android_Wear_Round_Chin | 1024 MB | 1 Core    | 2048 MB          |
  | Android_Wear_Square     | 1024 MB | 1 Core    | 2048 MB          |

### Support Project:

If you like **this project** or you want to **support this project**, you can **treat me to a cup of coffee** or you can **donate** via the following link **[Donate](https://bit.ly/37KsgkB)**.

### Video Tutorial:

- [Tutorial](https://bit.ly/2G5KUYR)

### Author && Contributor:

- [Restu Wahyu Saputra](https://github.com/restuwahyu13)
- [Vicri Kurniawan](https://github.com/vicrfiport)

### LICENSE:

- [MIT](https://github.com/restuwahyu13/bangjago-emulator/blob/main/LICENSE.MD)
