[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/factorio-server-charts)](https://artifacthub.io/packages/search?repo=factorio-server-charts)


# factorio-server-charts

[factorio-server-charts](https://github.com/SQLJames/factorio-server-charts) - A Helm chart for running factorio in kubernetes

## Introduction

This chart deploys Factorio on a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Prerequisites

- This chart does require a nodeport open if playing publicly. 
- networking knowledge to route the traffic to the appropriate port.

## Background
This is something of a passion project for both learning kubernetes and because kubernetes is awesome. 
Because of this, I have only confirm this working on version 1.1.0 of factorio but I am sure it will work just fine on old versions as long as the schema doesn't change to much on the Secrets settings. 

However, with the way this is implemented if you want to make it backwards compatible, you can update the appropriate sections in the values.yaml file to have the items added or removed to the json files that are required by factorio. Server-settings, map-gen-settings, etc. 

I did run into one issue on my setup, and I feel like it will likely come up again if people follow along. The factorio server is defaulting to run on port 30000 instead of 34197 because the default nginx port range for ingress does not have 34197 within the normal port range. This shows the line of code that specifically is causing the issue inside kubernetes :)
https://github.com/kubernetes/kubernetes/blob/59876df736c41093363f4c198aeec05e29c9c902/cmd/kube-apiserver/app/server.go#L197

## Releases
Releases are published using the official helm release action in github. 
https://github.com/helm/chart-releaser-action

## Quick Start
- create a values.yaml file
- set the following options

```
rcon:
  external: false

nodeSelector: 
  kubernetes.io/hostname: "<name of your node>" #this makes it easier for firewall rules and makes sure things dont change

#making sure the game doesnt auto update on redeploy
#https://hub.docker.com/r/factoriotools/factorio/
image:
  tag: "<set me to the appropriate docker tag>"


persistence:
  enabled: true

factorioServer:
  save_name: "<set me to your name>"

#needed if playing online
admin_list: #put your admins based on factorio names
  # - "john_doe"
  # - "jane_doe"

white_list: #put the people you want to play with you based on factorio names
  # - "john_doe"
  # - "jane_doe"

server_settings:
  name: Factorio-2022-01-kubernetes
  tags: 
  - modded
  visibility:
    public: true
  # Your factorio.com login credentials. Required for games with visibility public
  username: ''
  # Authentication token. 
  token: ''
  # password required to log into the factorio server
  game_password: ''
  require_user_verification: true
```

## installing mods

change enabled to true, follow comments below.

If the factorio server doesn't start, check that the logs don't have an error with the mods. They are pretty verbose
```
mods:
  enabled: true
# in order to use the mods portal you will need to specify the username and token in the server_settings.
# name is determined by the url, it will be the last part of the url, not the title of the mod.
  portal:
    - Krastorio2
    - StorageTank2_Updated
    - early-robots
# unofficial section is meant to just allow you to download and place folders into the mods folder. 
# we will not check version compatibility automatically with these downloads.
# you can encounter an error if the file names dont match what the mod is expecting for example
#Error Util.cpp:83: Failed to load mod "Squeak-Through": Filename of mod 
# /factorio/mods/Squeak-Through.zip doesn't match the expected Squeak Through_1.8.2.zip (case sensitive!)
  unofficial:
    - url: "https://github.com/Suprcheese/Squeak-Through/archive/refs/tags/1.8.2.zip"
      name: "Squeak Through_1.8.2.zip"
```

## Readme 
Readme was generated from the [chart-doc-gen](https://github.com/kubepack/chart-doc-gen) tool.