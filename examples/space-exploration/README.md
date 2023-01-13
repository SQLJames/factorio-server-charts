# Space-Exploration

The [Space-Exploration](https://mods.factorio.com/mod/space-exploration) mods requires an extended list of other [mods](https://spaceexploration.miraheze.org/wiki/Recommended_Mods#Required_Dependencies) to run properly. For more in-depth reference to the `values.yaml` check [issue 24](https://github.com/SQLJames/factorio-server-charts/issues/24)

Recommended mod list

```yaml
mods:
  enabled: true
  # in order to use the mods portal you will need to specify the username and token in the server_settings.
  # name is determined by the url, it will be the last part of the url, not the title of the mod.
  portal:
    # https://spaceexploration.miraheze.org/wiki/Recommended_Mods#Required_Dependencies
    # Recommended
    - ModuleInserterSimplified
    - aai-vehicles-ironclad
    - grappling-gun
    - bullet-trails
    - equipment-gantry
    - textplates
    - combat-mechanics-overhaul
    - RecipeBook
    # QOL
    - even-distribution
    - AutoTrash
    - LogisticRequestManager
    - BottleneckLite
    # - Squeak Through
    - LogisticTrainNetwork
    # spaceX
    - alien-biomes
    - alien-biomes-hr-terrain
    - space-exploration-graphics
    - space-exploration-graphics-2
    - space-exploration-graphics-3
    - space-exploration-graphics-4
    - space-exploration-graphics-5
    - space-exploration-menu-simulations
    - shield-projector
    - aai-containers
    - aai-industry
    - aai-signal-transmission
    - simhelper
    - space-exploration-graphics
    - robot_attrition
    - informatron
    - jetpack
    - space-exploration-postprocess
    - space-exploration
  # unofficial section is meant to just allow you to download and place folders into the mods folder.
  # we will not check version compatibility automatically with these downloads.
  # you can encounter an error if the file names dont match what the mod is expecting for example
  #Error Util.cpp:83: Failed to load mod "Squeak-Through": Filename of mod
  # /factorio/mods/Squeak-Through.zip doesn't match the expected Squeak Through_1.8.2.zip (case sensitive!)
  unofficial:
    - url: "https://github.com/Suprcheese/Squeak-Through/archive/refs/tags/1.8.2.zip"
      name: "Squeak Through_1.8.2.zip"
```

Space-Exploration requires tweaks to the map settings to function otherwise a crash will occur.

```yaml
map_settings:
  pollution:
    enemy_attack_pollution_consumption_modifier: 0.5
  enemy_evolution:
    time_factor: 0.0000005
    destroy_factor: 0.0005
    pollution_factor: 0.00000025

map_gen_settings:
  water: 1.5
  starting_area: 2
  autoplace_controls:
    hot:
      size: 0.5
    cold:
      size: 0.5
  property_expression_names:
    control-setting:moisture:bias: "0.05"
    control-setting:aux:bias: "-0.35"
```
