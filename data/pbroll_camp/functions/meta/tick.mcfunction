##
 # tick.mcfunction
 # 
 #
 # Created by imalittlhigh
##

effect give @a[tag=pbroll.player.sleeping] blindness 2 0 true
effect give @a[tag=pbroll.player.sleeping] slowness 1 255 true

execute as @a[scores={pbroll_camp.left=1..}] run function pbroll_camp:use/wake
