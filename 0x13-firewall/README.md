# To achieve the specified requirements, we can follow these steps to install UFW (Uncomplicated Firewall) on our web-01 server and configure it to allow only specific incoming TCP ports. 

# The steps assume you have sudo privileges.

# Install UFW:
Copy code
sudo apt-get update
sudo apt-get install ufw
Configure UFW:

#Set the default incoming policy to deny:
Copy code
sudo ufw default deny incoming
Allow Specific Ports:

#Allow SSH (port 22):
Copy code
sudo ufw allow 22
Allow HTTPS (port 443):

Copy code
sudo ufw allow 443
Allow HTTP (port 80):

Copy code
sudo ufw allow 80
Enable UFW:

Copy code
sudo ufw enable
Check the Status:

Copy code
sudo ufw status
This should display the list of allowed ports.

# Our UFW firewall on web-01 is now configured to block all incoming traffic except for SSH (22), HTTPS (443), and HTTP (80). Remember to repeat these steps on each server where you want to apply the firewall rules.

# If we need to apply these rules on lb-01 and web-02, we simply SSH into those servers and repeat the same steps. The rules won't be checked on those servers, but the configuration process is the same.
