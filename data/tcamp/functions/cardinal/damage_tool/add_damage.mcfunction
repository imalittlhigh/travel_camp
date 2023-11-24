##
 # add_damage.mcfunction
 # 
 #
 # Created by imalittlhigh.
##


#adds damage to head axe
item modify entity @s weapon.mainhand tcamp:add_damage

#data remove storage tcamp:item Damage

#removing dura tag
tag @s remove tcamp.player.has_sufficient_durability