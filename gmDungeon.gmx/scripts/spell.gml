ini_open("inventory.dat");
b = argument0;
if (ini_key_exists(base64_encode("Player Spell"), string(b) + " name"))
{
    name = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " name", ""));
    switch (name)
    {
        case "Force Bolt":
            if (pw >= 5)
            {
                room_goto(global.rm);
                dir = scr_direction();
                forceBolt(dir[0], dir[1]);
            }
            else
            {
                print("You don't have enough energy to cast that spell.");
            }
            break;
        case "Healing":
            if (obj_player.pw >= 5)
            {
                obj_player.pw -= 5;
                hpGain = irandom_range(1, 4) + irandom_range(1, 4) + irandom_range(1, 4) + irandom_range(1, 4);
                if obj_player.maxHP < hpGain + obj_player.hp
                {
                    obj_player.hp = maxHP;
                }
                else
                {
                    obj_player.hp += hpGain;
                }
            }
            else
            {
                print("You don't have enough energy to cast that spell.");
            }
            break;
        case "Identify":
            if obj_player.pw >= 15
            {
                obj_player.pw -= 15
                buc = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " ", ""));
                a = -1
                if (buc == "uncursed")
                    a = choose(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,3,4,52);
                else if buc == "blessed"
                    a = choose(1,2,3,4,5);
                else if buc == "cursed"
                    a = 0;
                repeat(a)
                {
                    i = 0;
                    while(ini_key_exists(base64_encode("Player Inventory"), string(i) + " itemType"))
                    {
                       i++;
                    }
                    c = irandom_range(0, i);
                    target = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(c) + " itemType", ""))
                    t = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(c) + " appearance", ""))
                    tf = false;
                    for (d = 0; d <= array_length_1d(global.cloakAppearance) and not tf; d++)
                    {
                        if t == global.cloakAppearance[d]
                        {
                            global.cloakAppearance[d] = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(c) + " name", ""))
                            tf = true;
                        }
                    }
                    for (d = 0; d <= array_length_1d(global.helmAppearance) and not tf; d++)
                    {
                        if t == global.helmAppearance[d]
                        {
                            global.helmAppearance[d] = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(c) + " name", ""))
                            tf = true;
                        }
                    }
                    for (d = 0; d <= array_length_1d(global.glovesAppearance) and not tf; d++)
                    {
                        if t == global.glovesAppearance[d]
                        {
                            global.glovesAppearance[d] = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(c) + " name", ""))
                            tf = true;
                        }
                    }
                    for (d = 0; d <= array_length_1d(global.bootsAppearance) and not tf; d++)
                    {
                        if t == global.bootsAppearance[d]
                        {
                            global.bootsAppearance[d] = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(c) + " name", ""))
                            tf = true;
                        }
                    }
                    for (d = 0; d <= array_length_1d(global.potionAppearance) and not tf; d++)
                    {
                        if t == global.potionAppearance[d]
                        {
                            global.potionAppearance[d] = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(c) + " name", ""))
                            tf = true;
                        }
                    }
                    for (d = 0; d <= array_length_1d(global.scrollAppearance) and not tf; d++)
                    {
                        if t == global.scrollAppearance[d]
                        {
                            global.scrollAppearance[d] = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(c) + " name", ""))
                            tf = true;
                        }
                    }
                    for (d = 0; d <= array_length_1d(global.spellbookAppearance) and not tf; d++)
                    {
                        if t == global.spellbookAppearance[d]
                        {
                            global.spellbookAppearance[d] = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(c) + " name", ""))
                            tf = true;
                        }
                    }
                    for (d = 0; d <= array_length_1d(global.ringAppearance) and not tf; d++)
                    {
                        if t == global.ringAppearance[d]
                        {
                            global.ringAppearance[d] = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(c) + " name", ""))
                            tf = true;
                        }
                    }
                    for (d = 0; d <= array_length_1d(global.wandAppearance) and not tf; d++)
                    {
                        if t == global.wandAppearance[d]
                        {
                            global.wandAppearance[d] = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(c) + " name", ""))
                            tf = true;
                        }
                    }
                    v = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(c) + " name", ""))
                    switch (v)
                    {
                        case "aklys":
                            with obj_aklys
                            {
                                appearance = v;
                            }
                            break;
                        case "orcish dagger":
                            with obj_orcishDagger
                            {
                                appearance = v
                            }
                            break;
                        case "elven dagger":
                            with obj_elvenDagger
                            {
                                appearance = v;
                            }
                            break;
                        case "battle-axe":
                            with obj_battleAxe
                            {
                                appearance = v;
                            }
                            break;
                        case "dwarvish mattock":
                            with obj_dwarvishMattock
                            {
                                appearance = v
                            }
                            break
                        case "orcish short sword":
                            with obj_orcishShortSword
                            {
                                apearance = v
                            }
                            break
                        case "dwarvish short sword":
                            with obj_dwarvishShortSword
                            {
                                appearance = v
                            }
                            break;
                        case "elven short sword":
                            with obj_elvenShortSword
                            {
                                appearance = v
                            }
                            break
                        case "runesword":
                            with obj_runesword
                            {
                                appearance = v
                            }
                            break
                        case "elven broadsword":
                            with obj_elvenBroadsword
                            {
                                appearance = v
                            }
                            break
                        case "katana":
                            with obj_katana
                            {
                                appearance = v
                            }
                            break
                        case "tsurugi":
                            with obj_tsurugi
                            {
                                appearance = v;
                            }
                            break;
                        case "scimitar":
                            with obj_scimitar
                            {
                                appearance = v;
                            }
                            break
                        case "quarterstaff":
                            with obj_quarterstaff
                            {
                                appearance = v;
                            }
                            break;
                        case "orcish spear":
                            with obj_orcishSpear
                            {
                                appearance = v;
                            }
                            break
                        case "partisan":
                            with obj_partisan
                            {
                                appearance = v
                            }
                            break
                        case "fauchard":
                            with obj_fauchard
                            {
                                appearance = v
                            }
                            break
                        case "glaive":
                            with obj_glaive
                            {
                                appearance = v
                            }
                            break
                        case "bec-de-corbin":
                            with obj_becDeCorbin
                            {
                                appearance = v
                            }
                            break
                        case "spetum":
                            with obj_spetum
                            {
                                appearance = v
                            }
                            break
                        case "lucern hammer":
                            with obj_lucernHammer
                            {
                                appearance = v
                            }
                            break
                        case "guisarme":
                            with obj_guisarme
                            {
                                appearance = v
                            }
                            break
                        case "ranseur":
                            with obj_ranseur
                            {
                                appearance = v
                            }
                            break
                        case "voulge":
                            with obj_voulge
                            {
                                appearance = v
                            }
                            break
                        case "bill-guisarme":
                            with obj_billGuisarme
                            {
                                appearance = v
                            }
                            break
                        case "bardiche":
                            with obj_bardiche
                            {
                                appearance = v
                            }
                            break
                        case "halberd":
                            with obj_halberd
                            {
                                appearance = v
                            }
                            break
                        case "elven spear":
                            with obj_elvenSpear
                            {
                                appearance = v
                            }
                            break
                        case "dwarvish spear":
                            with obj_dwarvishSpear
                            {
                                appearance = v
                            }
                            break
                        case "javalin":
                            with obj_javelin
                            {
                                appearance = v
                            }
                            break
                        case "orcish bow":
                            with obj_orcishBow
                            {
                                appearance = v
                            }
                            break
                        case "orcish arrow":
                            with obj_orcishArrow
                            {
                                appearance = v
                            }
                            break
                        case "elven bow":
                            with obj_elvenBow
                            {
                                appearance = v
                            }
                            break
                        case "elven arrow":
                            with obj_elvenArrow
                            {
                                appearance = v
                            }
                            break
                        case "yumi":
                            with obj_yumi
                            {
                                appearance = v
                            }
                            break
                        case "ya":
                            with obj_ya
                            {
                                appearance = v
                            }
                            break
                        case "flintstone":
                            with obj_flintstone
                            {
                                appearance = v
                            }
                            break
                        case "shruriken":
                            with obj_shuriken
                            {
                                appearance = v
                            }
                            break;
                        case "mummy wrapping":
                            with obj_mummyWrapping
                            {
                                appearance = v
                            }
                            break
                        case "orcish cloak":
                            with obj_orcishCloak
                            {
                                appearance = v
                            }
                            break
                        case "dwarvish cloak":
                            with obj_dwarvishCloak
                            {
                                appearance = v
                            }
                            break
                        case "leather cloak":
                            with obj_leatherCloak
                            {
                                appearance = v
                            }
                            break
                        case "cloak of displacement":
                            with obj_cloakOfDisplacement
                            {
                                appearance = v
                            }
                            break
                        case "oilskin cloak":
                            with obj_oilskinCloak
                            {
                                appearance = v
                            }
                            break
                        case "alchemy smock":
                            with obj_alchemySmock
                            {
                                appearance = v
                            }
                            break
                        case "cloak of invisibility":
                            with obj_cloakOfInvisibility
                            {
                                appearance = v
                            }
                            break
                        case "cloak of magic resistance":
                            with obj_cloakOfMagicResistance
                            {
                                appearance = v
                            }
                            break
                        case "elven cloak":
                            with obj_elvenCloak
                            {
                                appearance = v
                            }
                            break
                        case "robe":
                            with obj_robe
                            {
                                appearance = v
                            }
                            break
                        case "cloak of protection":
                            with obj_cloakOfProtection
                            {
                                appearance = v
                            }
                            break
                        case "elvenLeatherHelm":
                            with obj_elvenLeatherHelm
                            {
                                appearance = v
                            }
                            break
                        case "helmet":
                            with obj_helmet
                            {
                                appearance = v
                            }
                            break
                        case "orcish helm":
                            with obj_orcishHelm
                            {
                                appearance = v
                            }
                            break
                        case "helm of brilliance":
                            with obj_helmOfBrilliance
                            {
                                appearance = v
                            }
                            break
                        case "helm of telepathy":
                            with obj_helmOfTelepathy
                            {
                                appearance = v
                            }
                            break
                        case "dwarvish iron helm":
                            with obj_dwarvishIronHelm
                            {
                                appearance = v
                            }
                            break
                        case "leather gloves":
                            with obj_leatherGloves
                            {
                                appearance = v
                            }
                            break
                        case "gauntlets of power":
                            with obj_gauntletsOfPower
                            {
                                appearance = v
                            }
                            break
                        case "gauntelts of dexterity":
                            with obj_gauntletsOfDexterity
                            {
                                appearance = v
                            }
                            break
                        case "orcish shield":
                            with obj_orcishShield
                            {
                                appearance = v
                            }
                            break
                        case "Urik-hia shield":
                            with obj_Uruk_haiShield
                            {
                                appearance = v
                            }
                            break
                        case "eleven shield":
                            with obj_elvenShield
                            {
                                appearance = v
                            }
                            break
                        case "dwarvish roundshield":
                            with obj_dwarvishRoundshield
                            {
                                appearance = v
                            }
                            break
                        case "low boots":
                            with obj_lowBoots
                            {
                                appearance = v
                            }
                            break
                        case "elven boots":
                            with obj_elvenBoots
                            {
                                appearance = v
                            }
                            break
                        case "kicking boots":
                            with obj_kickingBoots
                            {
                                appearance = v
                            }
                            break
                        case "speed boots":
                            with obj_speedBoots
                            {
                                appearance = v
                            }
                            break
                        case "jumping boots":
                            with obj_jumpingBoots
                            {
                                appearance = v
                            }
                            break
                        case "high boots":
                            with obj_highBoots
                            {
                                appearance = v
                            }
                            break
                        case "iron shoes":
                            with obj_ironShoes
                            {
                                appearance = v
                            }
                            break
                        case "orcish ring mail":
                            with obj_orcishRingMail
                            {
                                appearance = v
                            }
                            break
                        case "orcish chain mail":
                            with obj_orcishChainMail
                            {
                                appearance = v
                            }
                            break
                        case "elven mithril coat":
                            with obj_elvenMithrilCoat
                            {
                                appearance = v
                            }
                            break
                        case "dwarvish mithril coat":
                            with obj_dwarvishMithrilCoat
                            {
                                appearance = v
                            }
                            break
                        case "potion of water":
                            with obj_potionOfWater
                            {
                                appearance = v
                            }
                            break
                        case "potion of booze":
                            with obj_potionOfBooze
                            {
                                appearance = v
                            }
                            break
                        case "potion of fruit juice":
                            with obj_potionOfFruitJuice
                            {
                                appearance = v
                            }
                            break
                        case "potion of sickness":
                            with obj_potionOfSickness
                            {
                                appearance = v
                            }
                            break
                        case "potion of confusion":
                            with obj_potionOfConfusion
                            {
                                appearance = v
                            }
                            break
                        case "potion of extra healing":
                            with obj_potionOfExtraHealing
                            {
                                appearance = v
                            }
                            break
                        case "potion of healing":
                            with obj_potionOfHealing
                            {
                                appearance = v
                            }
                            break
                        case "potion of sleeping":
                            with obj_potionOfSleeping
                            {
                                appearance = v
                            }
                            break
                        case "potion of gain energy":
                            with obj_potionOfGainEnergy
                            {
                                appearance = v
                            }
                            break
                        case "potion of full healing":
                            with obj_potionOfFullHealing
                            {
                                appearance = v
                            }
                            break
                        case "potion of acid":
                            with obj_potionOfAcid
                            {
                                appearance = v
                            }
                            break
                        case "potion of oil":
                            with obj_potionOfOil
                            {
                                appearance = v
                            }
                            break
                        case "potion of gain level":
                            with obj_potionOfGainLevel
                            {
                                appearance = v
                            }
                            break
                        case "potion of paralysis":
                            with obj_potionOfParalysis
                            {
                                appearance = v
                            }
                            break
                        case "scroll of destroy armor":
                            with obj_scrollOfDestroyArmor
                            {
                                appearance = v
                            }
                        case "scroll of fire":
                            with obj_scrollOfFire
                            {
                                appearance = v
                            }
                        case "scroll of create monster":
                            with obj_scrollOfCreateMonster
                            {
                                appearance = v
                            }
                        case "ring of hunger":
                            with obj_ringOfHunger
                            {
                                appearance = v
                            }
                        case "ring of stealth":
                            with obj_ringOfStealth
                            {
                                appearance = v
                            }
                        case "ring of protection":
                            with obj_ringOfProtection
                            {
                                appearance = v
                            }
                        case "ring of increase damage":
                            with obj_ringOfIncreaseDamage
                            {
                                appearance = v
                            }
                        case "ring of teleportation":
                            with obj_ringOfTeleportation
                            {
                                appearance = v
                            }
                        case "ring of regeneration":
                            with obj_ringOfRegeneration
                            {
                                appearance = v
                            }
                    }
                    if (target == "weapon" or target == "armor")
                    {
                        ini_write_string(base64_encode("Player Inventory"), (string(c) + " appearance"), ini_read_string(base64_encode("Player Inventory"), (string(c) + " buc" ), "") + " " + ini_read_string(base64_encode("Player Inventory"), (string(c) + " enchanment" ), "") + " " + ini_read_string(base64_encode("Player Inventory"), (string(c) + " name" ), ""));
                    }
                    else
                    {
                        ini_write_string(base64_encode("Player Inventory"), (string(c) + " appearance"), ini_read_string(base64_encode("Player Inventory"), (string(c) + " buc" ), "") + " " + ini_read_string(base64_encode("Player Inventory"), (string(c) + " name"), ""));
                    }
                }
                for (d = 0; d <= i; d++)
                {
                    if base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " appearance", "")) == global.scrollAppearance[0]
                    {
                        ini_write_string(base64_encode("Player Inventory"), string(i) + " appearance" , "scroll of identify");
                    }
                }
                with obj_scrollOfIdentify
                {
                    appearance = "scroll of identify";
                }
                global.scrollAppearance[0] = "scroll of identify";
                endPlayerTurn();
            }
            else
                print("You don't have enough energy to cast that spell.")
            break;
        case "Create Monster":
            if obj_player.pw >=10
            {
                if irandom_range(1,73) == 1
                {
                    _x = 32 * irandom_range(obj_player.x-96, obj_player.x+96);
                    _y = 32 * irandom_range(obj_player.y-96, obj_player.y+96);
                    while (place_meeting(_x, _y, obj_entity))
                    {
                        _x = 32 * irandom_range(obj_player.x-96, obj_player.x+96);
                        _y = 32 * irandom_range(obj_player.y-96, obj_player.y+96);
                    }
                    instance_create(_x, _y, choose(obj_orc, obj_newt, obj_newt, obj_newt, obj_newt, obj_newt, obj_newt, obj_rat, obj_rat, obj_kobold, obj_kobold, obj_zombie, obj_zombie, obj_homunculus, obj_homunculus, obj_homunculus));
                }
                else
                {
                    repeat(irandom_range(2,5))
                    {
                        _x = 32 * irandom_range(obj_player.x-96, obj_player.x+96);
                        _y = 32 * irandom_range(obj_player.y-96, obj_player.y+96);
                        while (place_meeting(_x, _y, obj_entity))
                        {
                            _x = 32 * irandom_range(obj_player.x-96, obj_player.x+96);
                            _y = 32 * irandom_range(obj_player.y-96, obj_player.y+96);
                        }
                        instance_create(_x, _y, choose(obj_orc, obj_newt, obj_newt, obj_newt, obj_newt, obj_newt, obj_newt, obj_rat, obj_rat, obj_kobold, obj_kobold, obj_zombie, obj_zombie, obj_homunculus, obj_homunculus, obj_homunculus));
                    }
                }
                endPlayerTurn()
            }
            else
                print("You don't have enough energy to cast that spell.");
            break;
        case "Teleport Away":
            if obj_player.pw >= 30
            {
                obj_player.pw -= 30
                _x = 32 * irandom_range(0, 31)
                _y = 32 * irandom_range(0, 31)
                while (place_meeting(_x, _y, obj_entity) or place_meeting(_x, _y, obj_wall))
                {
                    _x = 32 * irandom_range(0, 31)
                    _y = 32 * irandom_range(0, 31)
                }
                obj_player.x = _x
                obj_player.y = _y
                endPlayerTurn()
            }
            else print("You don't have enough energy to cast that spell.");
            break;
        case "Sleep":
            if obj_player.pw >=5
            {
                obj_player.pw -= 5
                obj_player.sleep = irandom_range((obj_player.level/2)+1,((obj_player.level/2)+1)*25)
                endPlayerTurn()
            }
            else print("You don't have enough energy to cast that spell.");
            break;
    }
}
ini_close();
room_goto(global.rm);
