# We reset the loading counter only when the player stop pressing right-click
# The dash_charge stop incrementing and dash_charge = dash_reset in the same tick
execute as @a[scores={dash_charge=1..}] run \
execute if score @s dash_charge = @s dash_reset run \
scoreboard players set @s dash_charge 0

# Follow the counter but one tick behind
execute as @a run \
scoreboard players operation @s dash_reset = @s dash_charge