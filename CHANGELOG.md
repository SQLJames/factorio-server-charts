## Changelog

### V2.5.1

#### Non-Breaking Changes
- Updating values.schema.json
- Updating Readme documentation
- Adding new github workflow to verify readme documentation is up to date going forward
- Removed unneeded files from the repository
- Removed changelog entries from the main readme
- Added values.schema.json workflow to make sure schema json is up to date going forward

### V2.5.0

#### Breaking Changes

- Reformatted the mods section to allow users to specify a mod version so it wont try to pull the latest if you don't want it too. This refactor introduces a custom tool [factorio-mod-downloader](https://github.com/SQLJames/factorio-mod-downloader) as an image, which is a simple golang tool, which simplifies the script and improves logging.

### V2.4.1

#### Non-Breaking Changes
- Fixing mod download script to encode spaces properly, fixes [Issue 42](https://github.com/SQLJames/factorio-server-charts/issues/42)
- Adding update mod check on mod script to avoid it always updating mods, fixes part of[Issue 45](https://github.com/SQLJames/factorio-server-charts/issues/45)

### V2.4.0

#### Potentially Breaking Changes

- Removing the chown of the data directory initialization and instead switching the security context to use the factorio user specified in [factorio docker](https://github.com/factoriotools/factorio-docker/blob/master/docker/Dockerfile). This will fix the nfs permissions but could potentially cause issues elsewhere if you were setting the security context. 

### V2.3.0

#### Non-Breaking Changes

- Decoupling hostNetworking from the nodePort service. Introduces hostNetworkEnabled in the base of the values. By default this will still enabled with a standard set of values, but can be individually disabled if needed. [Issue 38](https://github.com/SQLJames/factorio-server-charts/issues/38)

### V2.2.4

#### Non-Breaking Changes

- Adding the option to append ENV variables to the factorio server container, fixes  [Issue 66](https://github.com/SQLJames/factorio-server-charts/issues/66) and [Issue 37](https://github.com/SQLJames/factorio-server-charts/issues/37)

### V2.2.3

#### Non-Breaking Changes

- Adding support for ipFamilyPolicy, fixing [Issue 63](https://github.com/SQLJames/factorio-server-charts/issues/63)

### V2.2.2

#### Non-Breaking Changes

- Disabled port-fixer livenessProbe due to reliability issues

### V2.2.1

#### Non-Breaking Changes

- Correct issues in deployment when `rconAPI` and `port_fixer` are used simultaniously.
- Add missing `ports` key to rconAPI container

### V2.2.0

#### Non-Breaking Changes

- Added support for [nekomeowww/factorio-rcon-api](https://github.com/nekomeowww/factorio-rcon-api) including corresponding fields for values.yaml

### V2.1.0

#### Non-Breaking Changes

- Added support for [ZCube/factorio-port-fixer](https://github.com/ZCube/factorio-port-fixer) including corresponding fields for values.yaml

### V2.0.4

#### Non-Breaking Changes

- Added new PVC labels - Thank you ohnoitsyou 

### V2.0.3

#### Non-Breaking Changes

- Updated Chart test to wait for the service to become available before testing rcon port

### V2.0.2

#### Non-Breaking Changes

- Updated version of the factorio badge to 2.0.10

### V2.0.1

#### Non-Breaking Changes

- Added `enable_space_age` field to values.yaml to enable or disable Space Age DLC

### V2.0.0

#### Breaking Changes

Now compatible only with Factorio V2.0.
The Space Age DLC is not required to use this Helm chart.
Some Factorio settings in general have changed.
To continue using older 'factoriotools/factorio' Docker images, use version V1.2.5.

- Updated fields in values.yaml for Factorio V2.0 and Space Age DLC.

### V1.2.0

#### Non-Breaking Changes

- Added `securityContext` field to values.yaml

### V1.1.2

#### Non-Breaking Changes

- Fixed a bug where the `game-password` volume had an invalid name

### V1.1.1

#### Non-Breaking Changes

- Fixed a bug where the `account-data` volume had an invalid name
- Extended the pod's DNS config to ensure correct DNS resolution in certain
  environments

### V1.1.0

#### Breaking Changes

- Moved account data from `server_settings.` to `account.` in values.yaml
- Moved server password from `server_settings.` to `serverPassword.` in values.yaml

#### Non-Breaking Changes

- Added `account.accountSecret` field to values.yaml
- Added `rcon.passwordSecret` field to values.yaml
- Added `serverPassword.passwordSecret` field to values.yaml
- Changed default `rcon.password` to `CHANGEMECHANGEME`, which should be changed anyway
- Changed default `map_gen_settings.autoplace_controls` from the standard values to `{}`, since by default map
  generation follows standard parameters if not overriden
- Changed default `admin_list`, `white_list` and `ban_list` to `[]` instead of `nil`
