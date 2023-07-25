# Create new app 
```docker compose up -d local_composer
docker compose exec local_composer bash 
sh create_project.sh
exit
docker compose down
docker compose up -d
docker compose exec webapp bash 
sh /tmp/init.sh
```
# Existing app 
```
docker compose up -d
docker compose exec webapp bash 
sh /tmp/init.sh
```