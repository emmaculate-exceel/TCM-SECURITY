# Section 7

# Treats and attacks

---
## What is a Threat Actor (TA) - why do we care

   - Threat Actor (TA) is an individual, group or organization that conducts malicous cyber activity.
   - Identifying and categorizing threat actors can be crucial role for defense planning and assessment.
   - Different type of threat actors or groups have different motivations, targets and TTPs.


## TTP=Tactics, Techniques and procedures

   - This is the what, why, and how of threat actors actions
   - Tactics=high level goal of what they're trying to achieve, example initial access
   - Technique: The general how they achieve the above goal, example phishing
   - Procedure: The specific implementation of the technique, this includes specific tools, commands, scripts, malware and exploits . example a specific phishing toolkit.
   - TTPs Map well into the MITRE ATT&CK framework.


## Cybercriminals

   - Financially motivated - ransomware, credit-card fraud, extortion, sale of data
   - Frequently work in groups with varying levels of sophistication.
   - The most common type of threat actor that the majority of organizations will need to defend against.
   - Common TTPs include phishing, buying access, leaked credentials, exploiting public facing applications, powershell scripts and publicly available tools.

## Hacktivists

   - Ideologically or politcally motivated
   - Can work in groups of similar like minded individuals or alone
   - Sophistication can vary , some Hacktivist group have pulled off high level attacks
   - Common TTPs include defacing of websites, destructions of data, leaking of confidential materials, denial of service (DOS, DDOS)

### Script Kiddies

	- Individuals or groups who use readily available tools and or exploits

	- Usually motivated by thril seeking, peer recognition, curiosity.

	- Opportunistic targets, such as targets picked up by scanners

	- Initially regarded as "low-skill", however this is not always the case and are frequently a very dangerous threat actor.

	- Common TTPs include publicly available tools and exploits like nmap, metasploit, LOIC (low orbit ion cannon), POCs of exploits.

### Insider Threats

	- Individuals inside of an organization who either aid in or perform cybercrime.
	- Split into 2 types, malicious who are deliberate in there actions, and negligent who are well-intentioned buut careless
	- Motivations for malicious insiders include financial, revenge and ideological
	- Common TTPs include selling of credentials, executing malware, exfiltrating files or data

### Nation State Actors / APT (Advance persistent Threat) 

	- Goverment sponsored or operated groups
	- Commonly reerred to as advanced persistent threats
	- they possess substantial resources, highly trained and skilled personnel, and the resources to conduct long engagements.
	- Motivation is usually espionage , intelligence gathering, strategic sabotage, properganda and cyber warfare.
	- In some cases such as North korea nation sponsored groups are financially motivated
	- TTPs associated with APTs include custom malware and exploits, zero day exploits, compromising supply chains , sophisticated phishing campaigns.

### Threat Actor Groups

	- Threat actors frequently work in groups
	- These groups can have their own unque TTPs
	- Examples of cybercrime groups include:Conti,Lockbit, REvil, BlackCat
	- Examples of hacktivist groups include: Anonymous and Lulzec
	- Examples of Nation State Groups include: APT28(Fancy Bear) - Russian, APT38 (Lazarus) - North Korea, AP10 (Stone Panda) - China
	
---


# Network Reconnaissance, Scanning and Enumeration

## What is network based attacks

   - Attacks that targets the communication on a network between systems, rather than the systems themselves
   - Exploits traffic flows, proctocols or services that run on the network
   - Large blast radius - one successful network attack can impact multiple systems and users even devices.
   - impact on CIA:
   	 		- C : eavesdropping on sensitive data
			- I : tampering with data in transit , data impersonation
			- A : Flooding networks to knock them offline (DDOS)
			

  - Frequently cyber attacks on a network will begin with recon, scanning and enumeration of the network itself
  - This can be both form the exterior and interior of a network
  - there are 2 types of recon, active and passive
  - Passive network recon entails not interacting with devices and only observing network traffic
  - Active network recon includes techniques like port scanning, service identification and vulnerability scanning
  - A common tool for this is nmap
  
## Common Network-Based Attacks
   - Eavesdropping and Sniffing: Captureing traffic on the network and attempting to read its content
   - Spoofing: flasifying data such as ARP or DNS records to imporsonate a trusted system or component
   - Man-in-the-middle (MITM): intercpeting traffic between 2 or more endpoints and reading or altering it.
   - Denial of Service: Flooding a network or endpoint with requests to take it offline.


## Common Network-Based Defenses

   - Network monitoring tools such as IDS/IPS
   - Filtering tools such as firewalls
   - Encryption of data in transit such as using TLS/SSL
   - Segmentations of network traffics through the use of subnets and VLANs
   - Rate limiting services such as cloudflare or other anti-ddos services or tools .


### Wireless Attacks

	- More and more devices are using wireless proctocols
	- These includes :
	  		- Wifi (802.11x)
			- Cellular (4g, LTE, 5g etc)
			- Bluetooth
			- LoRa
			- NFC
	- Wireless attacks and defense shares overlaps with network-based attacks(eg, packet sniffing)
	- The properties of wireless network present new attacks vetors and methods


### Wifi Proctocol

	- There are 3 common proctocol for WiFi's
	  		- WEP
			- WPA/WPA2 PSK
			- WPA/WPA2 Enterprise
	- WEP is deprecated a nd should never be used, it is easily crackable
	- WPA/WPA2 is the most common
	- It can use 2 authentication methods
	  	 - PSK 	= Pre-Shared Key -> one password to access network
		 - Enterprise = per-user credentials, uses and additional server for authentication
	- WPA3 is the most recent update proctocol
	  	   - Security improvement over WPA2
		   - Not widely adapted yet .

### Wifi Attacks

   - Packet sniffing: similar to network based attacks
   - Deauth/Dissassociation attacks network is flood with deauth packets causing devices to disconnects and re-authenticate
   - Key recovery and cracking attacks: hand-shakes can be cpatured and cracked ofline, WEP can be bruteforced, a common tool for this is AirCrack-ng
   - Rouge access points/Evil-Twin APs: attempts to trick users into connecting to attackers controlled networks
   - Wireless MITM attacks
   - Attacks on RM frequencies such as jamming .


## WiFi Defenses and Mitigations

   - Enforcing and using secure proctocols (WPA/WPA2)
   - Using string passphrase if using PSKs
   - Use of network defense tools such as Firewall, IDS/IPS
   - Network segmentations and use of guest wireless networks
   - Using encrypted proctocols (https) 