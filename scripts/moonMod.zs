import minetweaker.data.IData;
import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;
import minetweaker.liquid.ILiquidStack;
import mods.nei.NEI;

var oreAluminium = <ore:aluminium>;
var oreAluminum = <ore:aluminum>;

var moonOreAlu = <MoonMod:blockAluOre>;

oreAluminium.add(moonOreAlu);
oreAluminum.add(moonOreAlu);


var ingotAluminum = <ore:ingotAluminum>;
var ingotAluminium = <ore:ingotAluminium>;
var ingotNaturalAluminium = <ore:ingotNaturalAluminium>;

var moonIngotAlu = <MoonMod:aluIngot>;


  ingotAluminum.add(moonIngotAlu);
  ingotAluminium.add(moonIngotAlu);
  ingotNaturalAluminium.add(moonIngotAlu);


ingotAluminum.mirror(ingotAluminium);
ingotAluminium.mirror(ingotNaturalAluminium);
ingotNaturalAluminium.mirror(ingotAluminum);

var plankWood = <ore:plankWood>;

var aluwood = <MoonMod:aluWood>;

recipes.remove(aluwood);
recipes.addShapeless(aluwood, [ingotAluminum,]);
recipes.addShapeless(aluwood, [ingotAluminium,plankWood]);
recipes.addShapeless(aluwood, [ingotNaturalAluminium,plankWood]);
