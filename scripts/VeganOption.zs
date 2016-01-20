
import mods.immersiveengineering.MetalPress;

var stone_slab = <minecraft:stone_slab>;
var potatoStarch = <VeganOption:potatoStarch>;
var potato = <minecraft:potato>;

//  addRecipe(IItemStack output, IIngredient input, IItemStack mold, int energy, @Optional int inputSize)
MetalPress.addRecipe(potatoStarch, potato, stone_slab, 1);

var hammer = <ImmersiveEngineering:tool>;
recipes.addShapeless(potatoStarch, [potato, hammer.anyDamage().marked("hamr")],function(output, inputs, crafting){
  inputs.hamr.damage + 1;
  return output;
});
