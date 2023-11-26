##
 # wake.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
##executed as player
effect clear @s minecraft:darkness
effect clear @s minecraft:slowness

scoreboard players reset @s pbroll_camp.left 

tag @s[tag=pbroll.player.sleeping] remove pbroll.player.sleeping

tag @s remove pbroll_camp.player.interacted

data remove entity @e[tag=pbroll.interaction.hassleeper,distance=..1.5,limit=1,sort=nearest] interaction

tag @e[tag=pbroll.interaction.hassleeper,distance=..1.5,limit=1,sort=nearest] remove pbroll.interaction.hassleeper

execute as @e[tag=camp.pbroll_camp.interaction.bedroll] at @s unless entity @e[distance=..0.5,type=player] run tag @s remove pbroll.interaction.hassleeper
execute as @e[tag=camp.pbroll_camp.interaction.bedroll] at @s unless entity @e[distance=..0.5,type=player] run data remove entity @s interaction
execute as @e[tag=camp.pbroll_camp.interaction.bedroll] at @s unless entity @e[distance=..0.5,type=player] run fill ~ ~1 ~ ~ ~1 ~ air replace barrier

fill ~ ~1 ~ ~ ~1 ~ air replace barrier

effect clear @s blindness
effect clear @s slowness

