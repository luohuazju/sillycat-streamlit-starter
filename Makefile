IMAGE=sillycat.streamlit.starter
TAG=latest
NAME=sillycat.streamlit.starter
REPOSITORY=docker.io
STAGE=stage


docker-context:

build: docker-context
		docker build --tag $(REPOSITORY)/$(IMAGE):$(TAG) --build-arg STAGE=${STAGE} .

run:
		docker run -d -p 8081:8081 \
		--name $(NAME) $(REPOSITORY)/$(IMAGE):$(TAG)

clean:
		docker stop $(NAME)
		docker rm $(NAME)
