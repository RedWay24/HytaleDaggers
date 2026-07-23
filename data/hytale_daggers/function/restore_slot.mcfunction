# Exit if the item is not a dummy dagger
$execute unless items entity @s $(slot) *[minecraft:custom_data~{dummy_dagger:true}] \
run return 1

# Delete it if no item are stored inside
$execute if items entity @s $(slot) *[!minecraft:container | minecraft:container=[]] \
run item replace entity @s $(slot) with minecraft:air

# Copy the dummy dagger into armor_stand's offhand
$item replace entity @e[type=armor_stand,tag=hytale_daggers,limit=1] weapon.offhand from entity @s $(slot)

# Restore the armor_stand's offhand
data modify entity @e[type=armor_stand,tag=hytale_daggers,limit=1] equipment.offhand \
set from entity @e[type=armor_stand,tag=hytale_daggers,limit=1] equipment.offhand.components."minecraft:container"[0].item

# Copy armor_stand's offhand into the given player slot
$item replace entity @s $(slot) from entity @e[type=armor_stand,tag=hytale_daggers,limit=1] weapon.offhand