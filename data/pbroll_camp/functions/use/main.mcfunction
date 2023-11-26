##
 # main.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
data remove entity @s interaction

execute as @s[tag=pbroll_camp.interaction.bedroll.west.head,tag=!pbroll.interaction.hassleeper] at @s run function pbroll_camp:use/sleep/west
execute as @s[tag=pbroll_camp.interaction.bedroll.east.head,tag=!pbroll.interaction.hassleeper] at @s run function pbroll_camp:use/sleep/east
execute as @s[tag=pbroll_camp.interaction.bedroll.north.head,tag=!pbroll.interaction.hassleeper] at @s run function pbroll_camp:use/sleep/north
execute as @s[tag=pbroll_camp.interaction.bedroll.south.head,tag=!pbroll.interaction.hassleeper] at @s run function pbroll_camp:use/sleep/south

execute as @s[tag=pbroll_camp.interaction.bedroll.west.feet] at @s positioned ~1 ~ ~ as @e[tag=pbroll_camp.interaction.bedroll.west.head,tag=!pbroll.interaction.hassleeper,distance=..0.1,limit=1,sort=nearest] at @s run function pbroll_camp:use/sleep/west
execute as @s[tag=pbroll_camp.interaction.bedroll.east.feet] at @s positioned ~-1 ~ ~ as @e[tag=pbroll_camp.interaction.bedroll.east.head,tag=!pbroll.interaction.hassleeper,distance=..0.1,limit=1,sort=nearest] at @s run function pbroll_camp:use/sleep/east
execute as @s[tag=pbroll_camp.interaction.bedroll.north.feet] at @s positioned ~ ~ ~1 as @e[tag=pbroll_camp.interaction.bedroll.north.head,tag=!pbroll.interaction.hassleeper,distance=..0.1,limit=1,sort=nearest] at @s run function pbroll_camp:use/sleep/north
execute as @s[tag=pbroll_camp.interaction.bedroll.south.feet] at @s positioned ~ ~ ~-1 as @e[tag=pbroll_camp.interaction.bedroll.south.head,tag=!pbroll.interaction.hassleeper,distance=..0.1,limit=1,sort=nearest] at @s run function pbroll_camp:use/sleep/south
