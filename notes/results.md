# Results

Script output example:

```bash
shaneholloman@kora:~$ sudo bash ~/synarr-installer.sh
Password:

.d8888b  888  888 88888b.   8888b.  888d888 888d888
88K      888  888 888 "88b     "88b 888"    888"
"Y8888b. 888  888 888  888 .d888888 888     888
     X88 Y88b 888 888  888 888  888 888     888
 88888P'  "Y88888 888  888 "Y88888" 888     888
              888
         Y8b d88P
          "Y88P"

DISCLAIMER: Use this script at your own risk.

This script is provided as-is without any warranty or guarantee of any kind. The author behind the script shall not be held liable for any damages or losses arising from its use.

Please note that the script may perform certain actions that can modify your system or data. It is recommended to review the script and understand its functionality before executing it.

By proceeding with the execution of this script, you acknowledge that you have read this disclaimer and agree to take full responsibility for any consequences that may arise from using the script.

If you are unsure about the script or its implications, it is recommended to seek assistance from a qualified professional before proceeding.

Or you can follow the complete step-by-step guide at:
https://trash-guides.info/Hardlinks/How-to-setup-for/Synology

Do you want to continue? [y]es/[n]o: y



 ✔ Container Manager package is already installed

 ✔ Container Manager is running!

 ● Checking if user docker exists

 ✔ User docker exists!

 ● Checking if /data shares exist

 ✔ /volume1/data share exists!

 ● Setting user rights to shares

 ✔ User has rights to share.

 ● Bootstrapping docker-compose.yml

 ✔ docker-compose.yml bootstrapped

 ● Downloading docker .env

 ✔ Docker .env downloaded.

 ● Setting correct User ID in .env

 ✔ User ID set..

 ● Setting local IP in .env

 ✔ Local IP set.

 ● Setting local Gateway in .env

 ✔ local Gateway set.

 ● Setting timezone in .env

 ✔ Timezone set.

 ● Setting correct docker config dir in then .env

 ✔ /volume1/docker set.

 ● Setting correct docker storage dir in the .env

 ✔ /volume1/data set.

 arrow down => down
 arrow up   => up
 Space bar  => toggle selection
 Enter key  => confirm selection

 ✔ Is this correct selection? [y]es or [n]o : n

 [✔]   prowlarr
 [×]   unpackerr
 [×]   authelia
 [✔]   lidarr
 [×]   tautulli
 [×]   sabnzbd
 [×]   emby
 [×]   autobrr
 [×]   dozzle
 [✔]   radarr
 [×]   qbitmanage
 [×]   jellyfin
 [✔]   plex
 [✔]   qbittorrent
 [×]   recyclarr
 [×]   cross-seed
 [×]   bazarr
 [✔]   sonarr
 [×]   readarr
 [×]   notifiarr
 [×]   overseerr

 ✔ You have selected:

 ● prowlarr
 ● lidarr
 ● radarr
 ● plex
 ● qbittorrent
 ● sonarr

 ✔ Is this correct selection? [y]es or [n]o : y

 ● Creating docker-compose

 ✔ prowlarr template added to compose.

 ✔ lidarr template added to compose.

 ✔ radarr template added to compose.

 ✔ plex template added to compose.

 ✔ qbittorrent template added to compose.

 ✔ sonarr template added to compose.

 ✔ Intel Quick Sync found for Plex Hardware Transcoding.

 ✔ Do you want Qbittorrent installed with VPN? [y]es or [n]o : n

 × Without VPN.

 ● Doing final permissions stuff

 ✔ Permissions set.

 + Installing Pullio for auto updates

 ✔ Pullio installed, read final message when the script is done.

 + Installing the selected containers

[+] Running 34/34
 ⠿ radarr Pulled                                                                                                                                                                                                                                                        17.8s
 ⠿ plex Pulled                                                                                                                                                                                                                                                          52.0s
   ⠿ a48641193673 Pull complete                                                                                                                                                                                                                                          8.5s
   ⠿ eab16b50b51e Pull complete                                                                                                                                                                                                                                         10.2s
   ⠿ 557bc05e5494 Pull complete                                                                                                                                                                                                                                         13.8s
   ⠿ e1be2890d24f Pull complete                                                                                                                                                                                                                                         15.6s
   ⠿ 9db75668e11d Pull complete                                                                                                                                                                                                                                         17.3s
   ⠿ 6d0f9a61292e Pull complete                                                                                                                                                                                                                                         31.7s
   ⠿ f4a02f49a60b Pull complete                                                                                                                                                                                                                                         33.1s
 ⠿ sonarr Pulled                                                                                                                                                                                                                                                        49.2s
   ⠿ c926b61bad3b Already exists                                                                                                                                                                                                                                         0.0s
   ⠿ 590fa604e439 Already exists                                                                                                                                                                                                                                         0.0s
   ⠿ 27fb03aabe83 Already exists                                                                                                                                                                                                                                         0.0s
   ⠿ 74d8af5a719b Already exists                                                                                                                                                                                                                                         0.0s
   ⠿ 4c1204dcaa56 Already exists                                                                                                                                                                                                                                         0.0s
   ⠿ ee59c72627cf Pull complete                                                                                                                                                                                                                                         10.9s
   ⠿ f5f31c69a4e7 Pull complete                                                                                                                                                                                                                                         27.9s
   ⠿ 17cc7d0ad1ad Pull complete                                                                                                                                                                                                                                         29.1s
   ⠿ 29ca716595bd Pull complete                                                                                                                                                                                                                                         29.6s
 ⠿ qbittorrent Pulled                                                                                                                                                                                                                                                   45.5s
   ⠿ 9910bd8ef34b Pull complete                                                                                                                                                                                                                                         12.3s
   ⠿ 6bf495746371 Pull complete                                                                                                                                                                                                                                         14.7s
   ⠿ 8eaa4eb2dca6 Pull complete                                                                                                                                                                                                                                         19.8s
   ⠿ 9e4e2881b3c8 Pull complete                                                                                                                                                                                                                                         22.0s
   ⠿ 773fa604b0ea Pull complete                                                                                                                                                                                                                                         23.8s
   ⠿ 0142ab9ec7f3 Pull complete                                                                                                                                                                                                                                         24.9s
 ⠿ prowlarr Pulled                                                                                                                                                                                                                                                      59.9s
   ⠿ c8c0c2e06d22 Pull complete                                                                                                                                                                                                                                         24.1s
   ⠿ c8fba84834c7 Pull complete                                                                                                                                                                                                                                         36.7s
   ⠿ 3df4fca88082 Pull complete                                                                                                                                                                                                                                         38.5s
 ⠿ lidarr Pulled                                                                                                                                                                                                                                                        64.9s
   ⠿ 8c4097690b70 Pull complete                                                                                                                                                                                                                                         37.8s
   ⠿ c4ef49d64d53 Pull complete                                                                                                                                                                                                                                         42.6s
   ⠿ 08b84aec5376 Pull complete                                                                                                                                                                                                                                         43.7s
[+] Running 7/7
 ⠿ Network synarr_default  Created                                                                                                                                                                                                                                       1.0s
 ⠿ Container radarr        Started                                                                                                                                                                                                                                      31.4s
 ⠿ Container prowlarr      Started                                                                                                                                                                                                                                      27.9s
 ⠿ Container lidarr        Started                                                                                                                                                                                                                                      23.6s
 ⠿ Container sonarr        Started                                                                                                                                                                                                                                      15.1s
 ⠿ Container plex          Started                                                                                                                                                                                                                                      11.8s
 ⠿ Container qbittorrent   Started                                                                                                                                                                                                                                      18.8s

 ✔ All set, everything should be running. If you have errors, follow the complete guide. And join our discord server.


 ✔ If you want to enable automatic updates, you need to create a Scheduled Task.
   Read instructions here: https://trash-guides.info/Hardlinks/How-to-setup-for/Synology/#pullio-auto-update-docker-compose-the-correct-way

shaneholloman@kora:~$
```
