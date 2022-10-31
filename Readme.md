# How to run the lab test?
requirements:

- Terraform
- Account on digitalocean

# Run:
    terraform init
    terraform apply

get the ip of the machine created
If the ip is 1.1.1.2 for example

# Run:
    ssh root@1.1.1.2
    wget  https://raw.githubusercontent.com/Puppim/labLinuxAdm/main/createusergroup.sh
    chmod +x createusergroup.sh
    ./createusergroup.sh

so, to install a web server

# Run:
    wget https://github.com/Puppim/labLinuxAdm/blob/main/script-iac2.sh
    chmod +x script-iac2.sh
    ./script-iac2.sh

<h6> by Diogo Puppim de Oliveira </h6>