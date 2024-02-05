POKEMON_NUMBER = 386

local pokemonsNumbers = {
    -- 1st Gen
    ["Bulbasaur"] = 1,
    ["Baby Bulbasaur"] = 1,
    ["Christmas Bulbasaur"] = 1,
    ["Easter Bulbasaur"] = 1,
    ["Bulmander"] = 1,
    ["Ivysaur"] = 2,
    ["Venusaur"] = 3,
    ["Charmander"] = 4,
    ["Baby Charmander"] = 4,
    ["Christmas Charmander"] = 4,
    ["Easter Charmander"] = 4,
    ["Chartle"] = 4,
    ["Charmeleon"] = 5,
    ["Charizard"] = 6,
    ["Squirtle"] = 7,
    ["Baby Squirtle"] = 7,
    ["Christmas Squirtle"] = 7,
    ["Easter Squirtle"] = 7,
    ["Squirsaur"] = 7,
    ["Wartortle"] = 8,
    ["Blastoise"] = 9,
    ["Caterpie"] = 10,
    ["Christmas Caterpie"] = 10,
    ["Metapod"] = 11,
    ["Butterfree"] = 12,
    ["Weedle"] = 13,
    ["Christmas Weedle"] = 13,
    ["Kakuna"] = 14,
    ["Beedrill"] = 15,
    ["Pidgey"] = 16,
    ["Christmas Pidgey"] = 16,
    ["Pidgeotto"] = 17,
    ["Pidgeot"] = 18,
    ["Rattata"] = 19,
    ["Christmas Rattata"] = 19,
    ["Raticate"] = 20,
    ["Spearow"] = 21,
    ["Christmas Spearow"] = 21,
    ["Fearow"] = 22,
    ["Ekans"] = 23,
    ["Christmas Ekans"] = 23,
    ["Arbok"] = 24,
    ["Pikachu"] = 25,
    ["Baby Pikachu"] = 25,
    ["Christmas Pikachu"] = 25,
    ["Easter Pikachu"] = 25,
    ["Darkchu"] = 25,
    ["Raichu"] = 26,
    ["Sandshrew"] = 27,
    ["Christmas Sandshrew"] = 27,
    ["Sandslash"] = 28,
    ["Nidorana"] = 29,
    ["Nidorina"] = 30,
    ["Nidoqueen"] = 31,
    ["Nidorano"] = 32,
    ["Nidorino"] = 33,
    ["Nidoking"] = 34,
    ["Clefairy"] = 35,
    ["Clefable"] = 36,
    ["Vulpix"] = 37,
    ["Ninetales"] = 38,
    ["Jigglypuff"] = 39,
    ["Wigglytuff"] = 40,
    ["Zubat"] = 41,
    ["Golbat"] = 42,
    ["Oddish"] = 43,
    ["Gloom"] = 44,
    ["Vileplume"] = 45,
    ["Paras"] = 46,
    ["Parasect"] = 47,
    ["Venonat"] = 48,
    ["Venomoth"] = 49,
    ["Diglett"] = 50,
    ["Christmas Diglett"] = 50,
    ["Dugtrio"] = 51,
    ["Meowth"] = 52,
    ["Christmas Meowth"] = 52,
    ["Persian"] = 53,
    ["Psyduck"] = 54,
    ["Golduck"] = 55,
    ["Mankey"] = 56,
    ["Primeape"] = 57,
    ["Growlithe"] = 58,
    ["Arcanine"] = 59,
    ["Poliwag"] = 60,
    ["Poliwhirl"] = 61,
    ["Poliwrath"] = 62,
    ["Abra"] = 63,
    ["Christmas Abra"] = 63,
    ["Kadabra"] = 64,
    ["Alakazam"] = 65,
    ["Machop"] = 66,
    ["Christmas Machop"] = 66,
    ["Machoke"] = 67,
    ["Machamp"] = 68,
    ["Bellsprout"] = 69,
    ["Weepinbell"] = 70,
    ["Victreebel"] = 71,
    ["Tentacool"] = 72,
    ["Tentacruel"] = 73,
    ["Geodude"] = 74,
    ["Christmas Geodude"] = 74,
    ["Graveler"] = 75,
    ["Golem"] = 76,
    ["Ponyta"] = 77,
    ["Rapidash"] = 78,
    ["Slowpoke"] = 79,
    ["Slowbro"] = 80,
    ["Magnemite"] = 81,
    ["Magneton"] = 82,
    ["Farfetch'd"] = 83,
    ["Doduo"] = 84,
    ["Dodrio"] = 85,
    ["Seel"] = 86,
    ["Dewgong"] = 87,
    ["Grimer"] = 88,
    ["Christmas Grimer"] = 88,
    ["Muk"] = 89,
    ["Shellder"] = 90,
    ["Cloyster"] = 91,
    ["Gastly"] = 92,
    ["Christmas Gastly"] = 92,
    ["Haunter"] = 93,
    ["Gengar"] = 94,
    ["Onix"] = 95,
    ["Drowzee"] = 96,
    ["Hypno"] = 97,
    ["Krabby"] = 98,
    ["Kingler"] = 99,
    ["Voltorb"] = 100,
    ["Electrode"] = 101,
    ["Exeggcute"] = 102,
    ["Exeggutor"] = 103,
    ["Cubone"] = 104,
    ["Marowak"] = 105,
    ["Hitmonlee"] = 106,
    ["Hitmonchan"] = 107,
    ["Lickitung"] = 108,
    ["Koffing"] = 109,
    ["Weezing"] = 110,
    ["Rhyhorn"] = 111,
    ["Rhydon"] = 112,
    ["Chansey"] = 113,
    ["Tangela"] = 114,
    ["Kangaskhan"] = 115,
    ["Horsea"] = 116,
    ["Seadra"] = 117,
    ["Goldeen"] = 118,
    ["Seaking"] = 119,
    ["Staryu"] = 120,
    ["Starmie"] = 121,
    ["Mr. Mime"] = 122,
    ["Scyther"] = 123,
    ["Jynx"] = 124,
    ["Electabuzz"] = 125,
    ["Magmar"] = 126,
    ["Pinsir"] = 127,
    ["Tauros"] = 128,
    ["Magikarp"] = 129,
    ["Gyarados"] = 130,
    ["Lapras"] = 131,
    ["Ditto"] = 132,
    ["Eevee"] = 133,
    ["Vaporeon"] = 134,
    ["Jolteon"] = 135,
    ["Flareon"] = 136,
    ["Porygon"] = 137,
    ["Omanyte"] = 138,
    ["Omastar"] = 139,
    ["Kabuto"] = 140,
    ["Kabutops"] = 141,
    ["Aerodactyl"] = 142,
    ["Snorlax"] = 143,
    ["Articuno"] = 144,
    ["Zapdos"] = 145,
    ["Moltres"] = 146,
    ["Dratini"] = 147,
    ["Dragonair"] = 148,
    ["Dragonite"] = 149,
    ["Mewtwo"] = 150,
    ["Mew"] = 151,
    -- 2nd Gen
    ["Chikorita"] = 152,
    ["Bayleef"] = 153,
    ["Meganium"] = 154,
    ["Cyndaquil"] = 155,
    ["Quilava"] = 156,
    ["Typhlosion"] = 157,
    ["Totodile"] = 158,
    ["Croconaw"] = 159,
    ["Feraligatr"] = 160,
    ["Sentret"] = 161,
    ["Furret"] = 162,
    ["Hoothoot"] = 163,
    ["Noctowl"] = 164,
    ["Ledyba"] = 165,
    ["Ledian"] = 166,
    ["Spinarak"] = 167,
    ["Ariados"] = 168,
    ["Crobat"] = 169,
    ["Chinchou"] = 170,
    ["Lanturn"] = 171,
    ["Pichu"] = 172,
    ["Cleffa"] = 173,
    ["Igglybuff"] = 174,
    ["Togepi"] = 175,
    ["Togetic"] = 176,
    ["Natu"] = 177,
    ["Xatu"] = 178,
    ["Mareep"] = 179,
    ["Flaaffy"] = 180,
    ["Ampharos"] = 181,
    ["Bellossom"] = 182,
    ["Marill"] = 183,
    ["Azumarill"] = 184,
    ["Sudowoodo"] = 185,
    ["Politoed"] = 186,
    ["Hoppip"] = 187,
    ["Skiploom"] = 188,
    ["Jumpluff"] = 189,
    ["Aipom"] = 190,
    ["Sunkern"] = 191,
    ["Sunflora"] = 192,
    ["Yanma"] = 193,
    ["Wooper"] = 194,
    ["Quagsire"] = 195,
    ["Espeon"] = 196,
    ["Umbreon"] = 197,
    ["Murkrow"] = 198,
    ["Slowking"] = 199,
    ["Misdreavus"] = 200,
    ["Unown"] = 201,
    ["Wobbuffet"] = 202,
    ["Girafarig"] = 203,
    ["Pineco"] = 204,
    ["Forretress"] = 205,
    ["Dunsparce"] = 206,
    ["Gligar"] = 207,
    ["Steelix"] = 208,
    ["Snubbull"] = 209,
    ["Granbull"] = 210,
    ["Qwilfish"] = 211,
    ["Scizor"] = 212,
    ["Shuckle"] = 213,
    ["Heracross"] = 214,
    ["Sneasel"] = 215,
    ["Teddiursa"] = 216,
    ["Ursaring"] = 217,
    ["Slugma"] = 218,
    ["Magcargo"] = 219,
    ["Swinub"] = 220,
    ["Piloswine"] = 221,
    ["Corsola"] = 222,
    ["Remoraid"] = 223,
    ["Octillery"] = 224,
    ["Delibird"] = 225,
    ["Mantine"] = 226,
    ["Skarmory"] = 227,
    ["Houndour"] = 228,
    ["Houndoom"] = 229,
    ["Kingdra"] = 230,
    ["Phanpy"] = 231,
    ["Donphan"] = 232,
    ["Porygon2"] = 233,
    ["Stantler"] = 234,
    ["Smeargle"] = 235,
    ["Tyrogue"] = 236,
    ["Hitmontop"] = 237,
    ["Smoochum"] = 238,
    ["Elekid"] = 239,
    ["Magby"] = 240,
    ["Miltank"] = 241,
    ["Blissey"] = 242,
    ["Raikou"] = 243,
    ["Entei"] = 244,
    ["Suicune"] = 245,
    ["Larvitar"] = 246,
    ["Pupitar"] = 247,
    ["Tyranitar"] = 248,
    ["Lugia"] = 249,
    ["Ho-Oh"] = 250,
    ["Celebi"] = 251,
    -- 3rd Gen
    ["Treecko"] = 252,
    ["Grovyle"] = 253,
    ["Sceptile"] = 254,
    ["Torchic"] = 255,
    ["Combusken"] = 256,
    ["Blaziken"] = 257,
    ["Mudkip"] = 258,
    ["Marshtomp"] = 259,
    ["Swampert"] = 260,
    ["Poochyena"] = 261,
    ["Mightyena"] = 262,
    ["Zigzagoon"] = 263,
    ["Linoone"] = 264,
    ["Wurmple"] = 265,
    ["Silcoon"] = 266,
    ["Beautifly"] = 267,
    ["Cascoon"] = 268,
    ["Dustox"] = 269,
    ["Lotad"] = 270,
    ["Lombre"] = 271,
    ["Ludicolo"] = 272,
    ["Seedot"] = 273,
    ["Nuzleaf"] = 274,
    ["Shiftry"] = 275,
    ["Taillow"] = 276,
    ["Swellow"] = 277,
    ["Wingull"] = 278,
    ["Pelipper"] = 279,
    ["Ralts"] = 280,
    ["Kirlia"] = 281,
    ["Gardevoir"] = 282,
    ["Surskit"] = 283,
    ["Masquerain"] = 284,
    ["Shroomish"] = 285,
    ["Breloom"] = 286,
    ["Slakoth"] = 287,
    ["Vigoroth"] = 288,
    ["Slaking"] = 289,
    ["Nincada"] = 290,
    ["Ninjask"] = 291,
    ["Shedinja"] = 292,
    ["Whismur"] = 293,
    ["Loudred"] = 294,
    ["Exploud"] = 295,
    ["Makuhita"] = 296,
    ["Hariyama"] = 297,
    ["Azurill"] = 298,
    ["Nosepass"] = 299,
    ["Skitty"] = 300,
    ["Delcatty"] = 301,
    ["Sableye"] = 302,
    ["Mawile"] = 303,
    ["Aron"] = 304,
    ["Lairon"] = 305,
    ["Aggron"] = 306,
    ["Meditite"] = 307,
    ["Medicham"] = 308,
    ["Electrike"] = 309,
    ["Manectric"] = 310,
    ["Plusle"] = 311,
    ["Minun"] = 312,
    ["Volbeat"] = 313,
    ["Illumise"] = 314,
    ["Roselia"] = 315,
    ["Gulpin"] = 316,
    ["Swalot"] = 317,
    ["Carvanha"] = 318,
    ["Sharpedo"] = 319,
    ["Wailmer"] = 320,
    ["Wailord"] = 321,
    ["Numel"] = 322,
    ["Camerupt"] = 323,
    ["Torkoal"] = 324,
    ["Spoink"] = 325,
    ["Grumpig"] = 326,
    ["Spinda"] = 327,
    ["Trapinch"] = 328,
    ["Vibrava"] = 329,
    ["Flygon"] = 330,
    ["Cacnea"] = 331,
    ["Cacturne"] = 332,
    ["Swablu"] = 333,
    ["Altaria"] = 334,
    ["Zangoose"] = 335,
    ["Seviper"] = 336,
    ["Lunatone"] = 337,
    ["Solrock"] = 338,
    ["Barboach"] = 339,
    ["Whiscash"] = 340,
    ["Corphish"] = 341,
    ["Crawdaunt"] = 342,
    ["Baltoy"] = 343,
    ["Claydol"] = 344,
    ["Lileep"] = 345,
    ["Cradily"] = 346,
    ["Anorith"] = 347,
    ["Armaldo"] = 348,
    ["Feebas"] = 349,
    ["Milotic"] = 350,
    ["Castform"] = 351,
    ["Kecleon"] = 352,
    ["Shuppet"] = 353,
    ["Banette"] = 354,
    ["Duskull"] = 355,
    ["Dusclops"] = 356,
    ["Tropius"] = 357,
    ["Chimecho"] = 358,
    ["Absol"] = 359,
    ["Wynaut"] = 360,
    ["Snorunt"] = 361,
    ["Glalie"] = 362,
    ["Spheal"] = 363,
    ["Sealeo"] = 364,
    ["Walrein"] = 365,
    ["Clamperl"] = 366,
    ["Huntail"] = 367,
    ["Gorebyss"] = 368,
    ["Relicanth"] = 369,
    ["Luvdisc"] = 370,
    ["Bagon"] = 371,
    ["Shelgon"] = 372,
    ["Salamence"] = 373,
    ["Beldum"] = 374,
    ["Metang"] = 375,
    ["Metagross"] = 376,
    ["Regirock"] = 377,
    ["Regice"] = 378,
    ["Registeel"] = 379,
    ["Latias"] = 380,
    ["Latios"] = 381,
    ["Kyogre"] = 382,
    ["Groudon"] = 383,
    ["Rayquaza"] = 384,
    ["Jirachi"] = 385,
    ["Deoxys"] = 386,
    -- Shiny
    ["Shiny Bulbasaur"] = 1,
    ["Shiny Ivysaur"] = 2,
    ["Shiny Venusaur"] = 3,
    ["Shiny Charmander"] = 4,
    ["Shiny Charmeleon"] = 5,
    ["Shiny Charizard"] = 6,
    ["Shiny Squirtle"] = 7,
    ["Shiny Wartortle"] = 8,
    ["Shiny Blastoise"] = 9,
    ["Shiny Caterpie"] = 10,
    ["Shiny Metapod"] = 11,
    ["Shiny Butterfree"] = 12,
    ["Shiny Weedle"] = 13,
    ["Shiny Kakuna"] = 14,
    ["Shiny Beedrill"] = 15,
    ["Shiny Pidgey"] = 16,
    ["Shiny Pidgeotto"] = 17,
    ["Shiny Pidgeot"] = 18,
    ["Shiny Rattata"] = 19,
    ["Shiny Raticate"] = 20,
    ["Shiny Spearow"] = 21,
    ["Shiny Fearow"] = 22,
    ["Shiny Ekans"] = 23,
    ["Shiny Arbok"] = 24,
    ["Shiny Pikachu"] = 25,
    ["Shiny Raichu"] = 26,
    ["Shiny Sandshrew"] = 27,
    ["Shiny Sandslash"] = 28,
    ["Shiny Nidorana"] = 29,
    ["Shiny Nidorina"] = 30,
    ["Shiny Nidoqueen"] = 31,
    ["Shiny Nidorano"] = 32,
    ["Shiny Nidorino"] = 33,
    ["Shiny Nidoking"] = 34,
    ["Shiny Clefairy"] = 35,
    ["Shiny Clefable"] = 36,
    ["Shiny Vulpix"] = 37,
    ["Shiny Ninetales"] = 38,
    ["Shiny Jigglypuff"] = 39,
    ["Shiny Wigglytuff"] = 40,
    ["Shiny Zubat"] = 41,
    ["Shiny Golbat"] = 42,
    ["Shiny Oddish"] = 43,
    ["Shiny Gloom"] = 44,
    ["Shiny Vileplume"] = 45,
    ["Shiny Paras"] = 46,
    ["Shiny Parasect"] = 47,
    ["Shiny Venonat"] = 48,
    ["Shiny Venomoth"] = 49,
    ["Shiny Diglett"] = 50,
    ["Shiny Dugtrio"] = 51,
    ["Shiny Meowth"] = 52,
    ["Shiny Persian"] = 53,
    ["Shiny Psyduck"] = 54,
    ["Shiny Golduck"] = 55,
    ["Shiny Mankey"] = 56,
    ["Shiny Primeape"] = 57,
    ["Shiny Growlithe"] = 58,
    ["Shiny Arcanine"] = 59,
    ["Shiny Poliwag"] = 60,
    ["Shiny Poliwhirl"] = 61,
    ["Shiny Poliwrath"] = 62,
    ["Shiny Abra"] = 63,
    ["Shiny Kadabra"] = 64,
    ["Shiny Alakazam"] = 65,
    ["Shiny Machop"] = 66,
    ["Shiny Machoke"] = 67,
    ["Shiny Machamp"] = 68,
    ["Shiny Bellsprout"] = 69,
    ["Shiny Weepinbell"] = 70,
    ["Shiny Victreebel"] = 71,
    ["Shiny Tentacool"] = 72,
    ["Shiny Tentacruel"] = 73,
    ["Shiny Geodude"] = 74,
    ["Shiny Graveler"] = 75,
    ["Shiny Golem"] = 76,
    ["Shiny Ponyta"] = 77,
    ["Shiny Rapidash"] = 78,
    ["Shiny Slowpoke"] = 79,
    ["Shiny Slowbro"] = 80,
    ["Shiny Magnemite"] = 81,
    ["Shiny Magneton"] = 82,
    ["Shiny Farfetchd"] = 83,
    ["Shiny Doduo"] = 84,
    ["Shiny Dodrio"] = 85,
    ["Shiny Seel"] = 86,
    ["Shiny Dewgong"] = 87,
    ["Shiny Grimer"] = 88,
    ["Shiny Muk"] = 89,
    ["Shiny Shellder"] = 90,
    ["Shiny Cloyster"] = 91,
    ["Shiny Gastly"] = 92,
    ["Shiny Haunter"] = 93,
    ["Shiny Gengar"] = 94,
    ["Shiny Onix"] = 95,
    ["Shiny Drowzee"] = 96,
    ["Shiny Hypno"] = 97,
    ["Shiny Krabby"] = 98,
    ["Shiny Kingler"] = 99,
    ["Shiny Voltorb"] = 100,
    ["Shiny Electrode"] = 101,
    ["Shiny Exeggcute"] = 102,
    ["Shiny Exeggutor"] = 103,
    ["Shiny Cubone"] = 104,
    ["Shiny Marowak"] = 105,
    ["Shiny Hitmonlee"] = 106,
    ["Shiny Hitmonchan"] = 107,
    ["Shiny Lickitung"] = 108,
    ["Shiny Koffing"] = 109,
    ["Shiny Weezing"] = 110,
    ["Shiny Rhyhorn"] = 111,
    ["Shiny Rhydon"] = 112,
    ["Shiny Chansey"] = 113,
    ["Shiny Tangela"] = 114,
    ["Shiny Kangaskhan"] = 115,
    ["Shiny Horsea"] = 116,
    ["Shiny Seadra"] = 117,
    ["Shiny Goldeen"] = 118,
    ["Shiny Seaking"] = 119,
    ["Shiny Staryu"] = 120,
    ["Shiny Starmie"] = 121,
    ["Shiny Mr. Mime"] = 122,
    ["Shiny Scyther"] = 123,
    ["Shiny Jynx"] = 124,
    ["Shiny Electabuzz"] = 125,
    ["Shiny Magmar"] = 126,
    ["Shiny Pinsir"] = 127,
    ["Shiny Tauros"] = 128,
    ["Shiny Magikarp"] = 129,
    ["Shiny Gyarados"] = 130,
    ["Shiny Lapras"] = 131,
    ["Shiny Ditto"] = 132,
    ["Shiny Eevee"] = 133,
    ["Shiny Vaporeon"] = 134,
    ["Shiny Jolteon"] = 135,
    ["Shiny Flareon"] = 136,
    ["Shiny Porygon"] = 137,
    ["Shiny Omanyte"] = 138,
    ["Shiny Omastar"] = 139,
    ["Shiny Kabuto"] = 140,
    ["Shiny Kabutops"] = 141,
    ["Shiny Aerodactyl"] = 142,
    ["Shiny Snorlax"] = 143,
    ["Shiny Articuno"] = 144,
    ["Shiny Zapdos"] = 145,
    ["Shiny Moltres"] = 146,
    ["Shiny Dratini"] = 147,
    ["Shiny Dragonair"] = 148,
    ["Shiny Dragonite"] = 149,
    ["Shiny Mewtwo"] = 150,
    ["Shiny Mew"] = 151,
    -- 2nd Shiny
    --    ["Shiny Bellossom"] = 182,
    --    ["Shiny Crobat"] = 169,
    --    ["Shiny Espeon"] = 196,
    --    ["Shiny Kingdra"] = 230,
    --    ["Shiny Politoed"] = 186,
    --    ["Shiny Scizor"] = 212,
    --    ["Shiny Slowking"] = 199,
    --    ["Shiny Steelix"] = 208,
    --    ["Shiny Umbreon"] = 197,
    --    ["Shiny Chikorita"] = 152,
    --    ["Shiny Bayleef"] = 153,
    --    ["Shiny Meganium"] = 154,
    --    ["Shiny Cyndaquil"] = 155,
    --    ["Shiny Quilava"] = 156,
    --    ["Shiny Typhlosion"] = 157,
    --    ["Shiny Totodile"] = 158,
    --    ["Shiny Croconaw"] = 159,
    --    ["Shiny Feraligatr"] = 160,
    --    ["Shiny Mareep"] = 179,
    --    ["Shiny Flaaffy"] = 180,
    --    ["Shiny Ampharos"] = 181,
    --    ["Shiny Marill"] = 183,
    --    ["Shiny Azumarill"] = 184,
    --    ["Shiny Hoppip"] = 187,
    --    ["Shiny Skiploom"] = 188,
    --    ["Shiny Jumpluff"] = 189,
    --    ["Shiny Sunkern"] = 191,
    --    ["Shiny Sunflora"] = 192,
    --    ["Shiny Houndour"] = 228,
    --    ["Shiny Houndoom"] = 229
    ["Shiny Chikorita"] = 152,
    ["Shiny Bayleef"] = 153,
    ["Shiny Meganium"] = 154,
    ["Shiny Cyndaquil"] = 155,
    ["Shiny Quilava"] = 156,
    ["Shiny Typhlosion"] = 157,
    ["Shiny Totodile"] = 158,
    ["Shiny Croconaw"] = 159,
    ["Shiny Feraligatr"] = 160,
    ["Shiny Sentret"] = 161,
    ["Shiny Furret"] = 162,
    ["Shiny Hoothoot"] = 163,
    ["Shiny Noctowl"] = 164,
    ["Shiny Ledyba"] = 165,
    ["Shiny Ledian"] = 166,
    ["Shiny Spinarak"] = 167,
    ["Shiny Ariados"] = 168,
    ["Shiny Crobat"] = 169,
    ["Shiny Chinchou"] = 170,
    ["Shiny Lanturn"] = 171,
    ["Shiny Pichu"] = 172,
    ["Shiny Cleffa"] = 173,
    ["Shiny Igglybuff"] = 174,
    ["Shiny Togepi"] = 175,
    ["Shiny Togetic"] = 176,
    ["Shiny Natu"] = 177,
    ["Shiny Xatu"] = 178,
    ["Shiny Mareep"] = 179,
    ["Shiny Flaaffy"] = 180,
    ["Shiny Ampharos"] = 181,
    ["Shiny Bellossom"] = 182,
    ["Shiny Marill"] = 183,
    ["Shiny Azumarill"] = 184,
    ["Shiny Sudowoodo"] = 185,
    ["Shiny Politoed"] = 186,
    ["Shiny Hoppip"] = 187,
    ["Shiny Skiploom"] = 188,
    ["Shiny Jumpluff"] = 189,
    ["Shiny Aipom"] = 190,
    ["Shiny Sunkern"] = 191,
    ["Shiny Sunflora"] = 192,
    ["Shiny Yanma"] = 193,
    ["Shiny Wooper"] = 194,
    ["Shiny Quagsire"] = 195,
    ["Shiny Espeon"] = 196,
    ["Shiny Umbreon"] = 197,
    ["Shiny Murkrow"] = 198,
    ["Shiny Slowking"] = 199,
    ["Shiny Misdreavus"] = 200,
    ["Shiny Wobbuffet"] = 202,
    ["Shiny Girafarig"] = 203,
    ["Shiny Pineco"] = 204,
    ["Shiny Forretress"] = 205,
    ["Shiny Dunsparce"] = 206,
    ["Shiny Gligar"] = 207,
    ["Shiny Steelix"] = 208,
    ["Shiny Snubbull"] = 209,
    ["Shiny Granbull"] = 210,
    ["Shiny Qwilfish"] = 211,
    ["Shiny Scizor"] = 212,
    ["Shiny Shuckle"] = 213,
    ["Shiny Heracross"] = 214,
    ["Shiny Sneasel"] = 215,
    ["Shiny Teddiursa"] = 216,
    ["Shiny Ursaring"] = 217,
    ["Shiny Slugma"] = 218,
    ["Shiny Magcargo"] = 219,
    ["Shiny Swinub"] = 220,
    ["Shiny Piloswine"] = 221,
    ["Shiny Corsola"] = 222,
    ["Shiny Remoraid"] = 223,
    ["Shiny Octillery"] = 224,
    ["Shiny Delibird"] = 225,
    ["Shiny Mantine"] = 226,
    ["Shiny Skarmory"] = 227,
    ["Shiny Houndour"] = 228,
    ["Shiny Houndoom"] = 229,
    ["Shiny Kingdra"] = 230,
    ["Shiny Phanpy"] = 231,
    ["Shiny Donphan"] = 232,
    ["Shiny Porygon2"] = 233,
    ["Shiny Stantler"] = 234,
    ["Shiny Smeargle"] = 235,
    ["Shiny Tyrogue"] = 236,
    ["Shiny Hitmontop"] = 237,
    ["Shiny Smoochum"] = 238,
    ["Shiny Elekid"] = 239,
    ["Shiny Magby"] = 240,
    ["Shiny Miltank"] = 241,
    ["Shiny Blissey"] = 242,
    ["Shiny Larvitar"] = 246,
    ["Shiny Pupitar"] = 247,
    ["Shiny Tyranitar"] = 248,

    -- Shiny 3rd Gen
    ["Shiny Treecko"] = 252,
    ["Shiny Grovyle"] = 253,
    ["Shiny Sceptile"] = 254,
    ["Shiny Torchic"] = 255,
    ["Shiny Combusken"] = 256,
    ["Shiny Blaziken"] = 257,
    ["Shiny Mudkip"] = 258,
    ["Shiny Marshtomp"] = 259,
    ["Shiny Swampert"] = 260,
    ["Shiny Poochyena"] = 261,
    ["Shiny Mightyena"] = 262,
    ["Shiny Zigzagoon"] = 263,
    ["Shiny Linoone"] = 264,
    ["Shiny Wurmple"] = 265,
    ["Shiny Silcoon"] = 266,
    ["Shiny Beautifly"] = 267,
    ["Shiny Cascoon"] = 268,
    ["Shiny Dustox"] = 269,
    ["Shiny Lotad"] = 270,
    ["Shiny Lombre"] = 271,
    ["Shiny Ludicolo"] = 272,
    ["Shiny Seedot"] = 273,
    ["Shiny Nuzleaf"] = 274,
    ["Shiny Shiftry"] = 275,
    ["Shiny Taillow"] = 276,
    ["Shiny Swellow"] = 277,
    ["Shiny Wingull"] = 278,
    ["Shiny Pelipper"] = 279,
    ["Shiny Ralts"] = 280,
    ["Shiny Kirlia"] = 281,
    ["Shiny Gardevoir"] = 282,
    ["Shiny Surskit"] = 283,
    ["Shiny Masquerain"] = 284,
    ["Shiny Shroomish"] = 285,
    ["Shiny Breloom"] = 286,
    ["Shiny Slakoth"] = 287,
    ["Shiny Vigoroth"] = 288,
    ["Shiny Slaking"] = 289,
    ["Shiny Nincada"] = 290,
    ["Shiny Ninjask"] = 291,
    ["Shiny Shedinja"] = 292,
    ["Shiny Whismur"] = 293,
    ["Shiny Loudred"] = 294,
    ["Shiny Exploud"] = 295,
    ["Shiny Makuhita"] = 296,
    ["Shiny Hariyama"] = 297,
    ["Shiny Azurill"] = 298,
    ["Shiny Nosepass"] = 299,
    ["Shiny Skitty"] = 300,
    ["Shiny Delcatty"] = 301,
    ["Shiny Sableye"] = 302,
    ["Shiny Mawile"] = 303,
    ["Shiny Aron"] = 304,
    ["Shiny Lairon"] = 305,
    ["Shiny Aggron"] = 306,
    ["Shiny Meditite"] = 307,
    ["Shiny Medicham"] = 308,
    ["Shiny Electrike"] = 309,
    ["Shiny Manectric"] = 310,
    ["Shiny Plusle"] = 311,
    ["Shiny Minun"] = 312,
    ["Shiny Volbeat"] = 313,
    ["Shiny Illumise"] = 314,
    ["Shiny Roselia"] = 315,
    ["Shiny Gulpin"] = 316,
    ["Shiny Swalot"] = 317,
    ["Shiny Carvanha"] = 318,
    ["Shiny Sharpedo"] = 319,
    ["Shiny Wailmer"] = 320,
    ["Shiny Wailord"] = 321,
    ["Shiny Numel"] = 322,
    ["Shiny Camerupt"] = 323,
    ["Shiny Torkoal"] = 324,
    ["Shiny Spoink"] = 325,
    ["Shiny Grumpig"] = 326,
    ["Shiny Spinda"] = 327,
    ["Shiny Trapinch"] = 328,
    ["Shiny Vibrava"] = 329,
    ["Shiny Flygon"] = 330,
    ["Shiny Cacnea"] = 331,
    ["Shiny Cacturne"] = 332,
    ["Shiny Swablu"] = 333,
    ["Shiny Altaria"] = 334,
    ["Shiny Zangoose"] = 335,
    ["Shiny Seviper"] = 336,
    ["Shiny Lunatone"] = 337,
    ["Shiny Solrock"] = 338,
    ["Shiny Barboach"] = 339,
    ["Shiny Whiscash"] = 340,
    ["Shiny Corphish"] = 341,
    ["Shiny Crawdaunt"] = 342,
    ["Shiny Baltoy"] = 343,
    ["Shiny Claydol"] = 344,
    ["Shiny Lileep"] = 345,
    ["Shiny Cradily"] = 346,
    ["Shiny Anorith"] = 347,
    ["Shiny Armaldo"] = 348,
    ["Shiny Feebas"] = 349,
    ["Shiny Milotic"] = 350,
    ["Shiny Castform"] = 351,
    ["Shiny Kecleon"] = 352,
    ["Shiny Shuppet"] = 353,
    ["Shiny Banette"] = 354,
    ["Shiny Duskull"] = 355,
    ["Shiny Dusclops"] = 356,
    ["Shiny Tropius"] = 357,
    ["Shiny Chimecho"] = 358,
    ["Shiny Absol"] = 359,
    ["Shiny Wynaut"] = 360,
    ["Shiny Snorunt"] = 361,
    ["Shiny Glalie"] = 362,
    ["Shiny Spheal"] = 363,
    ["Shiny Sealeo"] = 364,
    ["Shiny Walrein"] = 365,
    ["Shiny Clamperl"] = 366,
    ["Shiny Huntail"] = 367,
    ["Shiny Gorebyss"] = 368,
    ["Shiny Relicanth"] = 369,
    ["Shiny Luvdisc"] = 370,
    ["Shiny Bagon"] = 371,
    ["Shiny Shelgon"] = 372,
    ["Shiny Salamence"] = 373,
    ["Shiny Beldum"] = 374,
    ["Shiny Metang"] = 375,
    ["Shiny Metagross"] = 376,
    ["Shiny Regirock"] = 377,
    ["Shiny Regice"] = 378,
    ["Shiny Registeel"] = 379,
    ["Shiny Latias"] = 380,
    ["Shiny Latios"] = 381,
    ["Shiny Kyogre"] = 382,
    ["Shiny Groudon"] = 383,
    ["Shiny Rayquaza"] = 384,
    ["Shiny Jirachi"] = 385,
    ["Shiny Deoxys"] = 386,
}

