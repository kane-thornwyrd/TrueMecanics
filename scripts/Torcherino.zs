import minetweaker.data.IData;
import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;
import minetweaker.liquid.ILiquidStack;
import mods.nei.NEI;

var torcherino = <Torcherino:tile.torcherino>;
var invtorcherino = <Torcherino:tile.inverse_torcherino>;
var netherstar = <minecraft:nether_star>;
var singularity = <appliedenergistics2:item.ItemMultiMaterial:47>;
var wooden_stick = <minecraft:stick>;

recipes.remove(torcherino);
recipes.addShaped(torcherino, [
  [singularity       , singularity          , singularity],
  [singularity       , netherstar , singularity],
  [singularity, wooden_stick , singularity]
]);

recipes.remove(invtorcherino);
NEI.hide(invtorcherino);
