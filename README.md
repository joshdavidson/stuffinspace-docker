# StuffInSpace-docker
Docker build files for my fork of the jeyoder StuffinSpace project
## To build this Docker Image
```
$ git submodule update --init --recursive
$ docker build -t joshdavidson/stuffinspace --force-rm .
```
## To run Docker container
```
$ docker run -d --name stuffinspace -p 80:80 joshdavidson/stuffinspace
```

## What's new?
- 0.0.3 introduces SpaceX group for Starlink constellation and up to date TLE data 
