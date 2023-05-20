[Black ops 4 (T8) information...](index.md)

# Game settings

- [Game settings](#game-settings)
  - [All (core)](#all-core)
    - [General](#general)
    - [Modes](#modes)
  - [Multiplayer (mp)](#multiplayer-mp)
    - [General](#general-1)
  - [Blackout (Warzone/wz)](#blackout-warzonewz)
    - [General](#general-2)
    - [XP](#xp)
    - [Characters](#characters)
      - [Multiplayer](#multiplayer)
      - [Zombies](#zombies)
    - [Modes](#modes-1)
    - [Item spawn](#item-spawn)
      - [Items](#items)
      - [Heros](#heros)
      - [Assault rifles](#assault-rifles)
      - [SMGs](#smgs)
      - [Snipers](#snipers)
      - [LMGs](#lmgs)
      - [Pistols](#pistols)
      - [Tactical rifles](#tactical-rifles)
      - [Shotguns](#shotguns)
      - [Specials and Melees](#specials-and-melees)
      - [Equipment and gadgets](#equipment-and-gadgets)
      - [Perks](#perks)
      - [Attachments](#attachments)
    - [Vehicle spawn](#vehicle-spawn)
    - [Zombies](#zombies-1)
  - [Zombies (zm)](#zombies-zm)
    - [General](#general-3)
    - [Entities](#entities)
    - [Powerups](#powerups)
    - [Elixir](#elixir)
    - [Perks](#perks-1)
    - [Rounds](#rounds)
    - [Allow weapon wallbuy](#allow-weapon-wallbuy)


all the settings: [gamesettings.csv](../gamesettings.csv)

You can get the value using `GetGametypeSetting(setting)` in a GSC script, you can set the value using `SetGametypeSetting(setting, value)`.

In zombies, the `zm_custom::function_901b751c(setting)` can be used to find settings, if the setting is `""`, it will return `undefined`.

## All (core)

### General

- `"hash_451245a24412d90f"` - time before checking for inactivity
- `"hash_410c5c7c1e60b534"` - values for inactivity checks (unknown)
- `"hash_6ae29c8144cb7659"` - values for inactivity checks (unknown)
- `"hash_35e9fc8eee6881e0"` - values for inactivity checks (unknown)
- `"hash_7adb62a64c6d963"` - values for inactivity checks (unknown)
- `"hash_1df445b9d1af641f"` - values for inactivity checks (unknown)

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
- `"wzambush"` - Is WZ Ambush mode (true|false)

### Item spawn

the logic behide the item list spawn are in the [`script_5014b7c0ca48e9a8.gsc`](../hashed-3/script_5014b7c0ca48e9a8.gsc) and [`script_2c290bc0b594991c.csc`](../hashed-1/script_2c290bc0b594991c.gsc) scripts.

**Warning**: It's not because an element isn't enabled that you can't use it, you need to find a way to remove it from the map, otherwise you'll get render issue.

#### Items

- `"wzenablebackpack"` - Enable backpack
- `"wzenablehawk"` - Enable Hawk
- `"wzenabledart"` - Enable Dart
- `"wzenablesentrygun"` - Enable Sentry gun
- `"wzenablelv1armor"` - Enable armor lvl 1
- `"wzenablelv2armor"` - Enable armor lvl 2
- `"wzenablelv3armor"` - Enable armor lvl 3
- `"hash_5e9a89fe817a3fac"` - Enable bandage (+25)
- `"wzenablemedkit"` - Enable medkit (+50)
- `"hash_18a48cc68a5ea51b"` - Enable health kit (+200)
- `"wzenabletak5"` - Enable tak5 (disabled?)

#### Heros

- `"wzenableraygun"` - Enable raygun
- `"wzenableblade"` - Enable spectre blade
- `"wzenableblundergat"` - Enable blundergat
- `"wzenablesparrow"` - Enable sparrow
- `"wzenablewarmachine"` - Enable warmachine
- `"wzenableannihilator"` - Enable Annihilator
- `"wzenablealistairsfolly"` - Enable Alistair's folly
- `"wzenabledeathoforion"` - Enable Death of Orion
- `"wzenablesavageimpaler"` - Enable Savage impaler

#### Assault rifles

- `"wzenableicr"` - Enable icr
- `"wzenablerampart"` - Enable rempart
- `"wzenablekn"` - Enable kn
- `"wzenablemaddox"` - Enable maddox
- `"wzenablevapr"` - Enable vapr
- `"wzenableswat"` - Enable swat
- `"wzenablegrav"` - Enable grav
- `"wzenablean94"` - Enable an94
- `"wzenabledoublebarrel"` - Enable echohawk
- unknown: peacekeeper

#### SMGs

- `"wzenablemp40"` - Enable mp40
- `"wzenablemx9"` - Enable mx9
- `"wzenablegks"` - Enable gks
- `"wzenablespitfire"` - Enable spitfire
- `"wzenablecordite"` - Enable cordite
- `"wzenablesaug"` - Enable saug
- `"wzenabledaemon"` - Enable daemon
- `"wzenableswitchblade"` - Enable switchblade
- `"wzenablevmp"` - Enable vmp
- `"wzenableminigun"` - Enable mmg

#### Snipers

- `"wzenablesdm"` - Enable sdm
- `"wzenablekoshka"` - Enable koshka
- `"wzenableoutlaw"` - Enable outlaw
- `"wzenablepaladin"` - Enable paladin
- `"wzenablevendetta"` - Enable vendetta
- unknown: locus

#### LMGs

- `"wzenablevkm"` - Enable vkm
- `"wzenablehades"` - Enable hades
- `"wzenabletitan"` - Enable titan
- `"wzenablezweihander"` - Enable zweihander
- unknown: tigershark

#### Pistols

- `"wzenablemozu"` Enable mozu
- `"wzenablestrife"` Enable strife
- `"wzenablerk7"` Enable rk7
- `"wzenablekap45"` Enable kap45

#### Tactical rifles

- `"wzenableauger"` - Enable auger
- `"wzenableabr"` - Enable abr
- `"wzenableessex"` - Enable essex
- `"wzenablem16"` - Enable m16
- `"wzenableswordfish"` - Enable swordfish
- unknown: stingray

#### Shotguns

- `"wzenablesg12"` - Enable sg12
- `"wzenablemog12"` - Enable mog12
- `"wzenableargus"` - Enable argus
- `"wzenablerampage"` - Enable rampage

#### Specials and Melees

- `"wzenablelauncher"` - Enable hellion salvo
- `"wzenablebowieknife"` - Enable bowie knife
- `"wzenablesecretsanta"` - Enable Secret Santa
- `"wzenableslaybell"` - Enable Slay Bell
- `"wzenablestopsign"` - Enable Full Stop
- `"wzenablecoinbag"` - Enable Cha-Ching
- `"wzenablezombiearm"` - Enable Backhander
- `"wzenablehomewrecker"` - Enable Home Wrecker
- `"wzenableamulet"` - Enable Eye of Apophis
- `"wzenableactionfigure"` - Enable Series 6 Outrider
- unknown: Nifo'oti, Rising Tide

#### Equipment and gadgets

- `"hash_33d1ac5e99fb0584"` - Spawn water balloon, can't be used with `"hash_3e2d2cf6b1cc6c68"`
- `"hash_437b759bd6885560"` - Spawn snowballs
- `"wzenablehomunculus"` - Enable Homunculus
- `"wzenablecymbalmonkey"` - Enable Monkey bomb
- `"wzenabletrophysystem"` - Enable Trophy system
- `"wzenablefraggrenade"` - Enable Frag grenade
- `"wzenablesmokegrenade"` - Enable Smoke grenade
- `"wzenableacidbomb"` - Enable Acid bomb
- `"wzenablewraithfire"` - Enable Wraith fire
- `"wzenableempgrenade"` - Enable emp grenade
- `"wzenablegrapple"` - Enable grapple
- `"wzenablemolotov"` - Enable molotov
- `"wzenableclustergrenade"` - Enable cluster grenade
- `"wzenablecombataxe"` - Enable combat axe
- `"wzenableconcussiongrenade"` - Enable concussion grenade
- `"wzenablerazorwire"` - Enable razor wire
- `"wzenablesensordart"` - Enable sensor dart
- `"hash_7c6aa297d67f94c1"` Enable unknown equipment
- `"hash_2e25d475b271a700"` Enable unknown equipment
- `"hash_2fa72a7ec2d86741"` Enable unknown equipment
- `"hash_565cb574e1da9e2a"` Enable unknown equipment
- `"hash_7d2d9c6d8d1efde4"` Enable unknown equipment
- `"hash_20787bdeafae5592"` Enable unknown equipment
- `"hash_16f10373ec8e6906"` Enable unknown equipment
#### Perks

- `"wzenableperkawareness"` - Enable perk awareness
- `"wzenableperkbrawler"` - Enable perk brawler
- `"wzenableperkconsumer"` - Enable perk consumer
- `"wzenableperkdeadsilence"` - Enable perk deadsilence
- `"wzenableperkengineer"` - Enable perk engineer
- `"wzenableperkironlungs"` - Enable perk iron lungs
- `"wzenableperklooter"` - Enable perk looter
- `"wzenableperkmedic"` - Enable perk medic
- `"wzenableperkmobility"` - Enable perk mobility
- `"wzenableperkoutlander"` - Enable perk outlander
- `"wzenableperkparanoia"` - Enable perk paranoia
- `"wzenableperkreinforced"` - Enable perk reinforced
- `"wzenableperksquadlink"` - Enable perk squadlink
- `"hash_9fa187740ff5e40"` - Enable perk unknown (probably tracker)
- `"hash_78e459ad87509a46"` - Enable perk unknown (probably skulker)

#### Attachments

- `"wzenablereflex"` - Enable reflex
- `"wzenableholo"` - Enable holo
- `"wzenablestock"` - Enable stock
- `"wzenableextmag"` - Enable extended mag
- `"wzenablefastmag"` - Enable fast mag
- `"wzenableelo"` - Enable elo
- `"wzenablelasersight"` - Enable laser sight
- `"wzenablesniperscope"` - Enable sniper scope
- `"wzenablesuppressor"` Enable suppressor
- `"hash_230f75891223e1f5"` Enable attachment unknown
- `"hash_76563462cf31f5c"` Enable attachment unknown
- `"hash_62181bb12898aef6"` Enable attachment unknown
- `"hash_daba3be8725aaab"` Enable attachment unknown
- `"hash_34f53d28a9bbfae9"` Enable attachment unknown
- `"hash_1b28296927171330"` Enable attachment unknown

### Vehicle spawn

the logic behide the vehicle list spawn are in the [`script_5e3ebac930c54131.gsc`](../hashed-1/script_5e3ebac930c54131.gsc) and [`script_7ec566c942981bbd.csc`](../hashed-1/script_7ec566c942981bbd.gsc) scripts.

- `"wzenableatv"` - Spawn ATV
- `"wzenablesuv"` - Spawn SUV
- `"wzenabletacticalraft"` - Spawn tactical raft
- `"wzenablecargotruck"` - Spawn cargo truck
- `"wzenabletank"` - Spawn tank
- `"wzenablepbr"` - Spawn pbr boat
- `"wzenablearav"` - Spawn ARAV
- `"wzenablemotorcycle"` - Spawn motorcycle
- `"wzenablemusclecar"` - Spawn musclecar

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


