import minetweaker.data.IData;
import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;
import minetweaker.liquid.ILiquidStack;
import mods.nei.NEI;
import mods.tconstruct.Smeltery;


var heavyEnginBlock = <ImmersiveEngineering:metalDecoration:5>;
var lightEnginBlock = <ImmersiveEngineering:metalDecoration:7>;

var plateCopper = <ore:plateCopper>;
var plateCoppr = <Railcraft:part.plate:3>;
plateCopper.add(plateCoppr);

var plateIron = <ore:plateIron>;
var plateIrn = <Railcraft:part.plate>;
plateIron.add(plateIrn);


var hammer = <ImmersiveEngineering:tool>;
recipes.addShapeless(plateCoppr, [<ore:ingotCopper>, hammer.marked("hamr")],function(output, inputs, crafting){
  inputs.hamr.damage + 1;
  return output;
});

var simpleGear = <appliedenergistics2:item.ItemMultiMaterial:40>;

recipes.remove(lightEnginBlock);
recipes.addShaped(lightEnginBlock, [
  [plateIron       , plateCopper , plateIron],
  [plateCopper       , simpleGear , plateCopper],
  [plateIron, plateCopper          , plateIron]
]);


var kineticDynamo = <ImmersiveEngineering:metalDevice:9>;
var copperCoil = <ImmersiveEngineering:storage:8>;
var redstone = <ore:dustRedstone>;

recipes.remove(kineticDynamo);
recipes.addShaped(kineticDynamo, [
  [ null, plateIron , null],
  [plateCopper       , copperCoil , plateCopper],
  [redstone, plateIron    , redstone]
]);


var LVCapa = <ImmersiveEngineering:metalDevice:1>;
var plankTreatedWood = <ore:plankTreatedWood>;

recipes.remove(LVCapa);
recipes.addShaped(LVCapa, [
  [ null, plateIron , null],
  [plateIron       , copperCoil , plateIron],
  [plankTreatedWood, redstone    , plankTreatedWood]
]);


var MVCapa = <ImmersiveEngineering:metalDevice:3>;
var electrumCoil = <ImmersiveEngineering:storage:9>;
var redstoneBlock = <ore:blockRedstone>;

recipes.remove(MVCapa);
recipes.addShaped(MVCapa, [
  [ null, plateIron , null],
  [plateIron       , electrumCoil , plateIron],
  [plankTreatedWood, redstoneBlock    , plankTreatedWood]
]);


var HVCapa = <ImmersiveEngineering:metalDevice:7>;
var hvCoil = <ImmersiveEngineering:storage:10>;

recipes.remove(HVCapa);
recipes.addShaped(HVCapa, [
  [ null, plateIron , null],
  [plateIron       , hvCoil , plateIron],
  [plankTreatedWood, redstoneBlock    , plankTreatedWood]
]);



