#!/bin/bash

# Function to display the menu
show_menu() {
	echo "Comandos Docker"    
	echo "Opções:"
	echo "1) Lista processos Docker"
    	echo "2) Docker list images"
	echo "Comandos Ollama"
	echo "3) Ollama lista imagens de LLM disponiveis"
    	echo "4) Rodando um modelo Ollama da lista da opção 3"
    	echo "5) Sair - Exit"
    	echo
}

# Function to display service status
service_status() {
    echo "Service is running."  # Placeholder for actual status check
}

# Main script
# while true; do
    show_menu
    read -p "Enter your choice: " choice

    case $choice in
        1)
            echo "Lista processos Docker..."
            docker ps 
            ;;
        2)
            echo "Docker list images"
            docker image ls 
            ;;
        3)
            echo "Ollama list images"
            docker exec -it ollama ollama list
            ;;
        4)
            echo "rodando o modelo..."
            docker exec -it ollama ollama run $1 
            ;;
        5)
            echo "Exiting script."
            # break
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
    echo
# done

