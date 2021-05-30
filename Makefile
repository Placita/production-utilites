build :
				docker compose build

start :
				docker compose up -d

stop :
				docker compose down
				
debug :
				docker compose --verbose up

reload:
				docker compose down && docker compose up

start-watchtower :
				docker run -d \
                --name watchtower \
                -v /var/run/docker.sock:/var/run/docker.sock \
                containrrr/watchtower \
                --interval 30

stop-watchtower :
				docker stop watchtower

rm-watchtower :
				docker rm watchtower

rmi-watchtower :
				docker rmi containrrr/watchtower
