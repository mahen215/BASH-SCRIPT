DOCKER AUTOMATION SCRIPT 
#!/bin/bash

echo "Docker Installation Script"
echo "1. Install Docker (Ubuntu)"
echo “2. Docker Operations (Pull / Dockerfile Build)"
echo “3. Exit"

read choice

case $choice in
    1)
        echo "Installing Docker on Ubuntu..."
        sudo apt update
        sudo apt install docker.io -y
        sudo systemctl start docker
        sudo systemctl enable docker
        ;;
              
    2)
        echo "Choose option:"
        echo "1. Pull Image from Docker Hub"
        echo "2. Create Dockerfile (vi) + Build Image"
        read opt

        case $opt in
            1)
                echo "Enter Docker image name"
                read imagename

                echo "Pulling image..."
                sudo docker pull $imagename
                ;;
            
            2)
                echo "Opening vi editor for Dockerfile..."
                vi Dockerfile

                echo "Enter image name:"
                read imagename

                echo "Building Docker image..."
                sudo docker build -t $imagename .
                ;;
            
            *)
                echo "Invalid option"
                exit
                ;;
        esac

        echo "Enter container name:"
        read cname

        echo "Running container..."
        sudo docker run -dit --name $cname $imagename 
        echo " Container '$cname' is running from image '$imagename'" 
        ;;
        
    3)
        echo "Exit"
        exit
        ;;
        
    *) 
        echo "Invalid choice"  
        ;;
esac
