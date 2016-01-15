import minetweaker.data.IData;
import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;
import minetweaker.liquid.ILiquidStack;
import mods.nei.NEI;
import mods.railcraft.Rolling;

var rollingMachine = <Railcraft:machine.alpha:8>;
var piston = <minecraft:piston>;
var ingotCopper = <ore:ingotCopper>;
var stoneLargePlate = <TConstruct:heavyPlate:1>;

recipes.remove(rollingMachine);
recipes.addShaped(rollingMachine, [
  [null       , stoneLargePlate , null],
  [null       , stoneLargePlate , null],
  [ingotCopper, piston          , ingotCopper]
]);



var rockCrucherPart = <Railcraft:machine.alpha:15>;
var steelLargePlate = <TConstruct:heavyPlate:16>;
var steelPlates = <Railcraft:part.plate:1>;


recipes.remove(rockCrucherPart);
recipes.addShaped(rockCrucherPart, [
  [steelPlates , piston       , steelPlates],
  [steelLargePlate  , steelLargePlate  , steelLargePlate],
  [steelPlates , piston , steelPlates]
]);
