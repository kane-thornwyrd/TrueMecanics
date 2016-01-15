import minetweaker.data.IData;
import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;
import minetweaker.liquid.ILiquidStack;
import mods.nei.NEI;
import mods.tconstruct.Smeltery;

var oreAluminium = <ore:aluminium>;
var oreAluminum = <ore:aluminum>;

var moonOreAlu = <MoonMod:blockAluOre>;
var moonBlockAlu = <MoonMod:blockAlu>;
var moonIngotAlu = <MoonMod:aluIngot>;


oreAluminium.add(moonOreAlu);
oreAluminum.add(moonOreAlu);

var liquidAliminium = <liquid:aluminum.molten>;

Smeltery.addMelting(moonOreAlu, liquidAliminium * 288, 350, moonOreAlu);
Smeltery.addMelting(moonBlockAlu, liquidAliminium * 1296, 450, moonBlockAlu);
Smeltery.addMelting(moonIngotAlu, liquidAliminium * 144, 300, moonBlockAlu);


var ingotAluminum = <ore:ingotAluminum>;
var ingotAluminium = <ore:ingotAluminium>;
var ingotNaturalAluminium = <ore:ingotNaturalAluminium>;



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
