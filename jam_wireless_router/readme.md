1. Export variable `wireless_adapter` (your wireless adapter).

2. Use `sudo airodump-ng ${wireless_adapter}` to get the MAC address of the router you want to jam.

3. Export variable `mac_addr` (for the router you want to jam).

4. Run `./jam_router.sh`
