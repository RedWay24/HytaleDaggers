# Return if the given slot does not contain a dummy dagger
$execute unless items entity @s $(slot) *[minecraft:custom_data~{dummy_dagger:{}}] \
run return 1

# Delete it if no item are stored inside
$execute if items entity @s $(slot) *[!minecraft:container | minecraft:container=[]] \
run return run item replace entity @s $(slot) with minecraft:air

# Replace the dummy dagger in given slot with the item stored inside
$loot replace entity @s $(slot) loot { \
type:"minecraft:generic",pools:[{rolls:1,entries:[ \
{type:"minecraft:slots",slot_source:{type:"minecraft:contents", slot_source:{ \
type:"minecraft:slot_range",source:"this",slots:"$(slot)"},component:"minecraft:container"}}]}]}