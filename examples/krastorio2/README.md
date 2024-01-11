# Krastorio2

The [Krastorio2](https://mods.factorio.com/mod/Krastorio2) mod requires the `map_gen_settings.autoplace_controls` to be populated in order to start a new game. You can find the Factorio defaults below.

If those settings aren't set the game will fail to start with the following error during map generation:
```bash
   0.857 Factorio initialised
   0.857 Info Main.cpp:777: Creating new map /factorio/saves/replaceMe.zip
   2.076 Loading level.dat: 1608873 bytes.
   2.076 Info Scenario.cpp:204: Map version 1.1.100-0
   2.112 Checksum for script /factorio/temp/currently-playing/control.lua: 3702463597
   2.120 Checksum for script __Krastorio2__/control.lua: 2424813832
Error: The mod Krastorio 2 (1.3.23) caused a non-recoverable error.
Please report this error to the mod author.

Error while running event Krastorio2::on_init()
__Krastorio2__/scripts/freeplay.lua:52: attempt to index field 'autoplace_controls' (a nil value)
stack traceback:
	__Krastorio2__/scripts/freeplay.lua:52: in function 'add_to_crash_site'
	__Krastorio2__/scripts/migrations.lua:23: in function 'generic'
	__Krastorio2__/control.lua:54: in function <__Krastorio2__/control.lua:37>
   2.172 Goodbye

```

## Minimal mod list

```yaml
mods:
  enabled: true
  portal:
    - Krastorio2
    - Krastorio2Assets
    - flib
```

## Minimal other settings

```yaml
map_gen_settings:
  autoplace_controls:
    coal:
      frequency: 1
      size: 1
      richness: 1
    stone:
      frequency: 1
      size: 1
      richness: 1
    copper-ore:
      frequency: 1
      size: 1
      richness: 1
    iron-ore:
      frequency: 1
      size: 1
      richness: 1
    uranium-ore:
      frequency: 1
      size: 1
      richness: 1
    crude-oil:
      frequency: 1
      size: 1
      richness: 1
    trees:
      frequency: 1
      size: 1
      richness: 1
    enemy-base:
      frequency: 1
      size: 1
      richness: 1
```
