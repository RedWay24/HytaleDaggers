# execute if items entity @s weapon.mainhand *[minecraft:custom_data~{hytale_daggers:{}}] \
# run return 1

$execute if items entity @s weapon.offhand *[minecraft:custom_data~{dummy_dagger:{"tier":$(tier)}}] \
run return 1

return 0