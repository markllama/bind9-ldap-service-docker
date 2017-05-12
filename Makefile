

build:
	docker build -t markllama/bind-ldap .

shell:
	docker run -it --rm --name bind-test markllama/bind-ldap /bin/sh

clean:
	docker stop bind-test
	docker rm bind-test

