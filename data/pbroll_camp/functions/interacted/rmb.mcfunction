##
 # rmb.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
advancement revoke @s only pbroll_camp:rmb_interaction

tag @s add pbroll_camp.player.interacted

scoreboard players reset $pbroll.time
execute store result score $pbroll.time pbroll.dummy run time query daytime

execute unless predicate pbroll_camp:is_in_overworld as @e[tag=camp.pbroll_camp.interaction.bedroll,nbt={interaction:{}},predicate=!pbroll_camp:is_in_overworld] at @s run summon marker ~ ~ ~ {NoGravity:1b,Tags:["pbroll_camp.marker","pbroll_camp.marker.explode"]}
execute unless predicate pbroll_camp:is_in_overworld as @e[tag=camp.pbroll_camp.interaction.bedroll,nbt={interaction:{}},predicate=!pbroll_camp:is_in_overworld] at @s run function pbroll_camp:remove/main

execute as @e[tag=pbroll_camp.marker.explode] at @s run summon tnt ~ ~ ~ {NoGravity:1b,Fuse:0}
execute as @e[tag=pbroll_camp.marker.explode] run kill @s

execute as @s[tag=pbroll.player.sleeping,tag=pbroll_camp.player.interacted] at @s run function pbroll_camp:use/wake

execute as @s[tag=pbroll_camp.player.interacted] unless predicate pbroll_camp:sleepy_time run tag @s remove pbroll_camp.player.interacted
execute as @s[tag=pbroll_camp.player.interacted] if predicate pbroll_camp:sleepy_time if entity @e[type=#pbroll_camp:monsters,distance=..10] run tag @s remove pbroll_camp.player.interacted

execute as @s[tag=!pbroll_camp.player.interacted] as @e[tag=pbroll_camp.interaction.bedroll,nbt={interaction:{}}] run data remove entity @s interaction

execute if predicate pbroll_camp:sleepy_time as @s[tag=!pbroll.player.sleeping,tag=pbroll_camp.player.interacted] as @e[tag=pbroll_camp.interaction.bedroll,nbt={interaction:{}}] at @s run function pbroll_camp:use/main



execute if predicate pbroll_camp:is_in_overworld unless predicate pbroll_camp:sleepy_time run title @s actionbar {"text":"You can sleep only at night or during thunderstorms"}

execute if predicate pbroll_camp:is_in_overworld if predicate pbroll_camp:sleepy_time if entity @e[type=#pbroll_camp:monsters,distance=..10] run title @s actionbar {"text":"You may not rest now; there are monsters nearby"}

schedule function pbroll_camp:interacted/skip_test 3s replace