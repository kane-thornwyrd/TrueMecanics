import minetweaker.data.IData;
import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;
import minetweaker.liquid.ILiquidStack;
import mods.nei.NEI;
import mods.tconstruct.Smeltery;

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


#NEI.hide(<Magneticraft:tungsten_ore>);

var tungstenBlend = <contenttweaker:tungstenblend>;
recipes.addShapeless(tungstenBlend, [
  <ore:dustIron>,
  <ore:dustCoal>
]);

recipes.addShapeless(tungstenBlend, [
  <ore:dustIron>,
  <ore:dustCharcoal>
]);

Smeltery.addMelting(tungstenBlend, <liquid:tungsten> * 144, 1200, <Magneticraft:block_tungsten>);
furnace.addRecipe(<Magneticraft:item.ingotTungsten>, tungstenBlend,5);


var chunks = [
<Magneticraft:item.chunks>,//iron
<Magneticraft:item.chunks:1>,//gold
<Magneticraft:item.chunks:2>,//copper
<Magneticraft:item.chunks:3>, //tin
<Magneticraft:item.chunks:4>, //tungsten
<Magneticraft:item.chunks:5>, //Lead
<Magneticraft:item.chunks:6>, //Silver
<Magneticraft:item.chunks:7>, //Uranium
<Magneticraft:item.chunks:8>, //Thorium
<Magneticraft:item.chunks:9>, //Nickel
<Magneticraft:item.chunks:10>, //Ardite
<Magneticraft:item.chunks:11>, //Cobalt
<Magneticraft:item.chunks:12>, //Zinc
<Magneticraft:item.chunks:13>//Aluminium
] as IItemStack[];

var blocks = [
  <minecraft:iron_block>,//iron
  <minecraft:gold_block>,//gold
  <ImmersiveEngineering:storage>,//copper
  <GalacticraftCore:tile.gcBlockCore:10>,//tin
  <Magneticraft:block_tungsten>,//tungsten
  <ImmersiveEngineering:storage:2>,//Lead
  <ImmersiveEngineering:storage:3>,//Silver
  <aobd:blockUranium>,//Uranium
  <aobd:blockThorium>,//Thorium
  <ImmersiveEngineering:storage:4>,//Nickel
  <TConstruct:MetalBlock:1>,//Ardite
  <TConstruct:MetalBlock>,//Cobalt
  <Magneticraft:block_zinc>,//Zinc
  <ImmersiveEngineering:storage:1>//Aluminium
] as IItemStack[];

var liquids = [
  <liquid:iron.molten>,
  <liquid:gold.molten>,
  <liquid:copper.molten>,
  <liquid:tin.molten>,
  <liquid:tungsten>,
  <liquid:lead.molten>,
  <liquid:silver.molten>,
  <liquid:uranium>,
  <liquid:thorium>,
  <liquid:nickel.molten>,
  <liquid:ardite.molten>,
  <liquid:cobalt.molten>,
  <liquid:zinc>,
  <liquid:aluminum.molten>,
] as ILiquidStack[];

for i, liqu in liquids {
  Smeltery.addMelting(chunks[i], liqu * 288, 1200, blocks[i]);
}

