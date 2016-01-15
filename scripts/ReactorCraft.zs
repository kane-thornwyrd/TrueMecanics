
import minetweaker.data.IData;
import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;
import minetweaker.liquid.ILiquidStack;
import mods.pneumaticcraft.Assembly;
import mods.pneumaticcraft.Pressure;
import mods.immersiveengineering.Squeezer;



var insulationWool = <ReactorCraft:reactorcraft_block_heatermulti:1>;
recipes.remove(insulationWool);
var HOPGraphiteDust = <ImmersiveEngineering:metal:19>;
var anyWool = <minecraft:wool:*>;
var anyKapok = <VeganOption:kapok:*>;
Pressure.addRecipe([anyWool,HOPGraphiteDust*9], 1.9, [insulationWool], false);
Pressure.addRecipe([anyKapok, HOPGraphiteDust*9], 1.9, [insulationWool], false);



var goldWiring = <ReactorCraft:reactorcraft_item_crafting:8>;
var goldIngot = <minecraft:gold_ingot>;
recipes.remove(goldWiring);
mods.pneumaticcraft.Assembly.addLaserRecipe(goldIngot*3,goldWiring);
