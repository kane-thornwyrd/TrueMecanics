import minetweaker.data.IData;
import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;
import minetweaker.liquid.ILiquidStack;
import mods.nei.NEI;
import mods.railcraft.Rolling;
import mods.appeng.Inscriber;

var plateAppliedEnergistic = <contenttweaker:appliedenergisticplate>;
var steelPlate = <Railcraft:part.plate:1>;
var rubberSheet = <Magneticraft:item.rubber>;
var certusQuartzdust = <appliedenergistics2:item.ItemMultiMaterial:2>;
var engineeringProc = <appliedenergistics2:item.ItemMultiMaterial:24>;


Rolling.addShaped(plateAppliedEnergistic*6, [
[rubberSheet, rubberSheet,rubberSheet],
[steelPlate, steelPlate,steelPlate],
[certusQuartzdust, engineeringProc,certusQuartzdust]
]);


var craftingTable = <minecraft:crafting_table>;
var chest = <minecraft:chest>;

var CellWorkbench = <appliedenergistics2:tile.BlockCellWorkbench>;
recipes.remove(CellWorkbench);
recipes.addShaped(CellWorkbench, [
  [plateAppliedEnergistic       , craftingTable , plateAppliedEnergistic],
  [plateAppliedEnergistic       , chest , plateAppliedEnergistic],
  [null, plateAppliedEnergistic          , null]
]);


var vibrationChamber = <appliedenergistics2:tile.BlockVibrationChamber>;
var energyAcceptor = <appliedenergistics2:tile.BlockEnergyAcceptor>;
var cauldron = <minecraft:cauldron>;
var furnace = <minecraft:furnace>;

recipes.remove(vibrationChamber);
recipes.addShaped(vibrationChamber, [
  [steelPlate       , energyAcceptor , steelPlate],
  [steelPlate       , furnace , steelPlate],
  [steelPlate, cauldron          , steelPlate]
]);



var MEChest = <appliedenergistics2:tile.BlockChest>;
var Terminal = <appliedenergistics2:item.ItemMultiPart:380>;
val glassCable = <appliedenergistics2:item.ItemMultiPart:16>.onlyDamageBetween(0,16);

recipes.remove(MEChest);
recipes.addShaped(MEChest, [
  [plateAppliedEnergistic       , Terminal , plateAppliedEnergistic],
  [plateAppliedEnergistic       , chest , plateAppliedEnergistic],
  [glassCable, plateAppliedEnergistic          , glassCable]
]);

val pressCalculation = <appliedenergistics2:item.ItemMultiMaterial:13>;
val pressEngineering = <appliedenergistics2:item.ItemMultiMaterial:14>;
val pressLogic = <appliedenergistics2:item.ItemMultiMaterial:15>;
val pressSilicon = <appliedenergistics2:item.ItemMultiMaterial:19>;
val chisel = <chisel:chisel:*>;
val plateIron = <Railcraft:part.plate>;

recipes.addShapeless(pressSilicon, [chisel.reuse(), plateIron]);
recipes.addShapeless(pressSilicon, [chisel.reuse(), pressLogic]);
recipes.addShapeless(pressCalculation, [chisel.reuse(), pressSilicon]);
recipes.addShapeless(pressEngineering, [chisel.reuse(), pressCalculation]);
recipes.addShapeless(pressLogic, [chisel.reuse(), pressEngineering]);

var controllingPlate = <contenttweaker:mecontrolingplate>;

Rolling.addShaped(controllingPlate*4, [
  [plateAppliedEnergistic, plateAppliedEnergistic,plateAppliedEnergistic],
  [pressSilicon, pressCalculation,pressEngineering],
  [null, pressLogic,null]
]);


var controller = <appliedenergistics2:tile.BlockController>;
var pureFluixCrystal = <appliedenergistics2:item.ItemMultiMaterial:12>;
var EngineeringProc = <appliedenergistics2:item.ItemMultiMaterial:24>;


recipes.remove(controller);
recipes.addShaped(controller, [
  [pureFluixCrystal       , controllingPlate , pureFluixCrystal],
  [controllingPlate       , EngineeringProc , controllingPlate],
  [pureFluixCrystal, controllingPlate          , pureFluixCrystal]
]);


var meDrive = <appliedenergistics2:tile.BlockDrive>;
recipes.remove(meDrive);
recipes.addShaped(meDrive, [
  [EngineeringProc       , plateAppliedEnergistic , EngineeringProc],
  [plateAppliedEnergistic       , chest , plateAppliedEnergistic],
  [EngineeringProc, plateAppliedEnergistic          , EngineeringProc]
]);

var meInterface = <appliedenergistics2:tile.BlockInterface>;
var formationCore = <appliedenergistics2:item.ItemMultiMaterial:43>;
var anihilationCore = <appliedenergistics2:item.ItemMultiMaterial:44>;

recipes.remove(meInterface);
recipes.addShaped(meInterface, [
  [plateAppliedEnergistic       , null , plateAppliedEnergistic],
  [anihilationCore       , null , formationCore],
  [plateAppliedEnergistic, null          , plateAppliedEnergistic]
]);


