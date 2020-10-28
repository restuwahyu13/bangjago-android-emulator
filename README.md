## Bang Jago Android Emulator (CLI Version)

**Bang Jago Emulator** adalah aplikasi cli sederhana yang digunakan untuk **pegembangan mobile development**, yang dimana fungsinya itu sebagai **android emulator**, fungsinya kurang lebih sama seperti dengan **Genymotion** walaupun tidak sebagus **Genymotion** dan saya sedikit menambahkan beberapa fiture yang tidak ada di **Genymotion**, seperti terhubung dengan **USB Debugging** dan **Wireless**, untuk saat ini hanya tersedia untuk pengguna **Windows** saja, di lain waktu mungkin saya akan membuatnya untuk versi **Mac OS dan Linux**.

### Features:

+ ukuran hanya 800kb
+ sangat mudah digunakan
+ daya penggunaan cpu dan ram yang rendah
+ terhubung melalui usb dan wireless
+ terhubung melalui android emulator
+ instalasi software pendukung secara otomatis
+ support untuk React Native, Flutter, Ionic, Native Script etc

### How To Use:

+ #### Menjalankan Aplikasi
  - install android studio dan java jdk terlebih dahulu jika belum terinstall dilaptop/komputer anda melalui cli
  - install java jdk versi jdk-8u261 [download disini](https://www.filehorse.com/download-java-development-kit-64/52937/)
  - upgrade `android studio` anda ke `versi 4.1` jika mengalami error saat mendownload **android sdk**
  - copy path **android sdk** ke **environment system variables -> ANDROID_HOME** seperti ini jika belum
  - copy path **java jdk** ke **environment system variables -> JAVA_HOME** seperti ini jika belum
  - extract bang jago emulator.zip ke **Localdisk C:**
  - properties **my computer -> advanced systems settings -> environment variables**
  - copy path C:\bangjago ke **environment systems variables -> path**
  - copy path C:\bangjago ke **environment systems variables -> bangjago**
  - kemudian buka cmd dan ketikan **start bangjago**
  - jika anda ingin menginstall `android studio` atau `java jdk` **run as** dibutuhkan

+ #### Terhubung Melalui USB Debugging
  - sediakan kabel usb terlebih dahulu
  - nyalakan pengaturan **usb debugging** pada smartphone anda
  - pastikan smartphone anda sudah terhubung di **laptop/komputer**
  - pilih **adb tools** kemudian pilih **add adb usb**
  - masukan port default usb debugging sesuai **perangkat** tersebut
  - kemudian jalankan emulator pilih **running emulator -> emulator usb**
  - jika tidak terhubung pilih **adb tools -> restart adb** kemudian ulangi lagi dari awal

+ #### Terhubung Melalui Wireless
  - sediakan kabel usb terlebih dahulu
  - kemudian masukan usb ke port **laptop/komputer** anda
  - nyalakan pengaturan **usb debugging** pada smartphone anda
  - pastikan smartphone anda sudah terhubung di **laptop/komputer**
  - pilih **adb tools** kemudian pilih **adb wireless**
  - masukan **ip address** default sesuai **perangkat** tersebut
  - ketika emulator berhasil ditampilkan, cabut smartphone anda dari usb
  - kemudian tutup emulator dan jalankan emulator kembali pilih **running emulator -> emulator wireless**
  - jika tidak terhubung pilih **adb tools -> restart adb** kemudian ulangi lagi dari awal

+ #### Terhubung Melalui Emulator
  - pilih **sdk tools** untuk mendownload **system-images** atau lewati cara ini, jika **system-images** sudah ada sebelumnya
  - kemudian pilih **avd tools -> create emulator** atau lewati cara ini, jika **avd device** sudah ada sebelumnya
  - kemudian jalankan emulator **pilih avd tools -> running emulator**
  - kemudian masukan **nama emulator** yang sudah pernah dibuat sebelumnya
  - android emulator berhasil dijalankan

### Default Port Device:

Name                 | IP Address/Port|  Type    |
-------------------  | -------------- | -------- |
Local                | 5555           | USB      |
React Native         | 8081           | USB      |
Flutter              | 8080           | USB      |
Local                | 192.168.x.x    | Wireless |
React Native         | 8.0.8.1        | Wireless |
Flutter              | 8.0.8.0        | Wireless |

### System Images List:

+ #### Google System Images

  Android API Version  | Target Version | CPU Version |
  -------------------  | -------------- | ----------- |
  Android 16           | google_apis    | x86         |
  Android 16           | google_apis    | armeabi-v7a |
  Android 17           | google_apis    | x86         |
  Android 17           | google_apis    | armeabi-v7a |
  Android 18           | google_apis    | x86         |
  Android 18           | google_apis    | armeabi-v7a |
  Android 19           | google_apis    | x86         |
  Android 19           | google_apis    | armeabi-v7a |
  Android 21           | google_apis    | x86         |
  Android 21           | google_apis    | x86_64      |
  Android 21           | google_apis    | armeabi-v7a |
  Android 22           | google_apis    | x86         |
  Android 22           | google_apis    | x86_64      |
  Android 22           | google_apis    | armeabi-v7a |
  Android 23           | google_apis    | x86         |
  Android 23           | google_apis    | x86_64      |
  Android 23           | google_apis    | armeabi-v7a |
  Android 24           | google_apis    | x86         |
  Android 24           | google_apis    | x86_64      |
  Android 24           | google_apis    | arm64-v8a   |
  Android 25           | google_apis    | x86         |
  Android 25           | google_apis    | x86_64      |
  Android 25           | google_apis    | armeabi-v7a |
  Android 25           | google_apis    | arm64-v8a   |
  Android 26           | google_apis    | x86         |
  Android 26           | google_apis    | x86_64      |
  Android 27           | google_apis    | x86         |
  Android 28           | google_apis    | x86_64      |
  Android 29           | google_apis    | x86         |
  Android 29           | google_apis    | x86_64      |
  Android 30           | google_apis    | x86         |
  Android 30           | google_apis    | x86_64      |

+ #### Default System Images

  Android API Version  | Target Version | CPU Version |
  -------------------  | -------------- | ----------- |
  Android 16           | default        | x86         |
  Android 16           | default        | armeabi-v7a |
  Android 17           | default        | x86         |
  Android 17           | default        | armeabi-v7a |
  Android 18           | default        | x86         |
  Android 18           | default        | armeabi-v7a |
  Android 19           | default        | x86         |
  Android 19           | default        | armeabi-v7a |
  Android 21           | default        | x86         |
  Android 21           | default        | x86_64      |
  Android 21           | default        | armeabi-v7a |
  Android 22           | default        | x86         |
  Android 22           | default        | x86_64      |
  Android 22           | default        | armeabi-v7a |
  Android 23           | default        | x86         |
  Android 23           | default        | x86_64      |
  Android 23           | default        | armeabi-v7a |
  Android 24           | default        | x86         |
  Android 24           | default        | x86_64      |
  Android 24           | default        | armeabi-v7a |
  Android 25           | default        | x86         |
  Android 25           | default        | x86_64      |
  Android 26           | default        | x86         |
  Android 26           | default        | x86_64      |
  Android 27           | default        | x86         |
  Android 27           | default        | x86_64      |
  Android 28           | default        | x86         |
  Android 28           | default        | x86_64      |
  Android 30           | default        | x86         |
  Android 30           | default        | x86_64      |

+ #### TV System Images

  Android API Version  | Target Version | CPU Version |
  -------------------  | -------------- | ----------- |
  Android 21           | android-tv     | x86         |
  Android 21           | android-tv     | armeabi-v7a |
  Android 22           | android-tv     | x86         |
  Android 23           | android-tv     | x86         |
  Android 23           | android-tv     | armeabi-v7a |
  Android 24           | android-tv     | x86         |
  Android 25           | android-tv     | x86         |
  Android 26           | android-tv     | x86         |
  Android 27           | android-tv     | x86         |
  Android 28           | android-tv     | x86         |
  Android 29           | android-tv     | x86         |

+ #### Wear OS System Images

  Android API Version  | Target Version | CPU Version |
  -------------------  | -------------- | ----------- |
  Android 23           | android-wear   | x86         |
  Android 23           | android-wear   | armeabi-v7a |
  Android 25           | android-wear   | x86         |
  Android 25           | android-wear   | armeabi-v7a |
  Android 26           | android-wear   | x86         |
  Android 28           | android-wear   | x86         |

+ #### Google Playstore System Images

  Android API Version  | Target Version | CPU Version |
  -------------------  | -------------- | ----------- |
  Android 24           | google_apis_playstore  | x86     |
  Android 25           | google_apis_playstore  | x86     |
  Android 26           | google_apis_playstore  | x86     |
  Android 27           | google_apis_playstore  | x86     |
  Android 28           | google_apis_playstore  | x86     |
  Android 28           | google_apis_playstore  | x86_64  |
  Android 29           | google_apis_playstore  | x86     |
  Android 29           | google_apis_playstore  | x86_64  |
  Android 30           | google_apis_playstore  | x86     |
  Android 30           | google_apis_playstore  | x86_64  |


### Skin Device List:

+ #### Default Phone Device

   Name                   |  Ram    |  CPU Cores | Internal Storage |
  ----------------------- | ------- | ---------- |  --------------- |
  2.7_QVGA                | 1024 MB | 1 Core     | 2048 MB          |
  2.7_QVGA_slider         | 1024 MB | 1 Core     | 2048 MB          |
  3.2_QVGA_ADP2           | 1024 Mb | 1 Core     | 2048 MB          |
  3.3_WQVGA               | 1024 Mb | 1 Core     | 2048 MB          |
  3.4_WQVGA               | 1024 Mb | 1 Core     | 2048 MB          |
  3.7_FWVGA_slider        | 1024 Mb | 1 Core     | 2048 MB          |
  3.7_WVGA_Nexus_One      | 1024 Mb | 1 Core     | 2048 MB          |
  4.7_WXGA                | 1024 Mb | 1 Core     | 2048 MB          |
  4.65_720p_Galaxy_Nexus  | 1024 Mb | 1 Core     | 2048 MB          |
  4_WVGA_Nexus_S          | 1024 Mb | 1 Core     | 2048 MB          |
  5.1_WVGA                | 1024 Mb | 1 Core     | 2048 MB          |
  5.1_WVGA_API            | 1024 Mb | 1 Core     | 2048 MB          |
  5.4_FWVGA               | 1024 Mb | 1 Core     | 2048 MB          |
  7.3_Foldable            | 2048 MB | 1 Core     | 4096 MB          |
  8_Foldable              | 2048 MB | 1 Core     | 4096 MB          |
  Galaxy_Nexus            | 1024 MB | 1 Core     | 2048 MB          |
  Nexus_4                 | 2048 MB | 1 Core     | 4096 MB          |
  Nexus_5                 | 2048 MB | 1 Core     | 4096 MB          |
  Nexus_5X                | 2048 MB | 1 Core     | 4096 MB          |
  Nexus_6                 | 2048 MB | 1 Core     | 4096 MB          |
  Nexus_6P                | 2048 MB | 1 Core     | 4096 MB          |
  Nexus_One               | 1024 MB | 1 Core     | 2048 MB          |
  Nexus_S                 | 1024 MB | 1 Core     | 2048 MB          |
  Pixel                   | 2048 MB | 1 Core     | 4096 MB          |
  Pixel_2                 | 2048 MB | 1 Core     | 4096 MB          |
  Pixel_2_XL              | 2048 MB | 1 Core     | 4096 MB          |
  Pixel_3                 | 2048 MB | 1 Core     | 4096 MB          |
  Pixel_3_XL              | 2048 MB | 1 Core     | 4096 MB          |
  Pixel_3a                | 2048 MB | 1 Core     | 4096 MB          |
  Pixel_3a_XL             | 2048 MB | 1 Core     | 4096 MB          |
  Pixel_XL                | 2048 MB | 1 Core     | 4096 MB          |

  + #### Default Tablet Device

   Name                   |  Ram    |  CPU Cores | Internal Storage |
  ----------------------- | ------- | ---------- |  --------------- |
  7_WSVGA_Tablet          | 1024 MB | 1 Core     | 2048 MB          |
  10.1_WXGA_Tablet        | 1024 MB | 1 Core     | 2048 MB          |
  Nexus_7                 | 2048 Mb | 1 Core     | 4096 MB          |
  Nexus_7_2012            | 1024 Mb | 1 Core     | 2048 MB          |
  Nexus_9                 | 2048 Mb | 1 Core     | 4096 MB          |
  Nexus_10                | 2048 Mb | 1 Core     | 4096 MB          |
  Pixel_C                 | 2048 Mb | 1 Core     | 4096 MB          |

    + #### Default TV Device

   Name                   |  Ram    |  CPU Cores | Internal Storage |
  ----------------------- | ------- | ---------- |  --------------- |
  Android_Wear_Round      | 1024 MB | 1 Core     | 2048 MB          |
  Android_Wear_Round_Chin | 1024 MB | 1 Core     | 2048 MB          |
  Android_Wear_Square     | 1024 MB | 1 Core     | 2048 MB          |


### Video Tutorial:
+ [Tutorial](https://bit.ly/2G5KUYR)

### Buy A Cup Of Coffee
+ [Traktir Segelas Kopi](https://bit.ly/37KsgkB)

### Author:

+ [Restu Wahyu Saputra](https://github.com/restuwahyu13)

### LICENSE:
+ [MIT](https://github.com/restuwahyu13/bangjago-emulator/blob/main/LICENSE.MD)