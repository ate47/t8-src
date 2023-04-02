all the settings: [gamesettings.csv](gamesettings.csv)

- [All (core)](#all-core)
  - [Modes](#modes)
- [Multiplayer (mp)](#multiplayer-mp)
- [Blackout (Warzone/wz)](#blackout-warzonewz)
  - [General](#general)
  - [XP](#xp)
  - [Characters](#characters)
    - [Multiplayer](#multiplayer)
    - [Zombies](#zombies)
  - [Modes](#modes-1)
  - [Item spawns](#item-spawns)
  - [Zombies](#zombies-1)
- [Zombies (zm)](#zombies-zm)
  - [General](#general-1)
  - [Allow weapon wallbuy](#allow-weapon-wallbuy)


# All (core)


## Modes

- `"infectionmode"` - Is infection mode (true|false)
- `"hardcoremode"` - Is hardcore mode (true|false)

# Multiplayer (mp)

# Blackout (Warzone/wz)

## General

- `"waverespawndelay"` - respawn wave delay (seconds)
- `"hash_35c2d850e39fa704"` - max player count
- `"hash_7695bdd7b20cdda"` - allow to convert the muscle car to the replacer's muscle car 

## XP

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

## Characters

the `"hash_50b1121aee76a7e4"` allow to unlock characters, then you have per character config:

### Multiplayer

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

### Zombies

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


## Modes

- `"wzspectrerising"` - Is WZ Spectrer rising mode (true|false)
- `"wzhardcore"` - Is WZ Hardcore mode (true|false)
- `"hash_4ff7ee3c3a534065"` - Is WZ Pandemic mode (true|false)

## Item spawns

- `"hash_33d1ac5e99fb0584"` - Spawn water balloon, can't be used with `"hash_3e2d2cf6b1cc6c68"`
- `"hash_437b759bd6885560"` - Spawn snowballs

## Zombies

- `"wzzombies"` - Spawn zombies (true|false)

# Zombies (zm)

## General

- `"zmdifficulty"` - Set difficulty, values:
  - 0 = easy
  - 1 = normal
  - 2 = hard
  - 3 = insane
- `"zmtrialsvariant"` - Variant of a trials (gauntlet), default = 0, hard = 1
- `"waverespawndelay"` - respawn wave delay (seconds)
- `"magic"` - enable magic
- `"hash_4cb15aed177a8ef5"` and `"headshotsonly"` - headshots only

## Allow weapon wallbuy

Boolean values to allow wallbuy of a weapon category

- `"hash_6f1440098d849316"` - Allow pistols
- `"hash_edfb07f798aaab5"` - Allow CQB
- `"hash_1f6665b5581f6b6e"` - Allow SMG
- `"hash_1d5c8e6f0e20201a"` - Allow AR
- `"zmweaponstr"` - Allow tacticals
- `"hash_2f6740b518dbeb8f"` - Allow LMG
- `"hash_5bfd047c58816496"` - Allow snipers
- `"zmweaponsknife"` - Allow knifes

