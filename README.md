# UnicalDown v1.3

#### Locally save Microsoft Stream not-download-enabled videos uploaded by Università della Calabria

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
#### v.1.4
 - Provide a tracking of video URLs that took in error with download task
 - Add a macOS/Linux easy-launcher
 - README updating 
 
## PREREQS

* [**Node.js**](https://nodejs.org/it/download/): anything above v8.0 seems to work.
* [**aria2**](https://github.com/aria2/aria2/releases): this needs to be in your `$PATH` (for example, copy aria2c.exe to C:\Windows). UnicalDown calls `aria2c` with a bunch of arguments in order to improve the download speed.
* [**ffmpeg**](https://www.ffmpeg.org/download.html): a recent version (year 2019 or above), in [`$PATH`](https://www.thewindowsclub.com/how-to-install-ffmpeg-on-windows-10). On Windows, the [nightly build](https://ffmpeg.zeranoe.com/builds/win64/static/ffmpeg-20200309-608b8a8-win64-static.zip) is recommended.
* A stable connection is recommended. Video fragments acquiring is a timed procedure due to Stream m3u8 source.

## INSTALLATION INSTRUCTIONS
### Windows
Videoguide provided by original PoliDown project: http://www.youtube.com/watch?v=iZgea4t5YW4. Just intending "UnicalDown" or "unicaldown" instead of "PoliDown" or "polidown". **After finishing the installation successfully, reboot to avoid any headless chromium booting issue**.
### Other OSs
Installation is pretty much the same.

## Easy-launcher
Executable .sh and .bat file are provided to a simpler script usage. *Before to go*, **it's necessary to configure it with personal options**. *In general*, right-click on file and choose some Edit option.
### for Windows 
An executable .bat file is provided. After properly settled it, just double-click on to automatically open cmd and start downloading.
#### *Coffee version*
Coffee is a portable .exe from https://sourceforge.net/projects/coffee-sc/ open source project. It provides to prevent PC standby when downloading. *Coffee version* just starts and also kills Coffee task after UnicalDown procedure is finished. In case of "illegal" killing problems (e.g. cmd was prematurely closed), you can exit from Coffee by right-clicking on its properly icon in notification area.
### for macOS/Linux
An executable .sh file is provided. **It's necessary to make it runnable**: execute 'chmod 777 this_launcher.sh' on terminal (obviously, you must navigate to project folder before). Next, **always run** the .sh script **using terminal**.

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
  --version              Show version number                           [boolean]
  -v, --videoUrls        List of URLs                                    [array]
  -f, --videoUrlsFile    Path to txt file containing the URLs           [string]
  -u, --username         Fiscal code                         [string] [required]
  -p, --password                                                        [string]
  -o, --outputDirectory                             [string] [default: "videos"]
  -q, --quality          Video Quality [0-5]                            [number]
  -k, --noKeyring        Do not use system keyring    [boolean] [default: false]
  -h, --help             Show help                                     [boolean]
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

#### Do not use system keyring to save the password:
```
$ node unicaldown.js -u fiscalcode -v "https://web.microsoftstream.com/video/VIDEO-1" -k
```
