# Unit 15 Homework - Web Vulnerabilities and Hardening

---
## Web Application 1: *Your Wish is My Command Injection*
<details>
<summary> Click here to view progress screenshots. </summary>

![Part 1 - Step 2](./Images/1.2.png)

![Part 1 - Step 3](./Images/1.3.png)

</details>

### Deliverable
```bash
8.8.8.8 && cat ../../../../../etc/passwd
```
![/etc/passwd](./Images/1.4.passwd.png)

```bash
8.8.8.8 && cat ../../../../../etc/hosts
```
![/etc/hosts](./Images/1.4.hosts.png)

#### Mitigation Strategies
- Input Validation - by enforcing correct syntax in the fields (e.g. only allowing the format of IP addresses) and only passing the value if validation is successful.
- Input Sanitisation - by removing/replacing unwanted characters (e.g. removing '&' and 'cat' from the input)

---
## Web Application 2: *A Brute Force to Be Reckoned With*
<details>
<summary> Click here to view progress screenshots. </summary>

![Progress](./Images/2.1.png)

![Progress](./Images/2.2.png)

![Progress](./Images/2.3.png)

![Progress](./Images/2.4.png)

![Progress](./Images/2.5.png)

</details>

### Deliverable
![Success](./Images/2.6.successful.png)

#### Mitigation Strategies
- Account Lockout - by locking out an account after a number of failed log in attempts
- Implementing Captcha - by requiring an extra captcha to be passed before the login attempt
- Implementing multifactor authentication - by requiring an extra randomised input (e.g. yubikey, or code sent to email/SMS)

---
## Web Application 3: *Where's the BeEF?*
<details>
<summary> Click here to view progress screenshots. </summary>

![Hooked](./Images/3.3.hooked.png)

![Exploits](./Images/3.3.exploits.png)

![Google Phishing](./Images/3.4.googlephishing.png)

![Google Page](./Images/3.4.googlepage.png)

![Beef Command](./Images/3.4.command.png)

![Beef Post](./Images/3.5.post.png)

![Page Source for post](./Images/3.5.pagesource.png)

![Beef Control](./Images/3.5.postbeef.png)

</details>

### Deliverable

![Pretty Theft](./Images/3.5.prettytheft.png)

![Fake Notification Bar](./Images/3.5.fakenotificationbar.png)

![Get Geolocation (Third Party)](./Images/3.5.getgeolocation.thirdparty.png)

#### Mitigation Strategies
- Browser configuration - by implementing technical controls such as preventing browsers from running scripts and plugins by default
    - coupled with education such in workplace security awareness training to be aware of prompts to run scripts when browsing websites