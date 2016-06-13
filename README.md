# couchbase-docker-circleci

A template project / proof of concept for how to run Couchbase inside of Docker on CircleCI.

# Which couchbase?

This project is based on couchbase's community docker 4.0.0 image.  This can be adjusted via `Dockerfile`.

# Setting up your Docker Image

To configure your docker image, adjust settings in `Dockerfile` and in `init.sh`, which is the script that is 
run inside of the docker container, configuring the cluster.

By default, the cluster in this project has one small membase bucket called `default`.  The cluster runs the
index, query, and data services with almost all default settings.

# Building on CircleCI

Just adjust circle.yml and add your own login information to the appropriate environment variables and you're done.

# Building/running a docker image locally.

`docker build -t couchtest .`

After this command succeeds, the shell scripts `start-cb.sh` and `stop-cb.sh` should function appropriately.