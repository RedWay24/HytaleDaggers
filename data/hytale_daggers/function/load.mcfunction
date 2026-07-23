scoreboard objectives add dash_charge dummy
scoreboard objectives add dash_reset dummy

execute positioned 0 -64 0 \
unless entity @e[type=armor_stand,tag=hytale_daggers.temp,limit=1] \
run summon minecraft:armor_stand ~ ~ ~ \
{Tags:["hytale_daggers"], Invisible:1b, Invulnerable:1b, NoGravity:1b, Marker:1b, Silent:1b}