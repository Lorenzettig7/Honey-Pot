# Install Apache (fake web server)
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd

# Install CloudWatch Agent
sudo yum install -y amazon-cloudwatch-agent

# Create honeypot log file
touch /home/ec2-user/honeypot.log

# Simulate unauthorized access attempts
for i in {1..20}; do
  echo "Unauthorized SSH access attempt from 123.45.67.$i on $(date)" >> /home/ec2-user/honeypot.log
done

# Start/restart CloudWatch Agent with config
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl \
  -a start \
  -m ec2 \
  -c file:/opt/aws/amazon-cloudwatch-agent/bin/config.json
