import minetweaker.data.IData;
import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;
import minetweaker.liquid.ILiquidStack;
import mods.nei.NEI;

var conveyorBelt = <Magneticraft:conveyor_low>;
var ironIngot = <ore:ingotIron>;
var rubberSheet = <ore:itemRubber>;
var wrench = <Magneticraft:item.wrench>;
var ironPlate = <Railcraft:part.plate>;

recipes.remove(conveyorBelt);
recipes.addShaped(conveyorBelt*12, [
  [null      , wrench , null],
  [rubberSheet   , rubberSheet , rubberSheet],
  [ironPlate , ironPlate              , ironPlate],
]);

var multiblockChassis = <Magneticraft:chasis>;
var heavyTechBlock = <ImmersiveEngineering:metalDecoration:5>;
var steelPlate = <Railcraft:part.plate:1>;

recipes.remove(multiblockChassis);
recipes.addShaped(multiblockChassis*12, [
  [steelPlate , rubberSheet       , steelPlate],
  [rubberSheet  , null  , rubberSheet],
  [steelPlate , rubberSheet , steelPlate]
]);


var multiblockControls = <Magneticraft:mb_controls>;
var lever = <minecraft:lever>;

recipes.remove(multiblockControls);
recipes.addShaped(multiblockControls, [
  [steelPlate , lever       , steelPlate],
  [lever  , multiblockChassis  , lever],
  [steelPlate , lever , steelPlate]
]);


var machineHousing = <Magneticraft:machine_housing>;

recipes.remove(machineHousing);
recipes.addShaped(machineHousing, [
  [ironPlate , steelPlate       , ironPlate],
  [steelPlate  , heavyTechBlock  , steelPlate],
  [ironPlate , steelPlate , ironPlate]
]);


NEI.hide(<Magneticraft:tungsten_ore>);


var tungstenBlend = <contenttweaker:tungstenblend>;
recipes.addShapeless(tungstenBlend, [
  <ore:dustIron>,
  <ore:dustCoal>
]);

recipes.addShapeless(tungstenBlend, [
  <ore:dustIron>,
  <ore:dustCharcoal>
]);

mods.tconstruct.Smeltery.addMelting(tungstenBlend, <liquid:tungsten> * 144, 1200, <Magneticraft:block_tungsten>);
furnace.addRecipe(<Magneticraft:item.ingotTungsten>, tungstenBlend,5);

