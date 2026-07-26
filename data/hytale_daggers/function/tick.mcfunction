# Update the netherite daggers with the right tier
execute as @a \
if items entity @s weapon.mainhand netherite_sword[minecraft:custom_data~{hytale_daggers:{tier:"diamond"}}] \
run item modify entity @s weapon.mainhand { \
function:"minecraft:set_custom_data",tag:{hytale_daggers:{tier:"netherite"}}}

# Equip a dummy dagger in the offhand, if needed
execute as @a \
if items entity @s weapon.mainhand *[minecraft:custom_data~{hytale_daggers:{}}] \
unless items entity @s weapon.offhand *[minecraft:custom_data~{dummy_dagger:{}}] \
run function hytale_daggers:equip_dummy \
with entity @s SelectedItem.components."minecraft:custom_data".hytale_daggers

# Check if the dummy is valid for the daggers held in mainhand
execute as @a \
run execute store result score @s dummy_result \
run function hytale_daggers:check_dummy \
with entity @s SelectedItem.components."minecraft:custom_data".hytale_daggers

# Unequip the dummy dagger in the offhand, if needed
execute as @a \
if score @s dummy_result matches 0 \
run function hytale_daggers:restore_slot {slot:"weapon.offhand"}