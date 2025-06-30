FROM ubuntu:22.04

# Set hostname to "hycroe"
RUN echo "hycroe" > /etc/hostname

# Optional: Set PS1 to reflect "root@hycroe"
RUN echo 'export PS1="root@hycroe:\w\$ "' >> /root/.bashrc

# Install needed packages
RUN apt update && apt install -y tmate openssh-client curl

# Copy and set permissions
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
