DOCKER AUTOMATION SCRIPT 
#!/bin/bash

while true
do
    echo "=============================="
    echo " Docker Automation Script"
    echo "=============================="
    echo "1. Install Docker (Ubuntu)"
    echo "2. Docker Operations"
    echo "3. Exit"
    echo "------------------------------"

    read -p "Enter your choice: " choice

    case $choice in
        1)
            echo "Installing Docker..."
            sudo apt update
            sudo apt install docker.io -y
            sudo systemctl start docker
            sudo systemctl enable docker
            echo "Docker Installed Successfully"
            ;;

        2)
            while true
            do
                echo ""
                echo "====== Docker Menu ======"
                echo "1. Pull Image"
                echo "2. Build Image (Dockerfile)"
                echo "3. Run Container (from existing image)"
                echo "4. Pull + Run Container"
                echo "5. List Images"
                echo "6. List All Containers"
                echo "7. Check Container Status"
                echo "8. Stop Container"
                echo "9. Delete Container"
                echo "10. Delete Image"
                echo "11. Running Containers"
                echo "12. Back to Main Menu"
                echo "========================="

                read -p "Enter option: " opt

                case $opt in
                    1)
                        read -p "Enter image name: " imagename
                        sudo docker pull $imagename
                        ;;

                    2)
                        echo "Opening vi editor..."
                        vi Dockerfile
                        read -p "Enter image name: " imagename
                        sudo docker build -t $imagename .
                        ;;

                    3)
                        read -p "Enter image name: " imagename
                        read -p "Enter container name: " cname 
                        sudo docker run -dit --name $cname $imagename bash
                        echo " Check using 11: docker ps"

                    4)
                        read -p "Enter image name: " imagename
                        sudo docker pull $imagename
                        read -p "Enter container name: " cname
                        sudo docker run -dit --name $cname $imagename
                        ;;

                    5)
                        sudo docker images
                        ;;

                    6)
                        sudo docker ps -a
                        ;;

                    7)
                        read -p "Enter container name: " cname
                        sudo docker ps -a | grep $cname
                        ;;

                    8)
                        read -p "Enter container name: " cname
                        sudo docker stop $cname
                        ;;

                    9)
                        read -p "Enter container name: " cname
                        sudo docker rm $cname
                        ;;

                    10)
                        read -p "Enter image name: " imagename
                        sudo docker rmi $imagename
                        ;;

                    11)
                        sudo docker ps
                        ;;

                    12)
                        break
                        ;;

                    *)
                        echo "Invalid option"
                        ;;
                esac
            done
            ;;

        3)
            echo "Exiting..."
            exit
            ;;

        *)
            echo "Invalid choice"
            ;;
    esac
done