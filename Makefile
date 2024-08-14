launch-containers:
	docker-compose up -d

run-containers:
	docker-compose start

stop-containers:
	docker-compose stop

# PUSHING IMAGE TO GITHUB registry
authenticate-to-ghcr:
	export CR_PAT=YOUR_TOKEN
	echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin
# CR_PAT is your personal access toke -> https://github.com/settings/tokens/new?scopes=write:packages

# you must authenticate to github-container-registry before pushing conainer image
push-to-ghcr:
	docker tag nginx-loadbalancer-image ghcr.io/amanuela97/nginx-loadbalancer-image:1.0.0
	docker push ghcr.io/amanuela97/nginx-loadbalancer-image:1.0.0
