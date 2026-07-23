# Increment the dash charge counter score
scoreboard players add @s dash_charge 1
advancement revoke @s only hytale_daggers:dash

# Schedule a dash reset check for the next tick
schedule function hytale_daggers:dash_reset 2t append