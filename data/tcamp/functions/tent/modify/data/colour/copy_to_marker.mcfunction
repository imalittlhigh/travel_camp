##
 # copy_to_marker.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
say copy to marker

#checking if colour matches already and copying the colour to marker data
execute at @s store result score @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..10] tcamp.dummy run data modify entity @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..10] data.camp.colour set from storage tcamp:item dye.id

#if colour is same already
execute at @s if score @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..10] tcamp.dummy matches 0 run say the colour of your tent is that already

#removing items from palyer mainhand
execute at @s if score @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..10] tcamp.dummy matches 1 as @p run item modify entity @s weapon.mainhand tcamp:remove_count

#add function with effects here =)
execute at @s as @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..10] if score @s tcamp.dummy matches 1 at @s run function tcamp:tent/modify/blocks/colour/get_size

#resetting result score
scoreboard players reset @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..10] tcamp.dummy
#resetting tcamp score for player
#execute as @p run scoreboard players reset @s tcamp.dummy