local pokemonNameByNumber = {
    [1] = "Bulbasaur",
    [2] = "Ivysaur",
    [3] = "Venusaur",
    [4] = "Charmander",
    [5] = "Charmeleon",
    [6] = "Charizard",
    [7] = "Squirtle",
    [8] = "Wartortle",
    [9] = "Blastoise",
    [10] = "Caterpie",
    [11] = "Metapod",
    [12] = "Butterfree",
    [13] = "Weedle",
    [14] = "Kakuna",
    [15] = "Beedrill",
    [16] = "Pidgey",
    [17] = "Pidgeotto",
    [18] = "Pidgeot",
    [19] = "Rattata",
    [20] = "Raticate",
    [21] = "Spearow",
    [22] = "Fearow",
    [23] = "Ekans",
    [24] = "Arbok",
    [25] = "Pikachu",
    [26] = "Raichu",
    [27] = "Sandshrew",
    [28] = "Sandslash",
    [29] = "Nidorana",
    [30] = "Nidorina",
    [31] = "Nidoqueen",
    [32] = "Nidorano",
    [33] = "Nidorino",
    [34] = "Nidoking",
    [35] = "Clefairy",
    [36] = "Clefable",
    [37] = "Vulpix",
    [38] = "Ninetales",
    [39] = "Jigglypuff",
    [40] = "Wigglytuff",
    [41] = "Zubat",
    [42] = "Golbat",
    [43] = "Oddish",
    [44] = "Gloom",
    [45] = "Vileplume",
    [46] = "Paras",
    [47] = "Parasect",
    [48] = "Venonat",
    [49] = "Venomoth",
    [50] = "Diglett",
    [51] = "Dugtrio",
    [52] = "Meowth",
    [53] = "Persian",
    [54] = "Psyduck",
    [55] = "Golduck",
    [56] = "Mankey",
    [57] = "Primeape",
    [58] = "Growlithe",
    [59] = "Arcanine",
    [60] = "Poliwag",
    [61] = "Poliwhirl",
    [62] = "Poliwrath",
    [63] = "Abra",
    [64] = "Kadabra",
    [65] = "Alakazam",
    [66] = "Machop",
    [67] = "Machoke",
    [68] = "Machamp",
    [69] = "Bellsprout",
    [70] = "Weepinbell",
    [71] = "Victreebel",
    [72] = "Tentacool",
    [73] = "Tentacruel",
    [74] = "Geodude",
    [75] = "Graveler",
    [76] = "Golem",
    [77] = "Ponyta",
    [78] = "Rapidash",
    [79] = "Slowpoke",
    [80] = "Slowbro",
    [81] = "Magnemite",
    [82] = "Magneton",
    [83] = "Farfetchd",
    [84] = "Doduo",
    [85] = "Dodrio",
    [86] = "Seel",
    [87] = "Dewgong",
    [88] = "Grimer",
    [89] = "Muk",
    [90] = "Shellder",
    [91] = "Cloyster",
    [92] = "Gastly",
    [93] = "Haunter",
    [94] = "Gengar",
    [95] = "Onix",
    [96] = "Drowzee",
    [97] = "Hypno",
    [98] = "Krabby",
    [99] = "Kingler",
    [100] = "Voltorb",
    [101] = "Electrode",
    [102] = "Exeggcute",
    [103] = "Exeggutor",
    [104] = "Cubone",
    [105] = "Marowak",
    [106] = "Hitmonlee",
    [107] = "Hitmonchan",
    [108] = "Lickitung",
    [109] = "Koffing",
    [110] = "Weezing",
    [111] = "Rhyhorn",
    [112] = "Rhydon",
    [113] = "Chansey",
    [114] = "Tangela",
    [115] = "Kangaskhan",
    [116] = "Horsea",
    [117] = "Seadra",
    [118] = "Goldeen",
    [119] = "Seaking",
    [120] = "Staryu",
    [121] = "Starmie",
    [122] = "Mr. Mime",
    [123] = "Scyther",
    [124] = "Jynx",
    [125] = "Electabuzz",
    [126] = "Magmar",
    [127] = "Pinsir",
    [128] = "Tauros",
    [129] = "Magikarp",
    [130] = "Gyarados",
    [131] = "Lapras",
    [132] = "Ditto",
    [133] = "Eevee",
    [134] = "Vaporeon",
    [135] = "Jolteon",
    [136] = "Flareon",
    [137] = "Porygon",
    [138] = "Omanyte",
    [139] = "Omastar",
    [140] = "Kabuto",
    [141] = "Kabutops",
    [142] = "Aerodactyl",
    [143] = "Snorlax",
    [144] = "Articuno",
    [145] = "Zapdos",
    [146] = "Moltres",
    [147] = "Dratini",
    [148] = "Dragonair",
    [149] = "Dragonite",
    [150] = "Mewtwo",
    [151] = "Mew",
    [152] = "Chikorita",
    [153] = "Bayleef",
    [154] = "Meganium",
    [155] = "Cyndaquil",
    [156] = "Quilava",
    [157] = "Typhlosion",
    [158] = "Totodile",
    [159] = "Croconaw",
    [160] = "Feraligatr",
    [161] = "Sentret",
    [162] = "Furret",
    [163] = "Hoothoot",
    [164] = "Noctowl",
    [165] = "Ledyba",
    [166] = "Ledian",
    [167] = "Spinarak",
    [168] = "Ariados",
    [169] = "Crobat",
    [170] = "Chinchou",
    [171] = "Lanturn",
    [172] = "Pichu",
    [173] = "Cleffa",
    [174] = "Igglybuff",
    [175] = "Togepi",
    [176] = "Togetic",
    [177] = "Natu",
    [178] = "Xatu",
    [179] = "Mareep",
    [180] = "Flaaffy",
    [181] = "Ampharos",
    [182] = "Bellossom",
    [183] = "Marill",
    [184] = "Azumarill",
    [185] = "Sudowoodo",
    [186] = "Politoed",
    [187] = "Hoppip",
    [188] = "Skiploom",
    [189] = "Jumpluff",
    [190] = "Aipom",
    [191] = "Sunkern",
    [192] = "Sunflora",
    [193] = "Yanma",
    [194] = "Wooper",
    [195] = "Quagsire",
    [196] = "Espeon",
    [197] = "Umbreon",
    [198] = "Murkrow",
    [199] = "Slowking",
    [200] = "Misdreavus",
    [201] = "Unown",
    [202] = "Wobbuffet",
    [203] = "Girafarig",
    [204] = "Pineco",
    [205] = "Forretress",
    [206] = "Dunsparce",
    [207] = "Gligar",
    [208] = "Steelix",
    [209] = "Snubbull",
    [210] = "Granbull",
    [211] = "Qwilfish",
    [212] = "Scizor",
    [213] = "Shuckle",
    [214] = "Heracross",
    [215] = "Sneasel",
    [216] = "Teddiursa",
    [217] = "Ursaring",
    [218] = "Slugma",
    [219] = "Magcargo",
    [220] = "Swinub",
    [221] = "Piloswine",
    [222] = "Corsola",
    [223] = "Remoraid",
    [224] = "Octillery",
    [225] = "Delibird",
    [226] = "Mantine",
    [227] = "Skarmory",
    [228] = "Houndour",
    [229] = "Houndoom",
    [230] = "Kingdra",
    [231] = "Phanpy",
    [232] = "Donphan",
    [233] = "Porygon2",
    [234] = "Stantler",
    [235] = "Smeargle",
    [236] = "Tyrogue",
    [237] = "Hitmontop",
    [238] = "Smoochum",
    [239] = "Elekid",
    [240] = "Magby",
    [241] = "Miltank",
    [242] = "Blissey",
    [243] = "Raikou",
    [244] = "Entei",
    [245] = "Suicune",
    [246] = "Larvitar",
    [247] = "Pupitar",
    [248] = "Tyranitar",
    [249] = "Lugia",
    [250] = "Ho-Oh",
    [251] = "Celebi",
    --
    [270] = "Lotad",
    [360] = "Wynaut",
    [372] = "Shelgon",
    [254] = "Sceptile",
    [278] = "Wingull",
    [367] = "Huntail",
    [276] = "Taillow",
    [303] = "Mawile",
    [262] = "Mightyena",
    [330] = "Flygon",
    [349] = "Feebas",
    [375] = "Metang",
    [265] = "Wurmple",
    [364] = "Sealeo",
    [316] = "Gulpin",
    [373] = "Salamence",
    [272] = "Ludicolo",
    [323] = "Camerupt",
    [260] = "Swampert",
    [354] = "Banette",
    [366] = "Clamperl",
    [371] = "Bagon",
    [283] = "Surskit",
    [277] = "Swellow",
    [307] = "Meditite",
    [343] = "Baltoy",
    [274] = "Nuzleaf",
    [258] = "Mudkip",
    [380] = "Latias",
    [346] = "Cradily",
    [319] = "Sharpedo",
    [379] = "Registeel",
    [268] = "Cascoon",
    [299] = "Nosepass",
    [285] = "Shroomish",
    [293] = "Whismur",
    [298] = "Azurill",
    [325] = "Spoink",
    [384] = "Rayquaza",
    [295] = "Exploud",
    [318] = "Carvanha",
    [282] = "Gardevoir",
    [336] = "Seviper",
    [259] = "Marshtomp",
    [376] = "Metagross",
    [296] = "Makuhita",
    [302] = "Sableye",
    [305] = "Lairon",
    [269] = "Dustox",
    [266] = "Silcoon",
    [289] = "Slaking",
    [301] = "Delcatty",
    [304] = "Aron",
    [328] = "Trapinch",
    [357] = "Tropius",
    [271] = "Lombre",
    [284] = "Masquerain",
    [320] = "Wailmer",
    [368] = "Gorebyss",
    [286] = "Breloom",
    [385] = "Jirachi",
    [353] = "Shuppet",
    [374] = "Beldum",
    [257] = "Blaziken",
    [381] = "Latios",
    [267] = "Beautifly",
    [358] = "Chimecho",
    [337] = "Lunatone",
    [261] = "Poochyena",
    [326] = "Grumpig",
    [331] = "Cacnea",
    [361] = "Snorunt",
    [292] = "Shedinja",
    [365] = "Walrein",
    [291] = "Ninjask",
    [310] = "Manectric",
    [288] = "Vigoroth",
    [309] = "Electrike",
    [322] = "Numel",
    [341] = "Corphish",
    [252] = "Treecko",
    [264] = "Linoone",
    [332] = "Cacturne",
    [256] = "Combusken",
    [313] = "Volbeat",
    [275] = "Shiftry",
    [334] = "Altaria",
    [348] = "Armaldo",
    [279] = "Pelipper",
    [281] = "Kirlia",
    [347] = "Anorith",
    [362] = "Glalie",
    [338] = "Solrock",
    [287] = "Slakoth",
    [255] = "Torchic",
    [315] = "Roselia",
    [369] = "Relicanth",
    [383] = "Groudon",
    [297] = "Hariyama",
    [335] = "Zangoose",
    [300] = "Skitty",
    [382] = "Kyogre",
    [378] = "Regice",
    [340] = "Whiscash",
    [263] = "Zigzagoon",
    [324] = "Torkoal",
    [370] = "Luvdisc",
    [386] = "Deoxys",
    [356] = "Dusclops",
    [363] = "Spheal",
    [359] = "Absol",
    [294] = "Loudred",
    [355] = "Duskull",
    [253] = "Grovyle",
    [352] = "Kecleon",
    [351] = "Castform",
    [329] = "Vibrava",
    [345] = "Lileep",
    [344] = "Claydol",
    [273] = "Seedot",
    [339] = "Barboach",
    [342] = "Crawdaunt",
    [306] = "Aggron",
    [317] = "Swalot",
    [333] = "Swablu",
    [308] = "Medicham",
    [350] = "Milotic",
    [327] = "Spinda",
    [377] = "Regirock",
    [321] = "Wailord",
    [314] = "Illumise",
    [312] = "Minun",
    [311] = "Plusle",
    [290] = "Nincada",
    [280] = "Ralts",
}

function getPokemonNumberByName(pokemonName)
    return pokemonsNumbers[pokemonName] or nil
end

function getPokemonNameByNumber(pokemonNumber)
    return pokemonNameByNumber[pokemonNumber]
end
