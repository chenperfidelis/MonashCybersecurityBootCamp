# Week 2 Homework: Assessing Security Culture
## Step 1 – Measure and Set Goals

### 1. Potential security risks of allowing employees to access work information on their personal devices:
1. Data Breach
   - Copying and pasting sensitive information from work accounts/applications to their personal applications on their phone. This data may then be synced to cloud services to a compromised account, e.g., Google Keep, Apple Notes or Evernote.
   - Man-in-the-middle attacks – sensitive data (if not encrypted) can be intercepted by MITM attacks if personal devices are connected on public Wi-Fi networks.
   - Upon leaving the organisation, sensitive company data may still be present on the former employee’s devices which could potentially be leaked.
2. Malware infected device
   - Malware may originate from an employee's personal email, infect the employee’s device, and then spread through company email and/or slack to other employees.
   - Employee’s devices may also be infected by devices that are connected to their own home network, such as IoT devices, including smart watches, fridges, assistants, lights, etc.  
   - Other potential sources include compromised games or apps which are installed and have access privilege to areas of the device shared with work applications. 
3. Data Loss or Data Theft
   - If an employee’s device is stolen or lost, this results in a loss of company data if it is downloaded onto the device and not backed up. This could also result in a data breach if the device data is not wiped remotely and the information is accessed by the thief.
4. Access of company network
   - If the device is stolen, the threat actor may be able to gain access to an organization's internal network using the saved credentials on the phone. Either via physically connecting to the organisation's wireless network or remotely.
5. Device software not up to date
   - Employees may not be aware that their own devices do not have the latest security patches installed or defer the update due to convenience of not needing to restart the device to install. 
   - This could give attackers access to vulnerabilities if the updates are not installed.


### 2. Preferred Employee Behaviours
- The preferred employee behaviour would be to use a separate device for work and personal use. However due to business goals, such as increasing productivity, employees may use their personal devices for work purposes. If employees are using their own personal devices for work, they should ensure that their mobile devices are setup with a secure lock screen access, whether it be via a secure PIN number (not the default 1234 or 0000), password or biometrics, to protect sensitive data on the device and set up the device for remote wipe if the mobile phone has been lost or stolen. The employees should also ensure that their mobile phones are running the latest security patches provided by their operating systems to fix all known vulnerabilities. Employees should also install only necessary apps to reduce the chance of installing malicious apps from the app store and use only company approved email clients to access work emails. 


### 3. Methods used to measure employees who are currently not behaving according to the preferred behaviours.
Surveys will be conducted to confirm that employee devices are set up correctly. Survey questions include: 
   - I do/do not use my own personal device for work.
      
      If yes:
		- Operating System and version of the device.
		- Lock screen active with PIN/Pattern/Password/Biometrics (using complex PIN, Pattern or Password)
		- Version of the security patch installed.
		- Remote Wipe enabled for the device.
		- Using company approved email applications.
		- No non-approved apps installed on the device.


### 4. 
   The goal regarding this behaviour is to have the company reach 100% on the surveys or reduce the number of employees using their own personal device for work-related activities. This would ensure that all employees are invested in the company’s security and behaving securely. By aiming to reach 100% on the survey, we are ensuring that the personal devices which are being used for work purposes are secure therefore protecting the organisation from data breaches, and by aiming to reduce the number of employees who are using their own personal devices for work purposes by at least 5%, we reduce the potential number of points of failure.


## Step 2 – Involve the Right People
The 5 employees or departments that need to be involved are:

   1. Chief Executive Officer (CEO)
         - In order for the training to proceed, the training must be discussed with the CEO to ensure they are aware of the importance of the training and the risk to the company’s information if a breach occurs as a result of not conducting the training. The CEO may also be required to explain the training to the board of directors.
   2. Chief Financial Officer (CFO)
         - As the training sessions require training materials to be produced for the employee and be conducted during paid business hours, the finances must be approved by the CFO before they can begin. There may also be other costs involved, such as registering for electronic survey providers (e.g., Survey Monkey) to simplify the process if finances permit.
   3. Chief Information Officer (CIO)
         - The CIO must also be involved as they will be required to ensure that the correct software with sufficient security is being used by the company and that they are compatible with employees’ devices without risk to the security of the organisation. If the goal has not been met, additional software may be required to manage employee devices to ensure update patches are applied. 
   4. Chief Information Security Officer (CISO)
         - As the CISO manages the risk of the organisation’s data, they will need to be involved as the goal is to reduce the risk to sensitive company data. The CISO and their team will be required to develop a plan to protect the organisation's data while the goal is being met and in case of a breach.
   5. Department in-charge of internal training (SCF team) and Company Communications
         - The internal training team will need to be involved to create a training plan and produce the materials required for the organisation’s employees. They will also need to conduct the training sessions. The company communications will need to be involved to arrange and send the training schedules company wide. 


