ini_open("inventory.dat");
b = argument0;
if (ini_key_exists(base64_encode("Player Inventory"), string(b) + " weaponType"))
{
    if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " weaponType", "")) == "thrown")
    {
        with instance_position(600, 600, obj_boomerang)
        {
            instance_destroy();
        }
        temp = instance_create(600, 600, obj_boomerang);
        temp.name = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " name", ""));
        temp.appearance = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " appearance", ""));
        temp.skill = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " skill", ""));
        temp.hands = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " hands", "")));
        temp.damageSmall[0] = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " damageSmall[0]", "")));
        temp.damageLarge[0] = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " damageLarge[0]", "")));
        temp.toHitBonus = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " toHitBonus", "")));
        temp.price = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " price", "")));
        temp.weight = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " weight", "")));
        temp.weaponType = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " weaponType", ""));
        temp.itemType = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " itemType", ""));
        print("You set " + temp.name + " in quiver.");
        ini_close();
        room_goto(global.rm);
    }
}
