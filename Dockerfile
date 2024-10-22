# Use the official Ubuntu image as the base
FROM ubuntu:latest

# Update the package lists
RUN apt-get update

# Install Apache2
RUN apt-get install -y apache2

# Add your website files to the Apache default directory
ADD . /var/www/html/

# Expose port 80 to the outside world
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
