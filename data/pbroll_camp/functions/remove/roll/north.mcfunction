##
 # north.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#if interacted with head
execute as @s[tag=pbroll_camp.interaction.bedroll.north.head] at @s positioned ~ ~ ~-1 run kill @e[tag=pbroll_camp.interaction.bedroll.north.feet,distance=..0.1,limit=1,sort=nearest]
execute as @s[tag=pbroll_camp.interaction.bedroll.north.head] at @s positioned ~-0.5 ~ ~-0.5 run kill @e[tag=pbroll_camp.block_display.bedroll,distance=..0.1,limit=6,sort=nearest]


#if interacted with feet
execute as @s[tag=pbroll_camp.interaction.bedroll.north.feet] at @s positioned ~ ~ ~1 run kill @e[tag=pbroll_camp.interaction.bedroll.north.head,distance=..0.1,limit=1,sort=nearest]
execute as @s[tag=pbroll_camp.interaction.bedroll.north.feet] at @s positioned ~-0.5 ~ ~0.5 run kill @e[tag=pbroll_camp.block_display.bedroll,distance=..0.1,limit=6,sort=nearest]

execute as @s[tag=pbroll_camp.interaction.bedroll.white] at @s run loot spawn ~ ~0.2 ~ loot pbroll_camp:rolls/white
execute as @s[tag=pbroll_camp.interaction.bedroll.light_gray] at @s run loot spawn ~ ~0.2 ~ loot pbroll_camp:rolls/light_gray
execute as @s[tag=pbroll_camp.interaction.bedroll.gray] at @s run loot spawn ~ ~0.2 ~ loot pbroll_camp:rolls/gray
execute as @s[tag=pbroll_camp.interaction.bedroll.black] at @s run loot spawn ~ ~0.2 ~ loot pbroll_camp:rolls/black
execute as @s[tag=pbroll_camp.interaction.bedroll.brown] at @s run loot spawn ~ ~0.2 ~ loot pbroll_camp:rolls/brown
execute as @s[tag=pbroll_camp.interaction.bedroll.red] at @s run loot spawn ~ ~0.2 ~ loot pbroll_camp:rolls/red
execute as @s[tag=pbroll_camp.interaction.bedroll.orange] at @s run loot spawn ~ ~0.2 ~ loot pbroll_camp:rolls/orange
execute as @s[tag=pbroll_camp.interaction.bedroll.yellow] at @s run loot spawn ~ ~0.2 ~ loot pbroll_camp:rolls/yellow
execute as @s[tag=pbroll_camp.interaction.bedroll.lime] at @s run loot spawn ~ ~0.2 ~ loot pbroll_camp:rolls/lime
execute as @s[tag=pbroll_camp.interaction.bedroll.green] at @s run loot spawn ~ ~0.2 ~ loot pbroll_camp:rolls/green
execute as @s[tag=pbroll_camp.interaction.bedroll.cyan] at @s run loot spawn ~ ~0.2 ~ loot pbroll_camp:rolls/cyan
execute as @s[tag=pbroll_camp.interaction.bedroll.light_blue] at @s run loot spawn ~ ~0.2 ~ loot pbroll_camp:rolls/light_blue
execute as @s[tag=pbroll_camp.interaction.bedroll.blue] at @s run loot spawn ~ ~0.2 ~ loot pbroll_camp:rolls/blue
execute as @s[tag=pbroll_camp.interaction.bedroll.purple] at @s run loot spawn ~ ~0.2 ~ loot pbroll_camp:rolls/purple
execute as @s[tag=pbroll_camp.interaction.bedroll.magenta] at @s run loot spawn ~ ~0.2 ~ loot pbroll_camp:rolls/magenta
execute as @s[tag=pbroll_camp.interaction.bedroll.pink] at @s run loot spawn ~ ~0.2 ~ loot pbroll_camp:rolls/pink

kill @s