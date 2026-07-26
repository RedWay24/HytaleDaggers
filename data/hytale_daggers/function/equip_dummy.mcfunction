# Place a dummy dagger in the offhand
loot replace entity @s weapon.offhand loot hytale_daggers:dummy_dagger

# Apply the tier of the daggers in the custom data for the textures
$item modify entity @s weapon.offhand { \
function:"minecraft:set_custom_data",tag:{dummy_dagger:{tier:$(tier)}}}