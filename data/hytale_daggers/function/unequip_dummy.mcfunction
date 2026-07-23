# Restore the offhand if no daggers are held in the mainhand
execute as @a \
unless items entity @s weapon.mainhand *[minecraft:custom_data~{hytale_daggers:true}] \
run function hytale_daggers:restore_slot {slot:"weapon.offhand"}
