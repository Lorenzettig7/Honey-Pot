Honeypot  Project

This project simulates a vulnerable server/ Honey Pot in an AWS EC2 instance.
It monitors unauthorized access attempts in realtime and visualizes attack patterns using AWS CloudWatch Dashboards.

Features
* Simulated a vulnerable Linux server with open ports (SSH, HTTP, RDP).
* Deployed and configured Amazon CloudWatch Agent to collect logs.
* Monitored unauthorized access attempts.
* Visualized intrusion patterns in a real-time CloudWatch Dashboard.

Step to create 

1- Start an Amazon Linux EC2 instance on AWS.
2- Open common ports like SSH (22), HTTP (80), HTTPS (443), RDP (3389), and FTP (21) so the server looks vulnerable.
3- Install the Amazon CloudWatch Agent to send system logs to CloudWatch.
4- Create a fake log file (like a honeypot) and point the CloudWatch Agent to it.
5- Set up a CloudWatch Dashboard to monitor and display any suspicious activity.

