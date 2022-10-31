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
    wget https://raw.githubusercontent.com/Puppim/labLinuxAdm/main/createusergroup.sh
    chmod +x createusergroup.sh
    ./createusergroup.sh


<h6> by Diogo Puppim de Oliveira </h6>