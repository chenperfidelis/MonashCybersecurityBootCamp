# Network Forensic Analysis Report

## Time Thieves 
You must inspect your traffic capture to answer the following questions:

1. What is the domain name of the users' custom site?
    - frank-n-ted.com <br>
    ![franknted](Images/frank-n-ted.png)
2. What is the IP address of the Domain Controller (DC) of the AD network?
    - 10.6.12.12
3. What is the name of the malware downloaded to the 10.6.12.203 machine?
    - june11.dll <br>
    ![june11.dll file](Images/june11.png)
4. Upload the file to [VirusTotal.com](https://www.virustotal.com/gui/).
    - ![VirusTotal upload](Images/virustotal.png)
5. What kind of malware is this classified as?
    - Trojan
    
---

## Vulnerable Windows Machine

1. Find the following information about the infected Windows machine:
    - Host name ROTTERDAM-PC
    - IP address 172.16.4.205
    - MAC address 00:59:07:b0:63:a4 <br>
    ![IP and MAC](Images/IPMAC.png)
2. What is the username of the Windows user whose computer is infected?
    - matthijs.devries <br>
    ![username](Images/matthijs.devries.png)
3. What are the IP addresses used in the actual infection traffic?
    - 31.7.62.214 <br>
    ![infected traffic](Images/infectedtraffic.png)
4. As a bonus, retrieve the desktop background of the Windows host.
    - ![desktop background](Images/desktop.png)

---

## Illegal Downloads

1. Find the following information about the machine with IP address `10.0.0.201`:
    - MAC address: 00:16:17:18:66:c8
    - Windows username: blanco-desktop
    - OS version: Windows x64 <br>
    ![username and MAC address](Images/username-blanco-desktop.png) <br>
    ![user agent](Images/useragent.png)

2. Which torrent file did the user download?
    - Betty_Boop_Rhythm_on_the_Reservation.avi.torrent <br>
    ![torrent file](Images/torrent_file.png)