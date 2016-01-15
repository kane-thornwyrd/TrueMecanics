import mods.agricraft.SeedMutation;
import mods.agricraft.growing.Soil;
import mods.agricraft.growing.FertileSoils;
import mods.agricraft.growing.BaseBlock;
import minetweaker.item.IItemStack;
import mods.agricraft.CropProduct;
import mods.agricraft.growing.Brightness;

// VANILLA CROPS
var netherWart = <minecraft:nether_wart>;
var seedWheat = <minecraft:wheat_seeds>;
var seedCarrot = <AgriCraft:seedCarrot>;
var seedPotato = <AgriCraft:seedPotato>;
var seedSugarCane = <AgriCraft:seedSugarcane>;
var seedCactus = <AgriCraft:seedCactus>;
var seedPumpkin = <minecraft:pumpkin_seeds>;
var seedMelon = <minecraft:melon_seeds>;
var seedShroomRed = <AgriCraft:seedShroomRed>;
var seedShroomBrown = <AgriCraft:seedShroomBrown>;
var seedNetherWart = <minecraft:nether_wart>;

//Flowers
var seedPoppy = <AgriCraft:seedPoppy>;
var seedDandelion = <AgriCraft:seedDandelion>;
var seedOrchid = <AgriCraft:seedOrchid>;
var seedAllium = <AgriCraft:seedAllium>;
var seedTulipRed = <AgriCraft:seedTulipRed>;
var seedTulipOrange = <AgriCraft:seedTulipOrange>;
var seedTulipWhite = <AgriCraft:seedTulipWhite>;
var seedTulipPink = <AgriCraft:seedTulipPink>;
var seedDaisy = <AgriCraft:seedDaisy>;
var seedCanola = <RotaryCraft:rotarycraft_item_canola>;
var seedHemp = <ImmersiveEngineering:seed>;


var soulSand = <minecraft:soul_sand>;
var compost = <VeganOption:compost>;
var water = <minecraft:water>;

FertileSoils.add(compost);

Brightness.set(seedNetherWart, 0, 16);
Brightness.set(seedShroomBrown, 0, 16);
Brightness.set(seedShroomRed, 0, 16);

SeedMutation.add(seedCanola, seedDandelion, seedWheat);
SeedMutation.add(seedHemp, seedSugarCane, seedWheat);
