<p align="center">
 <img src="https://github.com/iamtheblackunicorn/Quotly/raw/main/assets/images/banner.png"/>
</p>

# QUOTLY :eye:

*Inspiring quotes for you!* :eye:

## About :books:

I've been feeling down lately and as I was scrolling through some stupid social media app, I found a page that had some quotes. I found the quotes inspiring and they lifted my mood. I thought I'd write an app to do that because why the hell not? This is that app!

## Features :test_tube:

- Minimalist design.
- Good quotes.
- 100% open source!
- Light-weight.
- The app's icon is a work of art by me.

## Download :inbox_tray:

- ***Horus*** (v.1.0.0):
  - ***[Download for Android](https://github.com/iamtheblackunicorn/Quotly/releases/download/v.1.0.0/Quotly-v1.0.0-Horus-Release.apk) (17.4 MB)***
  - ***[Download for Mac OSX](https://github.com/iamtheblackunicorn/Quotly/releases/download/v.1.0.0/Quotly-v1.0.0-Horus-Release.app.zip) (14.8 MB)***
- ***Horus-Hotfix-1*** (v.1.1.0):
  - ***[Download for Android](https://github.com/iamtheblackunicorn/Quotly/releases/download/v.1.1.0/Quotly-v1.1.0-Horus-Hotfix-1-Release.apk) (16.3 MB)***
  - ***[Download for Mac OSX](https://github.com/iamtheblackunicorn/Quotly/releases/download/v.1.1.0/Quotly-v1.1.0-Horus-Hotfix-1-Release.app.zip) (13.7 MB)***

## Building :hammer:

Make sure that you have the following programmes installed:

- Flutter SDK
- Dart SDK
- Android Studio
- Android SDK
- Java JDK
- Xcode
- Make
- Git

After you have installed these, run this command to generate a keystore for the app.

```bash
$ keytool -genkey -v -keystore key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key
```

After having done that, move the Java keystore to `android/app` and fill in the fields for the keystore password in the file `android/app/key.properties`.

Finally, run these commands:

```bash
$ flutter pub get
$ flutter build apk
```

You have now generated a release build of *Quotly*.

## Changelog :black_nib:

### Version 1.0.0: ***Horus***

- upload to GitHub
- initial release
- speed and elegance

### Version 1.1.0: ***Horus-Hotfix-1***

- removed the easter egg
- performance tweaks

## Note :scroll:

- *Quotly :eye:* by Alexander Abraham :black_heart: a.k.a. *"The Black Unicorn" :unicorn:*
- Licensed under the MIT license.
