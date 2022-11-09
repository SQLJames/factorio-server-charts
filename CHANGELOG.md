## Changelog

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
