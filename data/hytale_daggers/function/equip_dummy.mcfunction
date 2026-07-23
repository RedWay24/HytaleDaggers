# Revoke the advancement to trigger it every tick
advancement revoke @s only hytale_daggers:equip

# Schedule a remove dummy check for the next tick
schedule function hytale_daggers:unequip_dummy 2t append

# If the player has a dummy dagger in his cursor
function hytale_daggers:restore_slot {slot:"player.cursor"}

# If the player has a dummy dagger in his mainhand
function hytale_daggers:restore_slot {slot:"weapon.mainhand"}

# Return if the player already has a dummy dagger in his offhand
execute if items entity @s weapon.offhand *[minecraft:custom_data~{dummy_dagger:true}] \
run return 1

# If the player has something in his offhand
# We store the offhand item into the dummy dagger
execute if items entity @s weapon.offhand * \
run return run function hytale_daggers:load_dummy \
with entity @s equipment

# Give a diamond_sword in the offhand and change it into a dummy dagger
item replace entity @s weapon.offhand with minecraft:diamond_sword 1
item modify entity @s weapon.offhand hytale_daggers:dummy_dagger