
# Give a diamond_sword in the offhand and change it into a dummy dagger
item replace entity @s weapon.offhand with minecraft:diamond_sword 1
item modify entity @s weapon.offhand hytale_daggers:dummy_dagger

# Store the offhand item into the container data component
$item modify entity @s weapon.offhand { \
function:"minecraft:set_components", \
components: {"minecraft:container": [{slot:0, item:$(offhand)}]}}