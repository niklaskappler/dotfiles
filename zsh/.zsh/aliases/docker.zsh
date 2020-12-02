# Deletes all docker images
alias docker-rmi='docker rmi $(docker images -q)'
# Kills all docker containers running
alias docker-stop-all='docker stop $(docker ps -a -q)'
# Kills all docker containers running
alias docker-kill-all='docker kill $(docker ps -a -q)'
# Deletes all docker containers
alias docker-rm='docker rm $(docker ps -a -q)'
# Know docker container ip
alias docker-container-ip='docker inspect -f "{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}"'
# Shows docker stats
alias docker-stats='sudo docker ps -q | xargs  docker stats --no-stream'
