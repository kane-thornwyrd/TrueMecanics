import minetweaker.data.IData;
import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;
import minetweaker.liquid.ILiquidStack;
import mods.nei.NEI;
import mods.railcraft.Rolling;
import mods.immersiveengineering.Squeezer;
import mods.immersiveengineering.MetalPress;



var ferromagneticIngot = <ReactorCraft:reactorcraft_item_crafting:10>;
var ferromagneticPlate = <ReactorCraft:reactorcraft_item_crafting:5>;
recipes.remove(ferromagneticPlate);
Rolling.addShaped(ferromagneticPlate, [[ferromagneticIngot, ferromagneticIngot], [ferromagneticIngot, ferromagneticIngot]]);
var ingotFerromagnetic = <ore:ingotFerromagnetic>;
var plateFerromagnetic = <ore:plateFerromagnetic>;
ingotFerromagnetic.add(ferromagneticIngot);
var plateMold = <ImmersiveEngineering:mold>;

var hammer = <ImmersiveEngineering:tool>;
recipes.addShapeless(<contenttweaker:fourFeromagneticIngots>, [ingotFerromagnetic,ingotFerromagnetic,ingotFerromagnetic,ingotFerromagnetic, hammer.marked("hamr")],function(output, inputs, crafting){
  inputs.hamr.damage + 4;
  return output;
});


MetalPress.addRecipe(ferromagneticPlate, <contenttweaker:fourFeromagneticIngots>, plateMold, 10000);



var canolaSeed = <RotaryCraft:rotarycraft_item_canola>;
var denseCanolaSeed = <RotaryCraft:rotarycraft_item_canola:1>;
var canolaSeedHusks = <RotaryCraft:rotarycraft_item_canola:2>;
var lubricant = <liquid:lubricant>;

//OutputStack, OutputFluid, InputStack, Time in Ticks
Squeezer.addRecipe(null, lubricant * 98, canolaSeed, 600);
Squeezer.addRecipe(null, lubricant * 1176, denseCanolaSeed, 3600);
Squeezer.addRecipe(null, lubricant * 90, canolaSeedHusks, 1200);

var rotaryCraftLubBucket = <RotaryCraft:rotarycraft_item_bucket>;
var pneumaticraftLubBucket = <PneumaticCraft:lubricantBucket>;

recipes.addShapeless(rotaryCraftLubBucket, [pneumaticraftLubBucket.noReturn()]);
recipes.addShapeless(pneumaticraftLubBucket, [rotaryCraftLubBucket.noReturn()]);

var lubricantBuckets = <ore:bucketLubricant>;

lubricantBuckets.add(rotaryCraftLubBucket);
lubricantBuckets.add(pneumaticraftLubBucket);
