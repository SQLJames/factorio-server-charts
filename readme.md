[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/factorio-server-charts)](https://artifacthub.io/packages/search?repo=factorio-server-charts)

## Factorio helm chart
This is something of a passion project for both learning kubernetes and because kubernetes is awesome. 
Because of this, I have only confirm this working on version 1.0.0 of factorio but I am sure it will work just fine on old versions as long as the schema doesn't change to much on the Secrets settings. 

However, with the way this is implemented if you want to make it backwards compatible, you can update the appropriate sections in the values.yaml file to have the items added or removed to the json files that are required by factorio. Server-settings, map-gen-settings, etc. 

I did run into one issue on my setup, and I feel like it will likely come up again if people follow along. The factorio server is defaulting to run on port 30000 instead of 34197 because the default nginx port range for ingress does not have 34197 within the normal port range. This shows the line of code that specifically is causing the issue inside kubernetes :)
https://github.com/kubernetes/kubernetes/blob/59876df736c41093363f4c198aeec05e29c9c902/cmd/kube-apiserver/app/server.go#L197

## Releases
Releases are published using the official helm release action in github. 
https://github.com/helm/chart-releaser-action
