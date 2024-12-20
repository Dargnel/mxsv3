#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Function Setup Test
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run function test_skyblock:test/fix_end


##Function Remove Test (DA RIMUOVERE IN FUTURO)
function test_skyblock:test/multiplayer_legacy
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run function test_skyblock:test/refactoring_scoreboard
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run function test_skyblock:legacy_version


##Translate Test (NON RIMUOVERE)
#tellraw @a [{"translate":"skyblock_classic_edition.folder.test"}]


##Scoreboard Setup Test
scoreboard objectives add refactoring_scoreboard dummy
scoreboard players add @a refactoring_scoreboard 1
scoreboard players add @a SkyblockCE_legacy_version 1


##Scoreboard Reset
execute as @a[scores={fix_end=2000000..}] run scoreboard players set @a fix_end 200000