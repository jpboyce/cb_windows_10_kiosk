cb_windows_10_kiosk Cookbook
============================

This cookbook configures a Windows 10 system to act as a secure Kiosk device.  Key features include:

* Secure configuration via CIS Benchmark settings and other settings
* Creation of a kiosk account
* Leveraging of Windows 10 features to create a Kiosk style experience for the kiosk account while leaving the traditional experience for administrators

Background
----------
This is my first Chef cookbook and it is meant as a learning exercise.

In late 2017, I was working on a project that required 2 secure kiosk style devices to be setup very quickly.  The result was two Windows 10 Enterprise Edition PCs with Kiosk mode on and other settings.  This work was performed by hand to "just get it done".
Eventually someone did ask "What happens if one of the kiosks breaks?  How do we rebuild it?".  While there was a design document, it wasn't in a format appropriate for rebuilding the system.  Since I was going to have to learn Chef in the team I was moving to, I figured "kill two birds with one stone..."

Requirements
------------

### Platform:

* Windows 10 (preferably 1607 as the CIS 1607-specific benchmark settings are used)

### Cookbooks:

* windows (~> 4.0)
* windows-security-policy
* windows_firewall (~> 3.0)

License and Author
------------------
Author:: Jesse Boyce (<jesse@jpboyce.org>)

Copyright:: 2018, Jesse Boyce

License:: MIT
