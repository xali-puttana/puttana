## Puttana

**Puttana** is an Android platform analysis tool that offers a range of powerful features:

- **Environment Simulation**  
  Supports google samsung asus blackshark huawei/honor zui xiaomi/redmi oppo/realme/oneplus vivo nubia  
  The number of smartphone brands in China is overwhelming, and the heavy customization brings significant pressure on compatibility  
  Google Play framework is not supported, refer to [GmsCore](https://github.com/microg/GmsCore)
  
- **Service Monitoring**  
  Supports PackageManager ServiceManager ActivityManager etc.
  
- **API Monitoring**  
  similar to Xposed

It uses Lua scripts for logical extensions, allowing you to implement various functionalities such as:

- File Redirection
- API Hooking
- And many other custom features

### Key Difference

Unlike Frida, Puttana does not require root permissions.

### Supported Android Platforms

- Android 9
- Android 10
- Android 11
- Android 12
- Android 13
- Android 14

### Acknowledgements

We would like to express our gratitude to the following projects and their contributors, whose work has inspired and guided the development of Puttana:

- [Xposed Framework](https://github.com/rovo89/XposedBridge) for its API monitoring capabilities.
- [Frida](https://frida.re/) for its approach to dynamic instrumentation.
- [apkrepack](https://github.com/nul/apkrepack) for repackaging APKs and proxy loading custom so.
- [VirtualApp](https://github.com/asLody/VirtualApp) its Virtual Engine for Android(Support 14.0 in business version).
- [DynamicAPK](https://github.com/CtripMobile/DynamicAPK) Solution to implement multi apk dynamic loading and hot fixing for Android App.
- [liblinker](https://github.com/nul/liblinker) for dynamic loading custom so.
- [fake-linker](https://github.com/sanfengAndroid/fake-linker) Modify Android linker to provide loading module and hook function.


Your contributions to the community have been invaluable.

For more details or to apply for access, please contact us at `xxali1201@gmail.com`.
