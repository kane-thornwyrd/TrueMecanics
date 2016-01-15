import minetweaker.data.IData;
import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;
import minetweaker.liquid.ILiquidStack;
import mods.nei.NEI;
import mods.railcraft.Rolling;

var EnderRockMixIngot = <EnderOre:EnderRock_MixIngot>;
var rubberSheet = <Magneticraft:item.rubber>;
var enderioplate = <contenttweaker:enderioplate>;

Rolling.addShaped(enderioplate*4, [
  [rubberSheet, rubberSheet,null],
  [EnderRockMixIngot, EnderRockMixIngot,null],
  [null, null,null]
]);
