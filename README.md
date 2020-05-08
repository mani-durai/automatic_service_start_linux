# automatic_service_start_linux
Hello Everyone,

automatic_service_start_linux/service_start.sh

We use this shell script to check if the httpd service is running or not, If httpd process is not running we use the ps command to grep the process ID and if there is no process ID found for httpd process, the script will automatically start the httpd service and give the output as service started successfully.
