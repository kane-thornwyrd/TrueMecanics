import minetweaker.data.IData;
import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;
import minetweaker.liquid.ILiquidStack;
import mods.nei.NEI;
import mods.railcraft.Rolling;

var enderRockClump = <EnderOre:EnderRock_Clump>;

<ore:dustEnder>.add(<EnderOre:EnderOreShard>);

recipes.addShaped(enderRockClump*2, [
  [null, <ore:dustEnder>, null],
  [<ore:dustEnder>, <minecraft:clay_ball> , <ore:dustEnder>],
  [null, <ore:dustEnder>, null]
]);

var banned = [
<EnderOre:EnderBread>,
<EnderOre:EnderOre_Multitool>,
<EnderOre:EnderPickaxe>,
<EnderOre:EnderPickaxeMK1>,
<EnderOre:EnderPickaxeMK2>
] as IItemStack[];

for ban in banned {
  NEI.hide(ban);
  recipes.remove(ban);
}
