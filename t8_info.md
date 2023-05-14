# Black ops 4 (T8) information

Here is the list of the found hashes/strings/ids that can be used in Black ops 4 (T8).

The internal names of the mode are:

- `mp` - Multiplayer
- `zm` - Zombies
- `wz` - Blackout (Warzone)

**Table of Contents**

- [Black ops 4 (T8) information](#black-ops-4-t8-information)
- [Maps and gametypes](#maps-and-gametypes)
  - [Maps](#maps)
    - [Multiplayer](#multiplayer)
    - [Blackout](#blackout)
    - [Zombies](#zombies)
  - [Gametypes](#gametypes)
    - [Multiplayer](#multiplayer-1)
      - [Modes crashing the game](#modes-crashing-the-game)
    - [Blackout](#blackout-1)
    - [Zombies](#zombies-1)
- [Game settings](#game-settings)
  - [All (core)](#all-core)
    - [Modes](#modes)
  - [Multiplayer (mp)](#multiplayer-mp)
    - [General](#general)
  - [Blackout (Warzone/wz)](#blackout-warzonewz)
    - [General](#general-1)
    - [XP](#xp)
    - [Characters](#characters)
      - [Multiplayer](#multiplayer-2)
      - [Zombies](#zombies-2)
    - [Modes](#modes-1)
    - [Item spawns](#item-spawns)
    - [Zombies](#zombies-3)
  - [Zombies (zm)](#zombies-zm)
    - [General](#general-2)
    - [Entities](#entities)
    - [Powerups](#powerups)
    - [Elixir](#elixir)
    - [Perks](#perks)
    - [Rounds](#rounds)
    - [Allow weapon wallbuy](#allow-weapon-wallbuy)
- [Weapons](#weapons)
  - [In game weapons](#in-game-weapons)
    - [Assault rifle](#assault-rifle)
    - [LMGs](#lmgs)
    - [Pistols](#pistols)
    - [Shotguns](#shotguns)
    - [SMGs](#smgs)
    - [Sniper](#sniper)
    - [Tactical rifle](#tactical-rifle)
    - [Hero weapon (MP/BLK)](#hero-weapon-mpblk)
    - [Hero weapon (ZM)](#hero-weapon-zm)
    - [Specials](#specials)
    - [Gametypes](#gametypes-1)
    - [Wonder weapons (ZM/BLK)](#wonder-weapons-zmblk)
  - [Scorestreaks (mp)](#scorestreaks-mp)
  - [Environment](#environment)
  - [Equipment](#equipment)
- [Weapon customization](#weapon-customization)
  - [Camos](#camos)
    - [Multiplayer](#multiplayer-3)
    - [Blackout](#blackout-2)
    - [Zombies](#zombies-4)
    - [Mastery](#mastery)
    - [Pack a punch](#pack-a-punch)
    - [Black market (Reactive)](#black-market-reactive)
    - [Black market](#black-market)
  - [Reticles](#reticles)
  - [Mastercraft / MK2](#mastercraft--mk2)
- [Characters](#characters-1)
  - [IDs in Zombies](#ids-in-zombies)
  - [IDs in Blackout](#ids-in-blackout)
  - [IDs in Multiplayer](#ids-in-multiplayer)
  - [Skins](#skins)

# Maps and gametypes

You can load a map with the function

```c++
map(string map_name);
```

it will set the map with the same gametype,

but you can also using the switchmap functions, it will load the map with a particular gametype, the wait is important, I don't know why.

```c++
switchmap_load(string map, string gametype);
wait(1);
switchmap_switch();
```

## Maps

### Multiplayer

- `mp_austria` - Der Schatten
- `mp_cairo` - Havana
- `mp_casino` - Casino
- `mp_cosmodrome` - Launch
- `mp_elevation` - Elevation
- `mp_embassy` - Masquerade
- `mp_firingrange2` - Firing Range
- `mp_firingrange2_alt` - Firing Range Night
- `mp_frenetic` - Frequency
- `mp_geothermal` - Artifact
- `mp_gridlock` - Gridlock
- `mp_grind` - Grind
- `mp_hacienda` - Hacienda
- `mp_hacienda_alt` - Hacienda Twilight
- `mp_icebreaker` - Icebreaker
- `mp_jungle2` - Jungle
- `mp_jungle2_alt` - Jungle Flooded
- `mp_madagascar` - Madagascar
- `mp_maldives` - Lair
- `mp_militia` - Militia
- `mp_morocco` - Morroco
- `mp_mountain2` - Summit
- `mp_nuketown_4` - Nuketown (Иuk3toши)
- `mp_offshore` - Contraband
- `mp_offshore_alt` - Contraband Hurricane
- `mp_russianbase` - WMD
- `mp_seaside` - Seaside
- `mp_seaside_alt` - Seaside Sunset
- `mp_silo` - Payload
- `mp_slums2` - Slums
- `mp_station` - Lockup
- `mp_urban` - Arsenal 
- `mp_urban_alt` - Arsenal Sandstorm (Crash the game, no start video)
- `mp_zombie_museum` - Remnant


### Blackout

- `wz_open_skyscrapers` - Blackout Core Map
- `wz_open_skyscrapers_alt` - Blackout Core Map Alternative version (Crash the game, no start video)
- `wz_escape` - Alcatraz
- `wz_escape_alt` - Alcatraz Night

### Zombies

- `zm_zodt8` - Voyage of Despair
- `zm_towers` - IX
- `zm_escape` - Blood of the Dead
- `zm_office` - Classified
- `zm_mansion` - Dead of the Night
- `zm_red` - Ancient Evil
- `zm_white` - Alpha Omega
- `zm_orange` - Tag der Toten

## Gametypes

### Multiplayer

**Info**

- (BB) ??
- (CWL) Cod World League rules
- (HC) Hardcore

**Modes**

- `conf` - KC
- `conf_hc` - KC (HC)
- `ctf` - Capture the flag
- `ctf_hc`- Capture the flag (HC)
- `ctf_bb` - Capture the flag (BB)
- `ctf_bb_hc` - Capture the flag (BB HC)
- `dom` - Domination
- `dom_hc` - Domination (HC)
- `dom_snipe_bb` - Domination sniper only
- `dom_bb` - Domination (BB)
- `dom_bb_hc` - Domination (BB HC)
- `dom_dm` - Domination team deathmatch
- `dom_cwl` - Domination (CWL)
- `gun` - Gun games
- `gun_hc` - Gun games (HC)
- `koth` - Hardpoint
- `koth_hc` - Hardpoint (HC)
- `koth_bb` - Hardpoint (BB)
- `koth_cwl` - Hardpoint (CWL)
- `infect` - Infected
- `infect_hc` - Infected (HC)
- `prop` - Prop hunt
- `prop_hc` - Prop hunt (HD)
- `sd` - Search and destroy
- `sd_bb` - Search and destroy (BB)
- `sd_hc` - Search and destroy (HC)
- `sd_cwl` - Search and destroy (CWL)
- `tdm` - Team deathmatch
- `tdm_hc` - Team deathmatch (HC)
- `tdm_bb` - Team deathmatch (BB)
- `tdm_bb_hc` - Team deathmatch (BB HC)
- `tdm_snipe_bb` - Team deathmatch sniper only (BB)
- `control` - Control
- `control_bb` - Control (BB)
- `control_hc` - Control (HC)
- `control_cwl` - Control (CWL)
- `escort` - Escort
- `escort_hc` - Escort (HC)
- `sas` - Sticks and stones
- `sas_hc` - Sticks and stones (HC)
- `bounty` - bounty
- `bounty_hc` - bounty_hc
- `oic` - oic
- `clean` - clean

#### Modes crashing the game

- `dm` - Demolition
- `dm_hc` - Demolition (HC)

### Blackout

- `warzone_solo` - solo
- `warzone_duo` - duo
- `warzone_quad` - quad
- `warzone_escape_duo_dbno` - alcatraz portal duo
- `warzone_escape_quad_dbno` - alcatraz portal quad
- `warzone_hot_pursuit` - hot pursuit
- `warzone_heavy_metal_heroes` - heavy metal heroes
- `warzone_hardcore_solo` - hardcore solo
- `warzone_hardcore_duo` - hardcore duo
- `warzone_hardcore_quad` - hardcore quad
- `warzone_pandemic_quad` - pandemic (**script error with alcatraz, only for the base map**)
- `warzone_heavy_metal` - heavy metal (no heroes) (**script error**)
- `warzone_spectre_rising` - spectre rising DLC (**crash the game**)

### Zombies

- `zclassic` - Classic mode
- `zstandard` - Rush mode
- `ztrials` - trials
- `ztutorial` - tutorial
- `ztcm_towers` - ?
- `ztcm_escape` - ?
- `ztcm_zod` - ?
- `ztcm` - ?

# Game settings

all the settings: [gamesettings.csv](gamesettings.csv)

You can get the value using `GetGametypeSetting(setting)` in a GSC script, you can set the value using `SetGametypeSetting(setting, value)`.

In zombies, the `zm_custom::function_901b751c(setting)` can be used to find settings, if the setting is `""`, it will return `undefined`.

## All (core)

### Modes

- `"infectionmode"` - Is infection mode (true|false)
- `"hardcoremode"` - Is hardcore mode (true|false)

## Multiplayer (mp)

### General

- `"drafttime"` - time to select specialist

## Blackout (Warzone/wz)

### General

- `"waverespawndelay"` - respawn wave delay (seconds)
- `"hash_35c2d850e39fa704"` - max player count
- `"hash_7695bdd7b20cdda"` - allow to convert the muscle car to the replacer's muscle car
- `"hash_3e2d2cf6b1cc6c68"` - Spawn zombies with duck floats ([you read right](https://www.youtube.com/watch?v=XphuwHYtSjk))
- `"hash_3a73deb0ca8c9aea"` - disable crosshair
- `"hash_5f842714fa80e5a9"` - wz_escape poster EE
- `"hash_11b79ec2ffb886c8"` - wz_escape nixie tube EE
- `"hash_30b11d064f146fcc"` - wz_escape spoon EE
- `"hash_473fee16f796c84e"` - wz_escape fishing EE
- `"hash_697d65a68cc6c6f1"` - wz_escape enable enable some ee (nixie, spoon, icarus)
- `"hash_6fbf57e2af153e5f"` - spawn homunculus
- `"hash_53b5887dea69a320"` - enable spring homunculus

### XP

- `"hash_271f60ded9c53d99"` - xp per kill
- `"hash_788f9d764901a139"` - xp per win
- `"hash_678c85f6f120d34b"` - xp per top 5
- `"hash_14a8959bbad2b045"` - xp per top 10
- `"hash_14a8909bbad2a7c6"` - xp per top 15
- `"hash_14ac1b9bbad5c9ce"` - xp per top 20
- `"hash_14ac209bbad5d24d"` - xp per top 25
- `"hash_14af219bbad809d7"` - xp per top 30
- `"hash_149b1d9bbac75a01"` - xp per top 50
- `"hash_149e239bbac99a0a"` - xp per top 60
- `"hash_14a18c9bbacc824c"` - xp per top 75
- `"hash_64e698c86ac94f34"` - xp per remaining lives (respawn modes)
- `"hash_6beb27cc6f581f2d"` - xp per kill while infected (pandemic)
- `"hash_5596ee09efc44216"` - xp per kill of non infected player (pandemic)
- `"hash_6551049476c7127c"` - xp per kill of infected player (pandemic)
- `"hash_709b7e506f5d3775"` - xp per infected win (pandemic)

### Characters

the `"hash_50b1121aee76a7e4"` allow to unlock characters, then you have per character config:

#### Multiplayer

- `"hash_d084b5063bb0c55"` - allow to unlock ajax
- `"hash_4c66b817adba935c"` - allow to unlock crash
- `"hash_2cd26947d8f311fa"` - allow to unlock battery
- `"hash_75370c9c920502fc"` - allow to unlock firebreak
- `"hash_26843909f5fdef20"` - allow to unlock nomad
- `"hash_52d705a46da9e55f"` - allow to unlock outrider
- `"hash_7cf82cc41c0f0d5"` - allow to unlock prophet
- `"hash_6b1ec01fa78af670"` - allow to unlock reaper
- `"hash_34ea44c91776e52c"` - allow to unlock recon
- `"hash_4f0a6d1e98cdbf81"` - allow to unlock ruin
- `"hash_183bcc0f6737224a"` - allow to unlock seraph
- `"hash_6fe34e77ba14d86f"` - allow to unlock spectre
- `"hash_3d719d86f2f3f14d"` - allow to unlock torque
- `"hash_19c58d35b2ea8d15"` - allow to unlock zero

#### Zombies

**Chaos**

- `"hash_2dfb36064be05f03"` - allow to unlock bruno
- `"hash_7fc2867a4b8594bf"` - allow to unlock diego
- `"hash_7049c01d7ddf9b35"` - allow to unlock scarlett
- `"hash_5ea56d63c68b4396"` - allow to unlock shaw

**Chaos IX**

- `"hash_4547b7ecb49469f0"` - allow to unlock bruno (ix)
- `"hash_ff653cbb1438270"` - allow to unlock diego (ix)
- `"hash_2b0f9caa00363ee8"` - allow to unlock scarlett (ix)
- `"hash_1ec2d38a40e97c55"` - allow to unlock shaw (ix)

**Aether**

- `"hash_2574d482086ec9d8"` - allow to unlock nikolai
- `"hash_1d4c395693ce04fe"` - allow to unlock dempsey
- `"hash_19667f3338ed6b1f"` - allow to unlock richtofen
- `"hash_26186b4e5dc9bb6f"` - allow to unlock takeo

**Black ops**

- `"hash_20f3ff8fbb8d8295"` - allow to unlock mason
- `"hash_1d50c09e8021ab1"` - allow to unlock menendez
- `"hash_47242abeaa29479b"` - allow to unlock reznov
- `"hash_265bdda9362c5a35"` - allow to unlock woods

### Modes

- `"wzspectrerising"` - Is WZ Spectrer rising mode (true|false)
- `"wzhardcore"` - Is WZ Hardcore mode (true|false)
- `"wzzombieapocalypse"` - Is WZ Pandemic mode (true|false)

### Item spawns

- `"hash_33d1ac5e99fb0584"` - Spawn water balloon, can't be used with `"hash_3e2d2cf6b1cc6c68"`
- `"hash_437b759bd6885560"` - Spawn snowballs

### Zombies

- `"wzzombies"` - Spawn zombies (true|false)

You can set which type of zombies can spawn

- `hash_36c4caf5bc327807` and `wzbrutus` - spawn brutus
- `hash_64b6849360a2bc86` and `hash_2f1217d530d06c4c` - spawn brutus boss
- `hash_29a8b0865154e079` and `wzavogadro` - spawn avogadro (with health set to 150, I suggest using a `spawner::add_archetype_spawn_function` gsc script to set its life to 6000 (brutus' health))
- `hash_7dd54269f48d6047` and `wzblightfather` - spawn blight father only for the core map **(bugged, will crash the game)**
- `hash_530fdf750e69c0d6` and `hash_6c65796bd239e3c` - **spawn dogs (bugged, will spawn brutus boss)**

## Zombies (zm)

### General

- `"zmdifficulty"` - Set difficulty, values:
  - 0 = easy
  - 1 = normal
  - 2 = hard
  - 3 = insane
- `"hash_7b14ee93b27576a9"` - Set the zombies' min speed
  - 0 = walk
  - 1 = run
  - 2 = sprint
  - 3 = super sprint
- `"hash_58af4e73782aba2f"` - Set the zombies' max speed
  - 0 = walk
  - 1 = run
  - 2 = sprint
  - 3 = super sprint
- `"zmtrialsvariant"` - Variant of a trials (gauntlet), default = 0, hard = 1
- `"waverespawndelay"` - respawn wave delay (seconds)
- `"magic"` - enable magic
- `"hash_4cb15aed177a8ef5"` and `"headshotsonly"` - headshots only
- `"startround"` - Start round
- `"zmroundcap"` - Max round
- `"zmtimecap"` - Max time (minutes?)
- `"zmpowerupsactive"` - Allow powerups
- `"hash_137eb8d53913f781"` - Allow elixirs
  - `"hash_3ab7cedcfef7eacc"` - Allow elixir type 1
  - `"hash_5374d50efd1e6b59"` - Allow elixir type 2
  - `"hash_5e1f08b8335a0ce0"` - Allow elixir type 3
  - `"hash_7ea1426ffa93f34d"` - Allow elixir type 4
  - `"hash_5746674cbab8264d"` - Allow elixir type 5
- `"hash_3d18f84f48bd5d1f"` - Allow perks
- `"hash_4b16b22d8a0d3301"` - Allow traps
- `"hash_2a5dc43e6de87347"` - Highlight craftables items
- `"hash_3386caa315211c88"` - no repair
- `"hash_3ddb6198e7837062"` - decay the perks
- `"hash_3d18f84f48bd5d1f"` - allow magic
- `"hash_3f8f02e8109b6e93"` - allow friendly fire
- `"hash_57a5c7a9dcf94d61"` - allow AATs
- `"hash_589c0366b1458c7e"` - allow loadouts
- `"hash_1fed0d9afc0b0040"` - points percentage lost per down
- `"hash_1158d006a3913ef6"` - points percentage lost per death
- `"hash_b066c34278e6394"` - allow hero weapon

### Entities

- `"zmminibossstate"` - allow miniboss entity
- `"zmheavystate"` - allow heavy entity
- `"hash_5f8aca8340761fce"` - allow dog/tiger entity
- `"zmenhancedstate"` - allow enhanced entity

### Powerups

- `"zmpowerupnuke"` - allow powerup nuke
- `"zmpowerupdouble"` - allow powerup double
- `"zmpowerupinstakill"` - allow powerup instakill
- `"zmpowerupchaospoints"` - allow powerup chaospoints
- `"zmpowerupfiresale"` - allow powerup firesale
- `"zmpowerupspecialweapon"` - allow powerup specialweapon
- `"zmpowerupfreeperk"` - allow powerup freeperk
- `"zmpowerupmaxammo"` - allow powerup maxammo
- `"zmpowerupcarpenter"` - allow powerup carpenter

### Elixir

- `"zmelixiraftertaste"` allow elixir aftertaste
- `"zmelixiralchemicalantithesis"` allow elixir alchemicalantithesis
- `"zmelixiralwaysdoneswiftly"` allow elixir alwaysdoneswiftly
- `"zmelixirantientrapment"` allow elixir antientrapment
- `"zmelixiranywherebuthere"` allow elixir anywherebuthere
- `"zmelixirarsenalaccelerator"` allow elixir arsenalaccelerator
- `"zmelixirboardgames"` allow elixir boardgames
- `"zmelixirbulletboost"` allow elixir bulletboost
- `"zmelixirburnedout"` allow elixir burnedout
- `"zmelixircacheback"` allow elixir cacheback
- `"zmelixirconflagrationliquidation"` allow elixir conflagrationliquidation
- `"zmelixircrawlspace"` allow elixir crawlspace
- `"zmelixirctrlz"` allow elixir ctrlz
- `"zmelixirdangerclosest"` allow elixir dangerclosest
- `"zmelixirdeadofnuclearwinter"` allow elixir deadofnuclearwinter
- `"zmelixirdividendyield"` allow elixir dividendyield
- `"zmelixirequipmint"` allow elixir equipmint
- `"zmelixirextracredit"` allow elixir extracredit
- `"zmelixirfreefire"` allow elixir freefire
- `"zmelixirheaddrama"` allow elixir headdrama
- `"zmelixirheadscan"` allow elixir headscan
- `"zmelixirimmolationliquidation"` allow elixir immolationliquidation
- `"zmelixirinplainsight"` allow elixir inplainsight
- `"zmelixirjointheparty"` allow elixir jointheparty
- `"zmelixirkilljoy"` allow elixir killjoy
- `"zmelixirlicensedcontractor"` allow elixir licensedcontractor
- `"zmelixirneardeathexperience"` allow elixir neardeathexperience
- `"zmelixirnewtoniannegation"` allow elixir newtoniannegation
- `"zmelixirnowyouseeme"` allow elixir nowyouseeme
- `"zmelixirnowherebutthere"` allow elixir nowherebutthere
- `"zmelixirperkup"` allow elixir perkup
- `"zmelixirperkaholic"` allow elixir perkaholic
- `"zmelixirphantomreload"` allow elixir phantomreload
- `"zmelixirphoenixup"` allow elixir phoenixup
- `"zmelixirpointdrops"` allow elixir pointdrops
- `"zmelixirpopshocks"` allow elixir popshocks
- `"zmelixirpowerkeg"` allow elixir powerkeg
- `"zmelixirpowervacuum"` allow elixir powervacuum
- `"zmelixirrefreshmint"` allow elixir refreshmint
- `"zmelixirreigndrops"` allow elixir reigndrops
- `"zmelixirsecretshopper"` allow elixir secretshopper
- `"zmelixirshieldsup"` allow elixir shieldsup
- `"zmelixirshoppingfree"` allow elixir shoppingfree
- `"zmelixirsodafountain"` allow elixir sodafountain
- `"zmelixirstockoption"` allow elixir stockoption
- `"zmelixirsuitup"` allow elixir suitup
- `"zmelixirswordflay"` allow elixir swordflay
- `"zmelixirtalkinboutregeneration"` allow elixir talkinboutregeneration
- `"zmelixirtemporalgift"` allow elixir temporalgift
- `"zmelixirundeadmanwalking"` allow elixir undeadmanwalking
- `"zmelixirwallpower"` allow elixir wallpower
- `"zmelixirwhoskeepingscore"` allow elixir whoskeepingscore

### Perks

- `"hash_7520ccdc8dcaee8d"` allow perk armorvest
- `"hash_8edd17a31990450"` allow perk fastreload
- `"zmperksquickrevive"` allow perk quickrevive
- `"hash_557e3edd7fe168c3"` allow perk widowswine
- `"zmperksstaminup"` allow perk staminup
- `"zmperksmulekick"` allow perk additionalprimaryweapon
- `"hash_77c5cc2d9b6ca16c"` allow perk electriccherry
- `"zmperksdeadshot"` allow perk deadshot
- `"zmperkscooldown"` allow perk cooldown
- `"zmperksdyingwish"` allow perk dying_wish
- `"zmperksphdslider"` allow perk phdflopper
- `"hash_5690c4dcc61973ec"` allow perk stronghold
- `"hash_1bdfb5736ad174a3"` allow perk extraammo
- `"zmperksdeathperception"` allow perk awareness
- `"hash_2dd9d538ca5bc2d6"` allow perk shield
- `"hash_179ae09979e80714"` allow perk mystery
- `"zmperksetherealrazor"` allow perk etherealrazor
- `"zmperkszombshell"` allow perk zombshell
- `"zmperkswolfprotector"` allow perk wolf_protector
- `"zmperksdeathdash"` allow perk death_dash

### Rounds

- `"zombie_health_increase_multiplier"` - The multiplier to apply to the zombies' health
- `"zombie_health_increase"` - The increase to add after the multipler
- `"zombie_health_start"` - The start health

### Allow weapon wallbuy

Boolean values to allow wallbuy of a weapon category

- `"hash_6f1440098d849316"` - Allow pistols
- `"hash_edfb07f798aaab5"` - Allow CQB
- `"hash_1f6665b5581f6b6e"` - Allow SMG
- `"hash_1d5c8e6f0e20201a"` - Allow AR
- `"zmweaponstr"` - Allow tacticals
- `"hash_2f6740b518dbeb8f"` - Allow LMG
- `"hash_5bfd047c58816496"` - Allow snipers
- `"zmweaponsknife"` - Allow knifes



# Weapons

Here a list of the t8 (Black ops 4) weapons, it can be used with `Weapon GetWeapon(hash|string weaponName)`

## In game weapons

You can add `_upgraded` to most of the in-game weapons to have the zombies' upgraded version.

### Assault rifle

- `ar_accurate_t8` - ICR-7
- `ar_damage_t8` - Rampart 17
- `ar_modular_t8` - KN-57
- `ar_stealth_t8` - VAPR-XKG
- `ar_fastfire_t8` - Maddox RFB
- `ar_galil_t8` - Grav
- `ar_standard_t8` - Swat RFT
- `ar_peacekeeper_t8` - Peacekeeper
- `ar_an94_t8` - AN-94
- `ar_doublebarrel_t8` - Echohawk
- `ar_mg1909_t8` - Hitchcock M9

### LMGs

- `lmg_standard_t8` - Titan
- `lmg_spray_t8` - Hades
- `lmg_heavy_t8` - VKM-750
- `lmg_double_t8` - Zweihander (zm/blk)
- `lmg_stealth_t8` - Tigershark

### Pistols

- `pistol_burst_t8`
- `pistol_fullauto_t8`
- `pistol_revolver_t8`
- `pistol_standard_t8`
- `pistol_topbreak_t8`

### Shotguns

- `shotgun_pump_t8` - MOG-12
- `shotgun_semiauto_t8` - SG-12
- `shotgun_trenchgun_t8` - Trenchgun (zm)
- `shotgun_fullauto_t8` - Rampage
- `shotgun_precision_t8` - Argus

### SMGs

- `smg_standard_t8` - MX9
- `smg_accurate_t8` - GKS
- `smg_capacity_t8` - Cordite
- `smg_fastfire_t8` - Spitfire
- `smg_folding_t8` - Switchblade X9
- `smg_handling_t8` - Saug 9mm
- `smg_fastburst_t8` - Daemon 3XB
- `smg_vmp_t8` - VMP
- `smg_minigun_t8` - MicroMG 9mm
- `smg_drum_pistol_t8` - Escargot (zm)
- `smg_mp40_t8` - MP40 (zm/blk)
- `smg_thompson_t8` - M1927 (zm/aether)
    

### Sniper

- `sniper_powerbolt_t8` - Paladin HB50
- `sniper_powersemi_t8` - SDM
- `sniper_fastrechamber_t8` - Outlaw
- `sniper_quickscope_t8` - Koshka
- `sniper_locus_t8` - Locus
- `sniper_damagesemi_t8` - Havelina AA50
- `sniper_mini14_t8` - Vendetta

### Tactical rifle

- `tr_longburst_t8` - Swordfish
- `tr_leveraction_t8` - Essex Model 07
- `tr_midburst_t8` - ABR 223
- `tr_powersemi_t8` - Auger DMR
- `tr_flechette_t8` - S6 Stingray
- `tr_damageburst_t8` - M16
### Hero weapon (MP/BLK)

- `sig_buckler_dw` (Ajax)
- `hero_annihilator` (Seraph)
- `hero_flamethrower` (Firebreak)
- `hero_pineapplegun` (Battery)
- `shock_rifle` (Prophet)
- `hero_lightninggun` (Prophet/BO3)
- `hero_gravityspikes` (Ruin)
- `sig_blade` (Spectre)
- `sig_bow_quickshot` (Outrider)
- `sig_minigun` (Reaper)
- `hero_minigun` (Reaper/BO3)

### Hero weapon (ZM)

- `hero_sword_pistol_lv1` (ZM/Chaos) Sword Pistol LVL1
- `hero_sword_pistol_lv2` (ZM/Chaos) Sword Pistol LVL2
- `hero_sword_pistol_lv3` (ZM/Chaos) Sword Pistol LVL3
- `hero_chakram_lv1` (ZM/Chaos) Chakram LVL1
- `hero_chakram_lv2` (ZM/Chaos) Chakram LVL2
- `hero_chakram_lv3` (ZM/Chaos) Chakram LVL3
- `hero_scepter_lv1` (ZM/Chaos) Scepter LVL1
- `hero_scepter_lv2` (ZM/Chaos) Scepter LVL2
- `hero_scepter_lv3` (ZM/Chaos) Scepter LVL3
- `hero_hammer_lv1` (ZM/Chaos) Hammer LVL1
- `hero_hammer_lv2` (ZM/Chaos) Hammer LVL2
- `hero_hammer_lv3` (ZM/Chaos) Hammer LVL3
- `hash_18829d56b3fbd75b` (ZM/Aether) Firethrower LV1
- `hash_18829e56b3fbd90e` (ZM/Aether) Firethrower LV2
- `hash_18829f56b3fbdac1` (ZM/Aether) Firethrower LV3
- `hash_1d3a5509fa2c9ee6` (ZM/Aether) Ragnarok LV1
- `hash_1d3a5409fa2c9d33` (ZM/Aether) Ragnarok LV2
- `hash_1d3a5309fa2c9b80` (ZM/Aether) Ragnarok LV3
- `hash_6627879099b8a337` (ZM/Aether) Katana LV1
- `hash_6627889099b8a4ea` (ZM/Aether) Katana LV2
- `hash_6627899099b8a69d` (ZM/Aether) Katana LV3
- `hash_74dd67dd8a46d144` (ZM/Aether) Minigun LV1
- `hash_74dd6add8a46d65d` (ZM/Aether) Minigun LV2
- `hash_74dd69dd8a46d4aa` (ZM/Aether) Minigun LV3

### Specials

- `launcher_standard_t8` - Hellion Salvo
- `knife_loadout` - Default knife (mp)
- `bowie_knife` - Bowie (zm)
- `melee_bowie` - Bowie (wz)
- `stake_knife` - Stake knife (zm/dotn)
- `zombie_fists` - Zombie fists
- `galvaknuckles_t8` - Galvaknuckles (zm/tag)
- `spoon_alcatraz` - spoon (zm/botd)
- `spork_alcatraz` - spork (zm/botd)
- `spknifeork` - spknifeork (zm/botd)
- `bare_hands` - Hands
- `melee_club_t8` - Nifo'oti (mp/blk)
- `melee_coinbag_t8` - Cha-Ching (mp/blk)
- `melee_demohammer_t8` - Home Wrecker (mp/blk)
- `melee_secretsanta_t8` - Secret Santa (mp/blk)
- `melee_slaybell_t8` - Slay Bell (mp/blk)
- `melee_stopsign_t8` - Full Stop (mp/blk)
- `melee_zombiearm_t8` - Backhander (mp/blk)
- `melee_amuletfist_t8` - Eye of Apophis (mp/blk)
- `melee_actionfigure_t8` - Series 6 Outrider (mp/blk)
- `melee_cutlass_t8` - Rising Tide (mp/blk)
- `special_ballisticknife_t8_dw` - Ballistic knife
- `special_crossbow_t8` - Crossbow
- `special_crossbow_t8_sas` - Crossbow (Sticks and stones)
- `basketball` - basketball (blk)

### Gametypes

- `ball` - Ball (BO3)
- `briefcase_bomb` - Briefcase bomb
- `briefcase_bomb_defuse` - Briefcase bomb (defuse)
- `downed` - Downed

### Wonder weapons (ZM/BLK)

- `ray_gun` - Ray gun (zm/blk)
- `ray_gun_mk2` - Ray gun MK2 (zm/blk)
- `ray_gun_mk2v` - Ray gun MK2 V (zm/ao) (blk)
- `ray_gun_mk2x` - Ray gun MK2 X (zm/ao) (blk)
- `ray_gun_mk2y` - Ray gun MK2 Y (zm/ao) (blk)
- `ray_gun_mk2z` - Ray gun MK2 Z (zm/ao) (blk)
- `ww_blundergat_t8` - Escape WW (zm_escape/blk)
- `ww_blundergat_fire_t8` - Magmagat (escape ww) 
- `ww_blundergat_acid_t8` - Acidgat (escape ww)
- `hash_3de0926b89369160` - Acidgat dart (magic bullet) (escape ww)
- `hash_494f5501b3f8e1e9` - Acidgat tempered (escape ww)
- `ww_crossbow_t8` - IX WW (zm_towers/blk)
- `ww_crossbow_charged_t8` - IX WW (charged shot) (zm_towers)
- `ww_freezegun_t8` - Classified WW (zm_office/zm_orange/blk)
- `hash_138efe2bb30be63c` - DoTN WW LVL1 - Alistair's Folly
- `hash_138f012bb30beb55` - DoTN WW LVL2 - Chaos Theory
- `hash_138f002bb30be9a2` - DoTN WW LVL3 - Alistair's Annihilator
- `ww_crossbow_impaler_t8` - DoTN WW SQ (zm_mansion/blk)
- `ww_tricannon_t8` - Voyage WW (zm_zodt8)
- `ww_tricannon_water_t8` - Voyage WW (water) (zm_zodt8)
- `ww_tricannon_fire_t8` - Voyage WW (fire) (zm_zodt8)
- `ww_tricannon_air_t8` - Voyage WW (air) (zm_zodt8)
- `ww_tricannon_earth_t8` - Voyage WW (earth) (zm_zodt8)
- `ww_hand_o_uncharged` - AE WW uncharged (ouranos) (zm_red)
- `ww_hand_h_uncharged` - AE WW uncharged (hemera) (zm_red)
- `ww_hand_g_uncharged` - AE WW uncharged (gaia) (zm_red)
- `ww_hand_c_uncharged` - AE WW uncharged (charon) (zm_red)
- `ww_hand_o` - AE WW (ouranos) (zm_red)
- `ww_hand_h` - AE WW (hemera) (zm_red)
- `ww_hand_g` - AE WW (gaia) (zm_red)
- `ww_hand_c` - AE WW (charon) (zm_red)
- `ww_hand_o_upgraded` - AE WW charge (ouranos) (zm_red)
- `ww_hand_h_upgraded` - AE WW charge (hemera) (zm_red)
- `ww_hand_g_upgraded` - AE WW charge (gaia) (zm_red)
- `ww_hand_c_upgraded` - AE WW charge (charon) (zm_red)
- `ww_tesla_gun_t8` - (Tag WW) Wunderwaffe (BO3) (zm_orange)
- `ww_tesla_sniper_t8` - (Tag WW) Wunderwaffe (BO4) (zm_orange)
- `thundergun` - (Tag WW) Thundergun (zm_orange)
- `tundragun` - (Tag WW) Tundragun (zm_orange)

## Scorestreaks (mp)

- `straferun_gun` - A10 gun
- `straferun_rockets` - A10 rockets
- `remote_missile` - Hellstorm
- `remote_missile_missile` - Hellstorm main missile
- `remote_missile_bomblet` - Hellstorm sub missile
- `killstreak_qrdrone` - Drone squads
- `qrdrone_turret` - Drone squads turret
- `cobra_20mm_comlink` - Helicopter gun
- `supplydrop` - Supply drop
- `tank_robot` - mantis
- `swat_team` - strike team

## Environment

- `incendiary_fire`
- `destructible_car`
- `explodable_barrel`

## Equipment

- `music_box` - Sam's box (zm/tag)
- `hash_27e4878539bc7f72` - Pegasus (zm/ae)
- `eq_emp_grenade` - emp (mp)
- `eq_acid_bomb` - acid bomb (all)
- `claymore` - claymore (all)
- `frag_grenade` - frag grenade (all)
- `flash_grenade` - flash grenade (not the one from ajax)
- `willy_pete` - smoke grenade (mp/blk)
- `mute_smoke` - mute smoke grenade (mp/blk)
- `eq_smoke` - smoke grenade (Spectre) (mp)
- `hatchet` - tomahawk (mp/blk)
- `tomahawk_t8` - hell retriver (zm/botd) (blk)
- `tomahawk_t8_upgraded` - hell retriver upgraded (zm/botd)
- `trophy_system` - trophy system (mp/blk)
- `gadget_jammer` - jammer (prototype)
- `waterballoon` - water balloon (blk)
- `homunculus` - homunculus (zm)
- `cymbal_monkey` - cymbal monkey (zm)
- `snowball` - snowball (zm/tag) (blk)
- `snowball_upgraded` - snowball upgraded (zm/tag)
- `snowball_yellow` - snowball yellow (zm/tag)
- `snowball_yellow_upgraded` - snowball yellow upgraded (zm/tag)

# Weapon customization

You can customize a weapon when giving it using weapon options, you can build them using the method

```c++
<player> calcweaponoptions(int camo_id, int reticle_id = 0, int mastercraft_id = 0) -> WeaponOptions;
```

- `camo_id` is the camo ID, 0 for default
- `reticle_id` is the mastercraft ID, 0 for default
- `mastercraft_id` is the reticle ID, 0 for default
  - **Warning**: a bad camo or reticle id is fine, but a bad mastercraft id will **crash your game**!

then you add it while giving the weapon

```c++
<player> giveweapon(Weapon weapon, WeaponOptions weapon_options);
```

you can also set the camo of a weapon without the weapon options using the method, it will bypass the reactive camo scripts.

```c++
<player> setcamo(Weapon weapon, int camo_id);
```


## Camos

### Multiplayer

| name | id |
|------|----|
| generic mp 1 | 1 |
| generic mp 2 | 4 |
| generic mp 3 | 7 |
| generic mp 4 | 10 |
| generic mp 5 | 13 |
| generic mp 6 | 16 |
| generic mp 7 | 19 |
| generic mp 8 | 22 |
| generic mp 9 | 25 |
| generic mp 10 | 28 |
| generic mp 11 | 31 |
| generic mp 12 | 34 |
| generic mp 13 | 37 |
| generic mp 14 | 40 |

### Blackout

| name | id |
|------|----|
| generic blk 1 | 2 |
| generic blk 2 | 5 |
| generic blk 3 | 8 |
| generic blk 4 | 11 |
| generic blk 5 | 14 |
| generic blk 6 | 17 |
| generic blk 7 | 20 |
| generic blk 8 | 23 |
| generic blk 9 | 26 |
| generic blk 10 | 29 |
| generic blk 11 | 32 |
| generic blk 12 | 35 |
| generic blk 13 | 38 |
| generic blk 14 | 41 |

### Zombies

| name | id |
|------|----|
| generic zm 1 | 3 |
| generic zm 2 | 6 |
| generic zm 3 | 9 |
| generic zm 4 | 12 |
| generic zm 5 | 15 |
| generic zm 6 | 18 |
| generic zm 7 | 21 |
| generic zm 8 | 24 |
| generic zm 9 | 27 |
| generic zm 10 | 30 |
| generic zm 11 | 33 |
| generic zm 12 | 36 |
| generic zm 13 | 39 |
| generic zm 14 | 42 |

### Mastery

| name | id |
|------|----|
| Gold | 43 |
| Diamond | 44 |
| Dark matter | 45 |
| Diamond (Last tier) | 199 |
| Dark matter (Last tier) | 192 |

### Pack a punch

You don't need to be in Zombies to use these camos.

| name | id |
|------|----|
| Voyage of despair purple | 146 |
| Voyage of despair red | 147 |
| Voyage of despair green | 148 |
| Voyage of despair yellow | 149 |
| Voyage of despair pink | 150 |
| IX blue | 151 |
| IX red | 152 |
| IX green | 153 |
| IX purple | 154 |
| IX orange | 155 |
| Blood of the Dead yellow | 156 |
| Blood of the Dead red | 157 |
| Blood of the Dead yellow | 158 |
| Blood of the Dead green | 159 |
| Blood of the Dead purple | 160 |
| Classified 1 | 161 |
| Classified 2 | 162 |
| Classified 3 | 163 |
| Classified 4 | 164 |
| Classified 5 | 165 |
| Dead of the night green | 280 |
| Dead of the night purple | 281 |
| Dead of the night red | 282 |
| Dead of the night blue | 283 |
| Dead of the night orange | 284 |
| Ancien Evil purple | 74 |
| Ancien Evil blue | 75 |
| Ancien Evil orange | 76 |
| Ancien Evil yellow | 77 |
| Ancien Evil green | 78 |
| Alpha Omega | 345 |
| Tag der toten | 394 |

### Black market (Reactive)

I'm French and my game isn't in English so I don't have access to the English name, I tried my best to translate them, but it's still a weird mix between French and English-Translated names, sorry.

| name | id |
|------|----|
| D-Day | 298 |
| Roadtrip | 300 |
| Masked | 310 |
| Bobine | 52 |
| Search | 57 |
| Strip | 62 |
| Rave | 67 |
| Nebula | 89 |
| After life | 90 |
| Postluminescence | 119 |
| 115 | 129 |
| Grey matter | 131 |
| Denied access (waifu) | 167 |
| Skull | 168 |
| Solar eruption | 381 |
| Vision of the future | 387 |
| Pestilence | 389 |
| Crypted | 286 |
| Judas | 357 |
| Incandescent | 359 |
| Encoded | 363 |

### Black market

I'm French and my game isn't in English so I don't have access to the English name, so it's a weird mix between French and English-Translated names, sorry.


| name | id |
|------|----|
| Twitch 1 | 79 |
| Twitch 2 | 118 |
| $ | 46 |
| Green course | 47 |
| Blue | 48 |
| Kiss | 49 |
| Fortuna | 50 |
| Donuts | 51 |
| Serment | 80 |
| Imbu | 81 |
| Megalodon | 82 |
| Surf | 83 |
| Goinfre | 84 |
| Chrysalide | 86 |
| Locker | 87 |
| Bacon | 117 |
| Dead time | 120 |
| Dirty buble | 121 |
| Heaven | 122 |
| Pique nique royal | 123 |
| Mai Tai Zombie | 124 |
| Heaven | 122 |
| Colonne piégée | 126 |
| Derezzed | 134 |
| Steam explosion | 135 |
| Goinfre | 136 |
| Arabesque | 137 |
| Se sentir visé | 166 |
| Rampage | 170 |
| Soul eater | 171 |
| Marathon | 172 |
| Avant garde | 173 |
| Plasma | 293 |
| Air fight | 305 |
| Cherry | 314 |
| Gigakiller | 315 |
| Flicker | 316 |
| Rocket box | 317 |
| USA | 346 |
| Juicy | 347 |
| Glyph | 348 |
| Gratte-gratte | 350 |
| Flocon | 351 |
| Vertige | 353 |
| High tension | 354 |
| Gluant | 355 |


## Reticles

Tested with the base reflex.

Some reticles have variants, you can add to the id 1..number_variants to get it.

|Name|Id|Number of variants|
|-|-|-|
| Dot | 0 | 4 |
| Dot+ | 5 | 4 |
| Nord | 10 | 4 |
| Echelon | 15 | 4 |
| Clamp | 20 | 4 |
| Circle | 25 | 4 |
| Cross | 30 | 4 |
| Mustache | 35 | 4 |
| Square | 40 | 4 |
| Cross | 45 | 4 |
| King | 50 | 0 |
| Circle | 51 | 4 |
| Clamp | 56 | 4 |
| Circle | 61 | 4 |
| Treyarch | 66 | 0 |
| Anchor | 67 | 0 |

## Mastercraft / MK2

|weapon id|mastercraft Id|description|
|---------|--------------|-----------|
| `ar_accurate_t8` | 1 | MK2 |
| `ar_accurate_t8` | 2 | MC 1 |
| `ar_accurate_t8` | 3 | MC 2 |
| `ar_damage_t8` | 1 | MK2 |
| `ar_damage_t8` | 2 | MC |
| `ar_fastfire_t8` | 1 | MK2 |
| `ar_fastfire_t8` | 2 | MC |
| `ar_modular_t8` | 1 | MK2 |
| `ar_modular_t8` | 2 | MC |
| `ar_modular_t8` | 3 | MC |
| `ar_stealth_t8` | 3 | MK2 |
| `ar_stealth_t8` | 2 | MC VAmPiRe |
| `ar_peacekeeper_t8` | 1 | MK2 |
| `ar_standard_t8` | 1 | MK2 |
| `ar_standard_t8` | 2 | MC |
| `lmg_standard_t8` | 1 | MK2 |
| `lmg_standard_t8` | 2 | MC |
| `lmg_heavy_t8` | 3 | MK2 |
| `lmg_heavy_t8` | 2 | MC |
| `lmg_spray_t8` | 1 | MC |
| `lmg_stealth_t8` | 1 | MK2 |
| `pistol_standard_t8` | 1 | MK2 |
| `pistol_standard_t8` | 2 | MC |
| `pistol_burst_t8` | 2 | MC |
| `pistol_revolver_t8` | 3 | MK2 |
| `pistol_revolver_t8` | 2 | MC |
| `pistol_fullauto_t8` | 1 | MK2 |
| `pistol_fullauto_t8` | 2 | MC |
| `shotgun_pump_t8` | 2 | MK2 |
| `shotgun_pump_t8` | 3 | MC |
| `shotgun_semiauto_t8` | 1 | MK2 |
| `shotgun_semiauto_t8` | 2 | MC |
| `shotgun_fullauto_t8` | 1 | MK2 |
| `shotgun_fullauto_t8` | 2 | MC |
| `smg_accurate_t8` | 1 | MK2 |
| `smg_accurate_t8` | 2 | MC 1 |
| `smg_accurate_t8` | 2 | MC 2 |
| `smg_capacity_t8` | 2 | MK2 |
| `smg_capacity_t8` | 3 | MC |
| `smg_fastfire_t8` | 3 | MK2 |
| `smg_fastfire_t8` | 2 | MC |
| `smg_handling_t8` | 3 | MK2 |
| `smg_handling_t8` | 2 | MC |
| `smg_standard_t8` | 1 | MK2 |
| `smg_standard_t8` | 2 | MC |
| `smg_fastburst_t8` | 1 | MK2 |
| `smg_fastburst_t8` | 2 | MC |
| `smg_folding_t8` | 1 | MK2 |
| `sniper_fastrechamber_t8` | 2 | MC |
| `sniper_mini14_t8` | 1 | MK2 |
| `sniper_powerbolt_t8` | 3 | MK2 |
| `sniper_powerbolt_t8` | 2 | MC |
| `sniper_powersemi_t8` | 2 | MC |
| `sniper_quickscope_t8` | 1 | MK2 |
| `sniper_quickscope_t8` | 2 | MC |
| `tr_flechette_t8` | 2 | MK2 |
| `tr_flechette_t8` | 1 | MC |
| `tr_longburst_t8` | 3 | MK2 |
| `tr_longburst_t8` | 2 | MC |
| `tr_midburst_t8` | 3 | MK2 |
| `tr_midburst_t8` | 2 | MC |

# Characters

Here are the character IDs for the different gamemode, you can use the function `<player> setspecialistindex(int character_id);` to set the skin, the invisible skin is a particular skin without a model.

Warning: if a skin is in multiple mode, the ID is probably not the same between the modes.

## IDs in Zombies

|name|Id|modes|
|-|-|-|
| **Invisible** | 0 | mp,wz,zm |
| **Scarlett** | 1 | wz,zm |
| **Bruno** | 2 | wz,zm |
| **Diego** | 3 | wz,zm |
| **Shaw** | 4 | wz,zm |
| **Richtofen (Primis)** | 5 | wz,zm |
| **Dempsey (Primis)** | 6 | wz,zm |
| **Nikolai (Primis)** | 7 | wz,zm |
| **Takeo (Primis)** | 8 | wz,zm |
| **Christina Fowler** | 9 | zm |
| **Jonathan Warwick** | 10 | zm |
| **Gideon Jones** | 11 | zm |
| **Godfrey** | 12 | zm |
| **Bruno (IX)** | 13 | wz,zm |
| **Diego (IX)** | 14 | wz,zm |
| **Scarlett (IX)** | 15 | wz,zm |
| **Shaw (IX)** | 16 | wz,zm |
| **Dempsey (Ultimis)** | 17 | wz,zm |
| **Nikolai (Ultimis)** | 18 | wz,zm |
| **Richtofen (Ultimis)** | 19 | wz,zm |
| **Takeo (Ultimis)** | 20 | wz,zm |
| **Dempsey (Ultimis/AO)** | 21 | zm |
| **Nikolai (Ultimis/AO)** | 22 | zm |
| **Richtofen (Ultimis/AO)** | 23 | zm |
| **Takeo (Ultimis/AO)** | 24 | zm |
| **Russman** | 25 | wz,zm |
| **Misty (Abigail Briarton)** | 26 | wz,zm |
| **Marlton Johnson** | 27 | wz,zm |
| **Samuel Stuhlinger** | 28 | wz,zm |
| **Richtofen 2** | 29 | zm |

## IDs in Blackout

The infected character has a built-in speed boost.

|name|Id|modes|
|-|-|-|
| **Invisible** | 0 | mp,zm,wz |
| **Battery** | 1 | mp,wz |
| **Firebreak** | 2 | mp,wz |
| **Nomad** | 3 | mp,wz |
| **Prophet** | 4 | mp,wz |
| **Ruin** | 5 | mp,wz |
| **Seraph** | 6 | mp,wz |
| **Ajax** | 7 | mp,wz |
| **Crash** | 8 | mp,wz |
| **Recon** | 9 | mp,wz |
| **Torque** | 10 | mp,wz |
| **Dempsey (Ultimis)** | 11 | zm,wz |
| **Nikolai (Ultimis)** | 12 | zm,wz |
| **Richtofen (Ultimis)** | 13 | zm,wz |
| **Takeo (Ultimis)** | 14 | zm,wz |
| **Dempsey (Primis)** | 15 | zm,wz |
| **Nikolai (Primis)** | 16 | zm,wz |
| **Richtofen (Primis)** | 17 | zm,wz |
| **Takeo (Primis)** | 18 | zm,wz |
| **Shadow man** | 19 | wz |
| **Bruno** | 20 | zm,wz |
| **Diego** | 21 | zm,wz |
| **Scarlett** | 22 | zm,wz |
| **Shaw** | 23 | zm,wz |
| **Bruno (IX)** | 24 | zm,wz |
| **Diego (IX)** | 25 | zm,wz |
| **Scarlett (IX)** | 26 | zm,wz |
| **Shaw (IX)** | 27 | zm,wz |
| **Reznov** | 28 | wz |
| **Mason** | 29 | wz |
| **Woods** | 30 | wz |
| **Menendez** | 31 | wz |
| **Player man 1** | 32 | wz |
| **Player man 2** | 33 | wz |
| **Player man 3** | 34 | wz |
| **Player man 4** | 35 | wz |
| **Player woman 1** | 36 | wz |
| **Player woman 2** | 37 | wz |
| **Player woman 3** | 38 | wz |
| **Player woman 4** | 39 | wz |
| **Hudson** | 40 | wz |
| **Player lvl 20** | 41 | wz |
| **Player lvl 40** | 42 | wz |
| **Player lvl 60** | 43 | wz |
| **Player lvl 80** | 44 | wz |
| **Player lvl 81** | 45 | wz |
| **Zero** | 46 | mp,wz |
| **Reaper (Classic)** | 47 | wz |
| **Outrider** | 48 | mp,wz |
| **Misty (Abigail Briarton)** | 49 | zm,wz |
| **Warden** | 50 | wz |
| **Cosmo** | 51 | wz |
| **Mason (Kid)** | 52 | wz |
| **Zombies (Joe)** | 53 | wz |
| **Hudson (Cool)** | 54 | wz |
| **Zombies (Jane)** | 55 | wz |
| **The Replacer** | 56 | wz |
| **Spectre** | 57 | mp,wz |
| **Blackjack** | 58 | wz |
| **Sergei** | 59 | wz |
| **Sarah Hall** | 60 | wz |
| **Woods (old)** | 61 | wz |
| **Mendendez (top1)** | 62 | wz |
| **The Replacer (Green)** | 63 | wz |
| **Trejo** | 64 | wz |
| **Russman** | 65 | zm,wz |
| **M. Shadows** | 66 | wz |
| **Reaper** | 67 | mp,wz |
| **Price Classic** | 68 | wz |
| **T.E.D.D.** | 69 | wz |
| **Weaver** | 70 | wz |
| **Price Classic** | 71 | wz |
| **Stuhlinger** | 72 | zm,wz |
| **Marlton** | 73 | zm,wz |
| **Zombies (Joe/Infected)** | 74 | mp,wz |
| **Zombies (Jane/Infected)** | 75 | mp,wz |

## IDs in Multiplayer

The infected character has a built-in speed boost, no specialist weapon are linked to them and a grenade is used as an equipment.

|name|Id|modes|
|-|-|-|
| **Invisible** | 0 | wz,zm,mp |
| **Ajax** | 1 | wz,mp |
| **Battery** | 2 | wz,mp |
| **Crash** | 3 | wz,mp |
| **Firebreak** | 4 | wz,mp |
| **Nomad** | 5 | wz,mp |
| **Prophet** | 6 | wz,mp |
| **Recon** | 7 | wz,mp |
| **Ruin** | 8 | wz,mp |
| **Seraph** | 9 | wz,mp |
| **Torque** | 10 | wz,mp |
| **Zero** | 11 | wz,mp |
| **Outrider** | 12 | wz,mp |
| **Spectre** | 13 | wz,mp |
| **Reaper** | 14 | wz,mp |
| **Zombies (Joe/Infected)** | 15 | wz,mp |
| **Zombies (Jane/Infected)** | 16 | wz,mp |

## Skins

Here is the non-exhaustive list of the skin usable. You can set the character using the method described in the introduction of this part.

Before setting any skin, it can be better to reset the skin, it can be done with this code, self is the player

```c++
self setcharacteroutfit(0);
self function_9b48a8e5(0);
self function_ab96a9b5("head", 0);
self function_ab96a9b5("headgear", 0);
self function_ab96a9b5("arms", 0);
self function_ab96a9b5("torso", 0);
self function_ab96a9b5("legs", 0);
self function_ab96a9b5("palette", 0);
self function_ab96a9b5("warpaint", 0);
self function_ab96a9b5("decal", 0);
```

The skin ID can be set using the method

```c++
<player> setcharacteroutfit(int skin_id);
```

The palette ID can be set using the method

```c++
<player> function_ab96a9b5("palette", int palette_id);
```

    

| Character | Title | Skin ID | Palette ID |
|-----------|-------|---------|------------|
| Richtofen | Great war | 2 | 0 |
| Richtofen | Zombie | 1 | 0 |
| Ajax | Chef | 25 | 0 |
| Ajax | Heist | 24 | 0 |
| Ajax | Money | 16 | 0 |
| Ajax | Nebula Blue | 10 | 0 |
| Ajax | Nebula Pink | 10 | 1 |
| Ajax | Nebula Orange | 10 | 2 |
| Ajax | Number | 14 | 0 |
| Ajax | Twitch | 19 | 0 |
| Ajax | White | 0 | 3 |
| Battery | Aviator | 25 | 0 |
| Battery | Criminal | 21 | 0 |
| Battery | Number | 14 | 0 |
| Battery | Money | 16 | 0 |
| Battery | Twitter | 19 | 0 |
| Crash | Banana | 30 | 0 |
| Crash | Blue | 0 | 2 |
| Crash | Magnum | 19 | 0 |
| Crash | Money | 16 | 0 |
| Crash | Nebula Blue | 9 | 0 |
| Crash | Nebula Pink | 9 | 1 |
| Crash | Nebula Orange | 9 | 2 |
| Crash | Number | 14 | 0 |
| Crash | Rambo | 20 | 0 |
| Crash | Red | 8 | 0 |
| Crash | Rigor Mortis | 29 | 0 |
| Crash | Spectre | 28 | 0 |
| Crash | Twitch | 21 | 0 |
| Crash | White | 0 | 3 |
| Firebreak | Nebula Blue | 10 | 0 |
| Firebreak | Nebula Pink | 10 | 1 |
| Firebreak | Nebula Orange | 10 | 2 |
| Firebreak | Money | 17 | 0 |
| Firebreak | Number | 14 | 0 |
| Firebreak | Rabbit | 15 | 0 |
| Firebreak | Silverfish | 9 | 0 |
| Nomad | 80 | 16 | 0 |
| Nomad | Elvis | 17 | 0 |
| Nomad | Money | 15 | 0 |
| Nomad | Number | 13 | 0 |
| Nomad | Twitch | 20 | 0 |
| Nomad | Pirate | 23 | 0 |
| Nomad | Werewolf | 31 | 0 |
| Nomad | White | 0 | 3 |
| Nomad | Zombie | 27 | 0 |
| Outrider | Blank | 19 | 1 |
| Outrider | Cheerleader | 14 | 0 |
| Outrider | Green | 15 | 0 |
| Outrider | Heroes | 18 | 0 |
| Outrider | Money | 3 | 0 |
| Outrider | Number | 4 | 0 |
| Outrider | Pink | 19 | 0 |
| Outrider | Pirate | 10 | 0 |
| Outrider | Red | 1 | 0 |
| Outrider | White | 8 | 0 |
| Prophet | Money | 16 | 0 |
| Prophet | Nebula Blue | 9 | 0 |
| Prophet | Nebula Pink | 9 | 1 |
| Prophet | Nebula Orange | 9 | 2 |
| Prophet | Number | 14 | 0 |
| Prophet | Pirate | 22 | 0 |
| Prophet | Plague | 20 | 0 |
| Prophet | Space | 28 | 0 |
| Prophet | Twitch | 19 | 0 |
| Prophet | White | 0 | 3 |
| Reaper | Spectre | 1 | 0 |
| Reaper | Punk | 2 | 0 |
| Reaper | Red | 3 | 0 |
| Reaper | Number | 4 | 0 |
| Recon | Money | 16 | 0 |
| Recon | Nebula Blue | 10 | 0 |
| Recon | Nebula Pink | 10 | 1 |
| Recon | Nebula Orange | 10 | 2 |
| Recon | Number | 14 | 0 |
| Recon | Fish | 22 | 0 |
| Recon | Snake | 20 | 0 |
| Recon | Twitch | 19 | 0 |
| Recon | White | 0 | 3 |
| Ruin | Biker | 17 | 0 |
| Ruin | Hero | 30 | 0 |
| Ruin | Money | 14 | 0 |
| Ruin | Muertos | 6 | 0 |
| Ruin | Nebula Blue | 10 | 0 |
| Ruin | Nebula Pink | 10 | 1 |
| Ruin | Nebula Orange | 10 | 2 |
| Ruin | Number | 15 | 0 |
| Ruin | Police | 16 | 0 |
| Ruin | Twitch | 21 | 0 |
| Ruin | White | 0 | 3 |
| Ruin | Yellow | 22 | 0 |
| Ruin | Zombie | 26 | 0 |
| Seraph | Heist | 17 | 0 |
| Seraph | Hero | 30 | 0 |
| Seraph | Money | 18 | 0 |
| Seraph | Nebula Blue | 10 | 0 |
| Seraph | Nebula Pink | 10 | 1 |
| Seraph | Nebula Orange | 10 | 2 |
| Seraph | Number | 14 | 0 |
| Seraph | Police | 16 | 0 |
| Seraph | Red | 0 | 2 |
| Seraph | Twitch | 21 | 0 |
| Seraph | Vampire | 24 | 0 |
| Seraph | White | 0 | 3 |
| Spectre | Apocalypse Z | 8 | 0 |
| Spectre | Hero | 12 | 0 |
| Spectre | Japan | 3 | 0 |
| Spectre | Number | 4 | 0 |
| Spectre | Twitch | 6 | 0 |
| Spectre | White | 1 | 3 |
| Torque | Blue | 0 | 1 |
| Torque | Money | 16 | 0 |
| Torque | Number | 14 | 0 |
| Torque | Twitch | 19 | 0 |
| Torque | White | 0 | 3 |
| Torque | Yellow | 0 | 2 |
| Torque | Zombie killer | 21 | 0 |
| Zero | Blue | 1 | 0 |
| Zero | Dark | 6 | 0 |
| Zero | Hero | 23 | 0 |
| Zero | Money | 27 | 0 |
| Zero | Nebula Blue | 4 | 0 |
| Zero | Nebula Pink | 4 | 1 |
| Zero | Nebula Orange | 4 | 2 |
| Zero | Number | 26 | 0 |
| Zero | Pirate | 16 | 0 |
| Zero | Twitch | 13 | 0 |
| Zero | Water | 14 | 0 |
| Zero | White | 0 | 3 |
| Zero | Zombie | 19 | 0 |