start: start-network start-jellyfin start-jackett start-radarr start-sonarr start-qbittorrent start-mattermost start-prowlarr start-flame start-cyberchef
stop: stop-jellyfin stop-jackett stop-radarr stop-sonarr stop-qbittorrent stop-mattermost stop-prowlarr stop-flame stop-cyberchef stop-network

start-network:
	docker network create media-network || true
stop-network:
	docker network rm media-network

start-jellyfin:
	docker compose -f ./jellyfin/docker-compose.yml up -d
stop-jellyfin:
	docker compose -f ./jellyfin/docker-compose.yml down
ps-jellyfin:
	docker compose -f ./jellyfin/docker-compose.yml ps

start-jackett:
	docker compose -f ./jackett/docker-compose.yml up -d
stop-jackett:
	docker compose -f ./jackett/docker-compose.yml down
ps-jackett:
	docker compose -f ./jackett/docker-compose.yml ps

start-radarr:
	docker compose -f ./radarr/docker-compose.yml up -d
stop-radarr:
	docker compose -f ./radarr/docker-compose.yml down
ps-radarr:
	docker compose -f ./radarr/docker-compose.yml ps

start-sonarr:
	docker compose -f ./sonarr/docker-compose.yml up -d
stop-sonarr:
	docker compose -f ./sonarr/docker-compose.yml down
ps-sonarr:
	docker compose -f ./sonarr/docker-compose.yml ps

start-qbittorrent:
	docker compose -f ./qbittorrent/docker-compose.yml up -d
stop-qbittorrent:
	docker compose -f ./qbittorrent/docker-compose.yml down
ps-qbittorrent:
	docker compose -f ./qbittorrent/docker-compose.yml ps

start-prowlarr:
	docker compose -f ./prowlarr/docker-compose.yml up -d
stop-prowlarr:
	docker compose -f ./prowlarr/docker-compose.yml down
ps-prowlarr:
	docker compose -f ./prowlarr/docker-compose.yml ps

start-mattermost:
	docker compose -f ./mattermost/docker-compose.yml up -d
stop-mattermost:
	docker compose -f ./mattermost/docker-compose.yml down
ps-mattermost:
	docker compose -f ./mattermost/docker-compose.yml ps

start-flame:
	docker compose -f ./flame/docker-compose.yml up -d
stop-flame:
	docker compose -f ./flame/docker-compose.yml down
ps-flame:
	docker compose -f ./flame/docker-compose.yml ps


start-cyberchef:
	docker compose -f ./cyberchef/docker-compose.yml up -d
stop-cyberchef:
	docker compose -f ./cyberchef/docker-compose.yml down
ps-cyberchef:
	docker compose -f ./cyberchef/docker-compose.yml ps