## Step 3 – Training Plan
The training of the employees will be conducted in groups with 25% of the company every quarter to ensure that the day-to-day operation of the company is not impacted by all the employees being in the training session all at once. 
The training will be conducted yearly for existing employees and at the induction days for new employees. This will ensure that new employees have their devices checked and understand the risks from day 1 of employment and that the existing employees are able to check their devices if they have upgraded their devices since the last training session was run. A survey will be sent to the employees of that group to be completed before the training session to collect the data prior to the training. A follow up survey will then be sent 6 months following the training to measure the change.
Depending on the work setup at the time of training, for example, working from home setup, the training sessions will be conducted in a meeting room to allow for slideshow presentations of statistics. For working from home setups, the sessions will be conducted over Zoom Meeting with the link sent out via email to the employees by the internal communications department. 

The topics to be covered are:
   1. Effects of Data Breaches on an organisation
	   1. Covering the effects of a data breach and cost to an organisation to demonstrate the importance of the training.
	   2. Also explaining how attackers can target employees via phishing emails and email attachments.
   2. Opening of email attachments
		1. To highlight consequences of opening email attachments from unknown sources and how to distinguish emails from known and unknown sources.
		2. Demonstrate how these could result in malwares affecting their own devices as well as spreading through the organisation.
   3. Device security
		1. Covering how to check and ensure employee devices are up to date with the latest security patches.
		2. How to set up a screen lock with PIN/Pattern/Password/Biometrics.
		3. Demonstrate the importance if a device is stolen or lost.
		4. Setting up remote wipe to ensure personal and business information cannot be accessed by thieves.

After running the training session, the same survey which was complete prior to the training will be sent after 6 months. By comparing the data before training and after 6 months, we will be able to assess the effectiveness of the training session, with our goal of the survey being 100% or a 5% reduction in the number of employees using their personal mobile phones for work related activities.

## Other Solutions
   1. Enable the ability to Wipe Device remotely by the organisation
      - Control Type – Technical
      - Corrective control – allows protection of data in the even the phone is lost
      - Advantage – Sensitive company data is safe in the event that the device has been stolen
      - Disadvantage – Employees may feel they do not have control of their own device.
   2. Policy to update password every quarter
      - Control Type – Technical (with account lockout)
      - Preventative control – prevents access by non-authorised personnel
      - Advantage – If the password for the device is obtained by an attacker, the access will expire in 3 months
      - Disadvantage – Employees may opt for easier/less secure passwords if they are required to remember new passwords every 3 months.
   3. Enable 2 factor authentication to access organisation information
      - Control Type – Technical
      - Preventative control – prevents unauthorised access to data
      - Advantage – Ensures stolen devices cannot access data without the second factor
      - Disadvantage – Another device that could be lost by the employee.
   4. Inspection of new devices by the organisations security team
      - Control Type – Administrative
      - Preventative control – Stops employees from using devices with vulnerabilities
      - Advantages – New devices are correctly set up to meet company policy
      - Disadvantages – Time consuming if it is a large company and employees update their devices every 1-2 years.
   5. Blacklisting access to company data from access by external IP addresses
      - Control Type – Technical
      - Preventative control – blocks access by unauthorised devices
      - Advantages – Employees will need to be at the office to access data
      - Disadvantages – Employees will not be able to work remotely.
   6. Monitor IP addresses connecting to the organisations data
      - Control Type – Technical
      - Detective control – identifies employees that connect to the database
      - Advantage – ability to detect simultaneous connections from two location with one employees account
      - Disadvantage – Employee privacy, able to track employee locations based on their IP address.