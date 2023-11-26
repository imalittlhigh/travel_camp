##
 # load.mcfunction
 # 
 #
 # Created by imalittlhigh
##
scoreboard objectives add pbroll_camp.left minecraft.custom:leave_game
scoreboard objectives add pbroll.dummy dummy
scoreboard players set $pbroll.100x pbroll.dummy 100

execute store result score $pbroll.sleeppercentage pbroll.dummy run gamerule playersSleepingPercentage