##
 # skip_test.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
execute store result score $pbroll.time pbroll.dummy run time query daytime

scoreboard players reset $pbroll.playercount
scoreboard players reset $pbroll.playercount.asleep


execute store result score $pbroll.playercount pbroll.dummy if entity @a[predicate=pbroll_camp:is_in_overworld]
execute store result score $pbroll.playercount.asleep pbroll.dummy if entity @a[tag=pbroll.player.sleeping,predicate=pbroll_camp:is_in_overworld]

execute if score $pbroll.sleeppercentage pbroll.dummy matches 0.. run scoreboard players operation $pbroll.playercount.asleep pbroll.dummy *= $pbroll.100x pbroll.dummy
execute if score $pbroll.sleeppercentage pbroll.dummy matches 0.. run scoreboard players operation $pbroll.playercount.asleep pbroll.dummy /= $pbroll.sleeppercentage pbroll.dummy


execute as @r[predicate=pbroll_camp:is_in_overworld] if predicate pbroll_camp:sleepy_time if score $pbroll.playercount.asleep pbroll.dummy >= $pbroll.playercount pbroll.dummy run function pbroll_camp:interacted/skip_night

execute as @r[predicate=pbroll_camp:is_in_overworld] if predicate pbroll_camp:sleepy_time if score $pbroll.playercount.asleep pbroll.dummy <= $pbroll.playercount pbroll.dummy run schedule function pbroll_camp:interacted/skip_test 1s replace