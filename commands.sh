docker stop ascii-art-web-con

docker system prune -f

docker rmi ascii-art-web-docker-img

docker build -t ascii-art-web-docker-img .

docker container run -p 8080:8080 --detach --name ascii-art-web-con ascii-art-web-docker-img

docker exec -it ascii-art-web-con /bin/bash
