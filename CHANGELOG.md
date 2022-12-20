## Changelog

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
