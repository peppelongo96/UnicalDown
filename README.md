# [UnicalDown v1.7.2](https://github.com/peppelongo96/UnicalDown/archive/v1.7.2.zip) 
[![GitHub license](https://img.shields.io/github/license/peppelongo96/UnicalDown.svg)](https://github.com/peppelongo96/UnicalDown/blob/master/LICENSE) [![made-with-Node.js](https://img.shields.io/badge/Made%20with-Node.js-1f425f.svg)](https://nodejs.org/it/) [![GitHub contributors](https://img.shields.io/github/contributors/peppelongo96/UnicalDown.svg)](https://GitHub.com/peppelongo96/UnicalDown/graphs/contributors/) [![Ask Me Anything !](https://img.shields.io/badge/Ask%20me-anything-1abc9c.svg)](https://peppelongo96.github.io)

#### Save locally Microsoft Stream not-download-enabled videos uploaded by Università della Calabria

This project is a fork of https://github.com/sup3rgiu/PoliDown* that was originally based on https://github.com/snobu/destreamer project.

### Changelog
#### Initial version
 - ~Polimi~ Unical users autologin
 - *Multithreading download through aria2c
 - *Possibility to choose the video resolution
#### v1.1
 - Ehanced stuff for unstable connection
 - More accurate log console
#### v1.2
 - videoUrlsFile option added
 - Double-clickable script launcher provided (Windows only)
#### v1.3
 - Make aria2 downloading procedure more consistent and reliable
 - Code adjustments in order to a more lightweight execution
 - Added a second double-clickable script launcher to temporarily suspend PC sleeping (Windows only)
#### [v1.4](https://github.com/peppelongo96/UnicalDown/archive/v1.4.zip)
 - Provide a tracking of video URLs that took in error with download task
 - Add a macOS/Linux easy-launcher
 - README update
#### [v1.5](https://github.com/peppelongo96/UnicalDown/archive/v1.5.zip)
 - Fix readFileSync function for Unix-like systems
 - Notify natively terminated downloading process. **Do a clean installation or update dependencies by** `$ npm install` **command**. See more following [important notes](https://github.com/peppelongo96/UnicalDown#important-notes)
#### [v1.5.1](https://github.com/peppelongo96/UnicalDown/archive/v1.5.1.zip)
 - Fix syntax error
#### [v1.6](https://github.com/peppelongo96/UnicalDown/archive/v1.6.zip)
 - Prevent SnoreToast link adding in menu start programs list (Windows platform)
 - Add `-t` option to disable native system notification toast
 - Delete wrong condition in readFileToArray function
 - "Syntactic sugar"
 - README update
#### [v1.6.1](https://github.com/peppelongo96/UnicalDown/archive/v1.6.1.zip)
 - Fix npm installing error (semver warning)
#### [v1.7](https://github.com/peppelongo96/UnicalDown/archive/v1.7.zip)
 - Handle all UnhandledPromiseRejections
 - More accurate log console
#### [v1.7.1](https://github.com/peppelongo96/UnicalDown/archive/v1.7.1.zip)
 - More readable log console
#### [v1.7.2](https://github.com/peppelongo96/UnicalDown/archive/v1.7.2.zip)
 - README update: please follow [disclaimer](https://github.com/peppelongo96/UnicalDown#disclaimer) and [important notes](https://github.com/peppelongo96/UnicalDown#important-notes)
 
### Disclaimer
Hopefully this doesn't break the end user agreement for Microsoft Stream. Since we're simply saving the HLS stream to disk as if we were a browser, this does not abuse the streaming endpoints. However I take no responsibility if either Microsoft or your Office 365 admins request a chat with you in a small white room.

### Important notes
- Script does not provided yet an effective way to refresh the access token i.e. cookies. So the execution stops on valid URLs also from a certain point onwards, if script runs for one hour or so (seems such a strict max-age session cookies. Damn Microsoft.). Any suggestions (especially) about are accepted.
- Starting from [v1.5](https://github.com/peppelongo96/UnicalDown#v15), [node-notifier](https://www.npmjs.com/package/node-notifier) module is added to enable (by default) a system of native notification for terminated downloading process. For this and to avoid any not expected bug, *if you are upgrading*, you need a clean installation or to just update dependencies by `$ npm install` command.
 
## PREREQS
* [**Node.js**](https://nodejs.org/it/download/): anything above v8.0 seems to work.
* [**aria2**](https://github.com/aria2/aria2/releases): this needs to be in your `$PATH`. Choose the latest release.
* [**ffmpeg**](https://www.ffmpeg.org/download.html): a recent version (year 2019 or above), always in your `$PATH`. On Windows, a nightly build (i.e. Git version) is recommended.
* A stable connection is recommended. Video fragments acquiring is a timed procedure due to Stream m3u8 source.

## INSTALLATION INSTRUCTIONS
### Windows
Videoguide provided by original PoliDown project: http://www.youtube.com/watch?v=iZgea4t5YW4. Just intending "UnicalDown" or "unicaldown" instead of "PoliDown" or "polidown". **After finishing the installation successfully, reboot to avoid any headless chromium booting issue**.
### macOS/Linux
Installation is pretty much the same.

## EASY-LAUNCHER
Executable .sh and .bat file are provided for a simpler script usage. *Before to go*, **it's necessary to configure them**. *In general*, right-click on file and choose some Edit option.
### for Windows 
An executable .bat file is provided. After properly settled it, just double-click on to automatically open cmd and start downloading.
#### *Coffee version*
Coffee is a portable .exe from https://sourceforge.net/projects/coffee-sc/ open source project. It provides to prevent PC standby when downloading. *Coffee version* just starts and also kills Coffee task after UnicalDown procedure is finished. In case of "illegal" killing problems (e.g. cmd was prematurely closed), you can exit from Coffee by right-clicking on its properly icon in notification area.
### for macOS/Linux
An executable .sh file is provided. **It's necessary to make it runnable**: execute `chmod 777 this_launcher.sh` on terminal (obviously, you must navigate to project folder before). Next, **always run** the .sh script **using terminal**.

## Default usage
```
$ node unicaldown.js -u fiscalcode -v "https://web.microsoftstream.com/video/VIDEO-1"

$ node unicaldown.js -u fiscalcode -f urlsFile.txt
```
You can omit the password argument. UnicalDown will ask for it interactively and then save it securely in local system's keychain for the next use.

#### Show options:
```
$ node unicaldown.js -h

Options:
  --version                      Show version number                                   [boolean]
  -v, --videoUrls                List of URLs                                            [array]
  -f, --videoUrlsFile            Path to txt file containing the URLs                   [string]
  -u, --username                 Fiscal code                                 [string] [required]
  -p, --password                                                                        [string]
  -o, --outputDirectory                                             [string] [default: "videos"]
  -q, --quality                  Video Quality [0-5]                                    [number]
  -k, --noKeyring                Do not use system keyring            [boolean] [default: false]
  -t, --noToastNotification      Disable system toast notification    [boolean] [default: false]
  -h, --help                     Show help                                             [boolean]
```

#### Multiple videos download:
```
$ node unicaldown.js -u fiscalcode
    -v "https://web.microsoftstream.com/video/VIDEO-1"
                "https://web.microsoftstream.com/video/VIDEO-2"
                "https://web.microsoftstream.com/video/VIDEO-3"

$ node unicaldown.js -u fiscalcode -f path/to/video/urlsFile.txt
```
You can create a .txt file containing video URLs, **one URL for each line**. The text file can have any name, only be sure that it is followed by .txt extension. Absolute path is not necessary if the .txt file is located in the unicaldown.js directory.

#### Define default video quality [0-5] (avoid manual prompt for each video):
```
$ node unicaldown.js -u fiscalcode -v "https://web.microsoftstream.com/video/VIDEO-1" -q 4
```

#### Output directory (relative or absoulte path):
```
$ node unicaldown.js -u fiscalcode -v "https://web.microsoftstream.com/video/VIDEO-1" -o "/my/path/here"
```

#### Do not allow system to save the password:
```
$ node unicaldown.js -u fiscalcode -v "https://web.microsoftstream.com/video/VIDEO-1" -k
```
#### Disable native system toast notification on finished download process:
```
$ node unicaldown.js -u fiscalcode -v "https://web.microsoftstream.com/video/VIDEO-1" -t
```
