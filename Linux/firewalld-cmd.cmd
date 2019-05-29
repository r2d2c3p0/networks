
Install the firewalld package: # yum install -y firewalld
Enable the firewalld to start at boot: # systemctl enable firewalld
Restart the firewalld service now: # systemctl restart firewalld

Available options with firewall-cmd command:
	# firewall-cmd --help

	Usage: firewall-cmd [OPTIONS...]

	General Options
	  -h, --help           Prints a short help text and exists
	  -V, --version        Print the version string of firewalld
	  -q, --quiet          Do not print status messages

	Status Options
	  --state                  Return and print firewalld state
	  --reload                 Reload firewall and keep state information
	  --complete-reload        Reload firewall and lose state information
	  --runtime-to-permanent   Create permanent from runtime configuration
	The firewall-cmd command offers categories of options such as General, Status, Permanent, Zone, IcmpType, Service, Adapt and Query Zones, Direct, Lockdown, Lockdown Whitelist, and Panic. Refer to the firewall-cmd man page for more information.

List all zones: # firewall-cmd --list-all-zones

To check the currently set default zone use the below command: # firewall-cmd --get-default-zone
public

To list the ports that are open on your system: # firewall-cmd --list-ports