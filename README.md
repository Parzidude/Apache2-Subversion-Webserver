# Apache Subversion Webserver

### Description:
A simple docker image which sets up a apache2 webserver running subversion and lets you connect via HTTPS.

### Instructions:
1. Clone the repository
`git clone https://github.com/Parzidude/Apache2-Subversion-Webserver.git`

2. In the repository folder run the setup script. This will install docker and everything needed to compose the container.
`sh SetupScript.sh`

3. Finally run `docker compose up` to bring up the needed cointainers and volumes.

### Disclaimer
The Container images are still not up in the docker hub. If you see this disclaimer that means you need to build the images from the "SubversionApache2" and "Caddy" folders.