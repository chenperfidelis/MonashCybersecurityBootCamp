# Security 101 Homework: Security Reporting
## Part 1 - Symantec
---
For Part 1 of your homework assignment, you should primarily use the Symantec Internet Security Threat Report along with independent research to answer the following questions.

---

1. What is formjacking?
- Formjacking involves the use of malicious JavaScript code, injected in the payment forms of e-commerce checkout pages, in order to steal information such as credit card details. The stolen information can then be used for payment fraud or be sold on the dark web.

2. How many websites are compromised each month with formjacking code? 
- In 2018, Symantec data shows that, on average, 4,818 websites are compromised each month with formjacking code.

3. What is Powershell?
- Powershell is a command-line shell which can be used for task automation and configuration management. 

4. What was the annual percentage increase in malicious Powershell scripts?
- There was an annual increase of 1000% in malicious powershell scripts in 2018.

5. What is a coinminer?
- A coinminer is a malware used in Cryptojacking attacks to utilise the victim’s central processing unit (CPU) power with their knowledge to mine cryptocurrencies. 

6. How much can data from a single credit card be sold for? 
- The data from a single credit card can be sold for up to USD$45 on underground markets with full details and up to USD$20 without. However a dump of the magnetic strip track by skimming can yield up to USD$60

7. How did Magecart successfully attack Ticketmaster? 
- Magecart was able to successfully attack Ticketmaster by breaking into Inbenta, a software company who build and provide code to website developers, and altering code they provided. The altered code was then unknowingly used by Ticketmaster in their website and allowing their customers payment details to be compromised.

8. What is one reason why there has been a growth of formjacking? 
- The growth in formjacking is partially due to the drop in value of cryptocurrencies. Cyber criminals who previously used websites for cryptojacking are now opting for formjacking due to the stability of the value of stolen credit card details in the underground markets.

9. Cryptojacking dropped by what percentage between January and December 2018?
- Cryptojacking events had dropped by 52% between January and December 2018

10. If a web page contains a coinmining script, what happens? 
- When a web page contains a coinmining script, the coin mining takes place in the web browser itself when the page is visited. It utilises the target's computing power for as long as the web page is open. This setup allows the attacker to mine undetected by their victim on fully patched devices.

11. How does an exploit kit work? 
- An exploit kit is an automated all-in-one toolkit used by cybercriminals to exploit vulnerabilities on a victim's computer. They work by scanning for several different software vulnerabilities then deploying additional malware to infect the device further.

12. What does the criminal group SamSam specialize in? 
- The SamSam group specializes in targeted ransomware, focussing mainly on organizations in the United States.

13. How many SamSam attacks did Symantec find evidence of in 2018? 
- In 2018 Symantec found evidence of 67 attacks by the criminal group SamSam, 56 of those were organizations in the United States.

14. Even though ransomware attacks declined in 2017-2018, what was one dramatic change that occurred? 
- Although there was a decline in ransomware attacks in 2017-2018, there was an increase in ransomware attacks in enterprise settings by 12 percent. This change is likely due to the decrease in use of exploit kits and increase in the use of email to distribute ransomware. As email is the primary tool of communication in organizations, this had a great impact on enterprise infections.

15. In 2018, what was the primary ransomware distribution method? 
- The main ransomware distribution method in 2018 via email campaigns.

16. What operating systems do most types of ransomware attacks still target?
- Most ransomware attacks still target the Windows operating system.

17. What are “living off the land” attacks? What is the advantage to hackers? 
- “Living off the land” attacks involve using readily available tools or built-in operating system features to perform the attack. Being a built in tool, hackers do not need to install any commercial tools on the target system and also some antivirus programs may not block the execution of operating system features.

18. What is an example of a tool that’s used in “living off the land” attacks?
- A tool that is used in a “living off the land attack” is PowerShell by running malicious scripts.

19. What are zero-day exploits?
- Zero-day exploits exploit vulnerabilities which have not yet been discovered or published and take advantage of these before they are patched.

20. By what percentage did zero-day exploits decline in 2018? 
- There was a 4 percent decrease in zero-day exploits in 2018 from 27 percent in 2017 to 23 percent in 2018.

21. What are two techniques that worms such as Emotet and Qakbot use?
- The techniques used by worms such as Emotet and Qakbot are: dumping passwords from memory or brute-forcing access to network shares in order to move through a network.

22. What are supply chain attacks? By how much did they increase in 2018?
- Supply chain attacks target software developers and suppliers. By accessing unprotected servers or unsecure network protocols, they are able to gain access to source codes or update mechanisms and hide malware in a legitimate app. As these apps are signed off and released by trusted vendors and are marked as safe to run, therefore the malicious code in the infected apps are able to run with the same permissions as the apps themselves. Supply chain attacks increased by 78 percent in 2018.

23. What challenge do supply chain attacks and living off the land attacks highlight for organizations?
- As these attacks are arriving through trusted channels and are using fileless attack methods or legitimate tools, they are making it difficult to identify. In order to effectively identify these attacks, advanced detection methods, such as machine learning, are required.

24. The 20 most active groups tracked by Symantec targeted an average of how many organizations between 2016 and 2018? 
- The 20 most active groups tracked by Symantec targeted an average of 55 organisations between the years of 2016 and 2018.

