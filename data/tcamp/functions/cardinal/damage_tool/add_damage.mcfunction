##
 # add_damage.mcfunction
 # 
 #
 # Created by imalittlhigh.
##

#adds damage to head axe
item modify entity @s weapon.mainhand tcamp:add_damage

#sound effect for taking durability
playsound block.grindstone.use player @s[tag=!tcamp.player.no_sound,tag=!tcamp.player.no_effects] ~ ~ ~ 0.5 0.85 0.1

#removing dura tag
tag @s remove tcamp.player.has_sufficient_durability