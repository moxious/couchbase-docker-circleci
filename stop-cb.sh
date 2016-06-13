#!/bin/bash
# Tiny script to stop the couchbase docker image for local testing.
docker stop couchtest
docker rm couchtest

