##
 # main.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
say klicked confirm

#trigger if tent complete function for all tents here

#change focus to campinfo marker
#small
#west will add check if tent is complete infront of function
execute as @s[tag=tcamp.interaction.west] at @s align xyz positioned ~0.22 ~-1.75 ~-0.22 as @e[tag=tcamp.marker.campinfo.small,limit=1,sort=nearest,distance=..2] at @s align xyz positioned ~ ~1 ~ run function tcamp:remove/tent/remove/small/west

#if tent is not complete notify