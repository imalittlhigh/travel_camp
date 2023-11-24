##
 # copy_to_marker.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
say copy to marker
#checking which coulour is selected
#red
execute if data storage tcamp:item dye{id:"minecraft:red_dye"} run data modify entity @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..10] data.camp.colour set value "red"


#add function with effects here =)