25. How many individuals or organizations were indicted for cyber criminal activities in 2018? What are some of the countries that these entities were from? 
- 49 Individuals or organizations were indicted for cyber criminal activities in 2018. 19 of those originated from China, 18 from Russia, 11 from Iran and one from North Korea.

26. When it comes to the increased number of cloud cybersecurity attacks, what is the common theme? 
- The increased number of cloud cybersecurity attacks is due to poor configurations of cloud databases.

27. What is the implication for successful cloud exploitation that provides access to memory locations that are normally forbidden? 
- If an attacker is successful in a cloud exploitation which provides them access to memory locations, which are usually forbidden, of one cloud instance, they are also able to leak data from several other cloud instances. This is possible as cloud stances share pools of memory across several other cloud instances.

28. What are two examples of the above cloud attack? 
- Meltdown and Spectre are examples of the cloud attacks which exploit the speculative execution process to gain access to memory locations that are normally forbidden.

29. Regarding Internet of Things (IoT) attacks, what were the two most common infected devices and what percentage of IoT attacks were attributed to them? 
- The two most common infected devices are routers accounting for 75 percent of all IoT attacks then connected cameras with 15 percent. 

30. What is the Mirai worm and what does it do? 
- The Mirai worm is a distributed denial of service (DDoS) worm. It replicates itself onto vulnerable IoT devices turning them into a remotely controlled bot to be used as a part of a botnet in DDoS attacks.

31. Why was Mirai the third most common IoT threat in 2018? 
- The Mirai worm is the third most common IoT threat in 2018 because it is constantly evolving with variants using up to 16 different exploits. It is also consistently adding new exploits in order to increase its success rate as IoT devices often remain unpatched. 

32. What was unique about VPNFilter with regards to IoT threats?
- VPNFilter is unique in that it is able to survive a reboot, therefore making it very difficult to remove. It is the first widespread persistent IoT threat and also features a destructive “brick” capability which can wipe the device at the command of the attacker.

33. What type of attack targeted the Democratic National Committee in 2019? 
- The Democratic National Committee was targeted by a spear-phishing attack. The spear-phishing attack involved sending emails which appear to be from the U.S Department of State containing links to zip files with malicious shortcuts to deliver the Cobalt Strike beacon, which uses HTTP, HTTPS or DNS requests to beacon back to the attacker.

34. What were 48% of  malicious email attachments in 2018? 
- 48 percent of malicious email attachments in 2018 were office files. 

35. What were the top two malicious email themes in 2018? 
- The top two malicious email themes of 2018 were “Bill” and “Email delivery failure”

36. What was the top malicious email attachment type in 2018? 
- The top malicious email attachment type in 2018 was ‘Word 97-2003 Document\Template’ - .doc\.dot

37. Which country had the highest email phishing rate? Which country had the lowest email phishing rate?
- Saudi Arabia had the highest email phishing rate with 1 in 675.
Poland had the lowest email phishing rate at 1 in 9653.

38. What is Emotet and how much did it jump in 2018? 
- Emotet is a self-propagating trojan which spreads through spam emails. It was known to be used to spread other malwares such as W32.Qakbot. In 2018, Emotet jumped up to 16 percent from 4percent the previous year.

39. What was the top malware threat of the year? How many of those attacks were blocked?
- The top malware threat of 2018 was Heur.AdvML.C.
43,999,373 (52.1%) of the Heur.AdvML.C attacks were blocked.

40. Malware primarily attacks which type of operating system? 
- Malwares primarily attacks the Windows Operating System.

41. What was the top coinminer of 2018 and how many of those attacks were blocked? 
- The top coinminer of 2018 was JS.Webcoinminer.
- 2,768,721 (49.7%) of these attacks were blocked.

42. What were the top three financial Trojans of 2018? 
- The top three financial Trojans of 2018 were:
    - Ramnit
    - Zbot
    - Emotet

43. What was the most common avenue of attack in 2018? 
The most common avenue of attack in 2018 was spear-phishing emails, being used by 65 percent of all known groups.

44. What is destructive malware? By what percent did these attacks increase in 2018? 
- Destructive malware is a malicious software which is capable of causing a system to become inoperable through the deletion of files which are critical to the operating systems ability to run correctly. The percentage of attack groups known to use  these attacks increased by 25% in 2018. 

45. What was the top user name used in IoT attacks? 
- The top user name used in IoT attacks was ‘root’ at 38.1 percent.

46. What was the top password used in IoT attacks? 
- The top password used in IoT attacks was ‘123456’ at 24.6 percent.

47. What were the top three protocols used in IoT attacks? What were the top two ports used in IoT attacks? 
- The top three protocols used in IoT attacks were:
    - Telnet (90.9%)
    - HTTP (6.6%)
    - HTTPS (1.0%)

- The top two ports used in IoT attacks were:
    - 23 - Telnet (85%)
    - 80 - World Wide Web HTTP (6.5%)

48. In the underground economy, how much can someone get for the following? 
- Stolen or fake identity:
    - From $0.10 to $1.50
- Stolen medical records:
    - From $0.10 to $35.00
- Hacker for hire:
    - From $100
- Single credit card with full details:
    - From $1 and $45
- 500 social media followers:
    - From $2 to $6
