import minetweaker.data.IData;
import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;
import minetweaker.liquid.ILiquidStack;
import mods.nei.NEI;


#
#var liquidClay = <liquid:molecule.kaolinite>;
#var blockClay = <minecraft:clay>;
#var ballClay = <minecraft:clay_ball>;
#var liquidSearedStone = <liquid:stone.seared>;
#var liquidScorchedStone = <liquid:molecule.metasilicate>;
#var blockScorchedStone = <TSteelworks:HighOven:4>;
#var ingotScorchedStone = <TSteelworks:Materials>;
#var ingotCast = <TConstruct:metalPattern>;
##var blockDriedDirt = <ezwastelands:ezwastelandblock>;
#var liquidPhosphorus = <liquid:element.p>;
#var Glowstone = <minecraft:glowstone>;
#var GlowstoneDust = <minecraft:glowstone_dust>;
#var ingotGlowstone = <Quadrum:ingotGlowstone>;
#
#Smeltery.addMelting(ballClay, liquidClay * 250, 1000, blockClay);
#Smeltery.addMelting(blockClay, liquidClay * 1000, 1000, blockClay);
##Smeltery.addMelting(blockDriedDirt, liquidClay * 250, 1000, blockDriedDirt);
#Smeltery.addMelting(<ore:dustGlowstone>, liquidPhosphorus * 144, 1000, Glowstone);
#Smeltery.addMelting(<ore:glowstone>, liquidPhosphorus * 576, 1000, Glowstone);
#Casting.addBasinRecipe(blockClay, liquidClay * 1000, null, false, 60);
#
#Smeltery.addAlloy(liquidScorchedStone * 250, [liquidSearedStone * 9, liquidClay * 250]);
#
#Casting.addBasinRecipe(blockScorchedStone, liquidScorchedStone * 1000, null, false, 60);
#
#Casting.addTableRecipe(ingotScorchedStone, liquidScorchedStone * 250, ingotCast, false, 20);
#
#Casting.addTableRecipe(ingotGlowstone, liquidPhosphorus * 144, ingotCast, false, 20);
#
#
## I'm sorry, I hate enchantments and I keep them for very high tier, hint: Loot Recycler + Bibliocraft
#var enchantingStuffs = [
#  <minecraft:enchanting_table>,
#  <EnderIO:blockEnchanter>
#] as IItemStack[];
#
#for i, stuff in enchantingStuffs {
#  NEI.hide(stuff);
#  recipes.remove(stuff);
#}
#
## I Hate potions too !
#NEI.hide(<minecraft:brewing_stand>);
#recipes.remove(<minecraft:brewing_stand>);
#
#
#var piston = <minecraft:piston>;
#var cobble = <ore:cobblestone>;
#var stoneToughRod = <TConstruct:toughRod:1>;
#var stoneLargePlate = <TConstruct:heavyPlate:1>;
#var plankWood = <ore:plankWood>;
#
#recipes.remove(piston);
#recipes.addShaped(piston, [
#  [plankWood       , plankWood          , plankWood],
#  [cobble       , stoneToughRod , cobble],
#  [cobble, stoneLargePlate          , cobble]
#]);
#
##var mcstring = <minecraft:string>;
##var asbestosFiber = <ore:fiberAsbestos>;
##
##recipes.addShapedMirrored(mcstring, [[asbestosFiber], [asbestosFiber],[asbestosFiber]]);
##
#
