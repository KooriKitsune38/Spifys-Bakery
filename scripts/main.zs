import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.roots.Mortar;
import mods.atum.Quern;
import mods.enderio.SagMill;
import mods.appliedenergistics2.Grinder;
import mods.ic2.Macerator;

//Hide from JEI and remove recipe (for items not done elsewhere)
val jeiRemove = [
    <appliedenergistics2:material:40>,
    <buildcraftcore:gear_wood>,
    <buildcraftcore:gear_stone>,
    <buildcraftcore:gear_diamond>,
    <buildcraftcore:gear_iron>,
    <buildcraftcore:gear_gold>,
    <forestry:gear_bronze>,
    <forestry:gear_copper>,
    <forestry:gear_tin>,
    <enderio:item_material:9>,
    <enderio:item_material:10>,
    <railcraft:gear:0>,
    <railcraft:gear:1>,
    <railcraft:gear:2>,
    <railcraft:gear:3>,
    <railcraft:gear:4>,
    <railcraft:gear:5>,
    <forestry:crated.natura.materials.1>,
    <forestry:crated.natura.materials.2>,
] as IItemStack[];

// Torches
val removeTorch = [
    <realistictorches:torch_lit>,
    <realistictorches:matchbox>,
    <atum:palm_torch>,
    <atum:deadwood_torch>,
    <atum:limestone_torch>,
    <atum:bone_torch>,
    <atum:pharaoh_torch>,
    <tconstruct:stone_torch>,
    <realistictorches:glowstone_paste>
] as IItemStack[];

// Bronze Gear
val bronzeGear = [
    <ic2:bronze_sword>,
    <ic2:bronze_pickaxe>,
    <ic2:bronze_axe>,
    <ic2:bronze_hoe>,
    <ic2:bronze_shovel>,
    <ic2:bronze_helmet>,
    <ic2:bronze_chestplate>,
    <ic2:bronze_leggings>,
    <ic2:bronze_boots>,
    <forestry:bronze_pickaxe>,
    <forestry:bronze_shovel>
] as IItemStack[];

// Remove old flour
val flourRemove = [
    <atum:emmer_dough>,
    <atum:emmer_flour>,
    <natura:materials:1>,
    <natura:materials:2>,
    <enderio:item_material:21>
] as IItemStack[];

val jeiRemoveAll = [
    jeiRemove,
    removeTorch,
    bronzeGear,
    flourRemove
] as IItemStack[][];

//Remove some gear types from being crafted
val gears = [
    <thermalfoundation:material:23>,
    <thermalfoundation:material:24>,
    <thermalfoundation:material:25>,
    <thermalfoundation:material:26>,
    <thermalfoundation:material:27>,
    <thermalfoundation:material:256>,
    <thermalfoundation:material:257>,
    <thermalfoundation:material:291>,
] as IItemStack[];

val rmOnlyTorchRecipe = [
    <realistictorches:torch_unlit>,
    <minecraft:torch>
] as IItemStack[];

val removeRecipeAll = [
    gears,
    rmOnlyTorchRecipe
] as IItemStack[][];

// Recipes that need to be removed by Name
val removeByName = [
    "enderio:gear_stone_upgrade",
    "enderio:gear_stone",
    "enderio:gear_wood",
    "enderio:gear_ae2_messes_things_up",
    "enderio:gear_just_to_be_sure",
    "enderio:gear_better_save_than_sorry",
    "natura:common/bread",
    "harvestcraft:minecraft_bread"
] as string[];

val jeiHide = [
    <atum:emmer_bread>,
    <roots:flour>
] as IItemStack[];

// Just Hide from JEI
for item in jeiHide {
    mods.jei.JEI.hide(item);
}

// Remove All
for itemStack in jeiRemoveAll {
    for item in itemStack {
        mods.jei.JEI.removeAndHide(item);
    }
}

// Remove by Name
for item in removeByName {
    recipes.removeByRecipeName(item);
}

for itemStack in removeRecipeAll {
    for item in itemStack {
        recipes.remove(item);
    }
}

// Materials Variables
// Torches
val coalStack = [
    <twilightforest:torchberries>,
    <realistictorches:glowstone_crystal>
] as IItemStack[];

val coalVanilla = <ore:coalVanilla>;
coalVanilla.add(coalStack);

val coalStackUnlit = [
    <minecraft:coal>,
    <thermalfoundation:material:832>,
    <thermalfoundation:material:833>
] as IItemStack[];
val coalUnlit = <ore:fuelCoke>;
coalUnlit.add(coalStackUnlit);

val stick = <ore:stickWood>;
// Gears
val cobble = <ore:cobblestone>;
val cu = <ore:ingotCopper>;
val cuPlate = <ore:plateCopper>;
val tin = <ore:ingotTin>;
val tinPlate = <ore:plateTin>;
val bronze = <ore:ingotBronze>;
val bronzePlate = <ore:plateBronze>;
val gold = <ore:ingotGold>;
val goldPlate = <ore:plateGold>;
val dia = <ore:gemDiamond>;
val iron = <ore:ingotIron>;
val emrld = <ore:gemEmerald>;
val wdGear = <ore:gearWood>;
val rckGear = <ore:gearStone>;
val feGear = <ore:gearIron>;
val fePlate = <ore:plateIron>;

//Flour arrays
val cropFlour = [
    <ore:cropWheat>,
    <ore:cropRice>,
    <ore:cropRye>,
    <ore:cropOats>,
    <ore:cropBarley>,
    <ore:cropTaro>,
    <ore:cropSoybean>,
    <ore:cropQuinoa>,
    <ore:cropPeas>,
    <ore:cropMillet>,
    <ore:cropChickpea>,
    <ore:cropCassava>,
    <ore:cropBean>,
    <ore:cropAmaranth>
] as IOreDictEntry[];

val cropSeed = [
    <minecraft:wheat_seeds>,
    <harvestcraft:riceseeditem>,
    <harvestcraft:ryeseeditem>,
    <harvestcraft:oatsseeditem>,
    <harvestcraft:barleyseeditem>,
    <harvestcraft:taroseeditem>,
    <harvestcraft:soybeanseeditem>,
    <harvestcraft:quinoaseeditem>,
    <harvestcraft:peasseeditem>,
    <harvestcraft:milletseeditem>,
    <harvestcraft:chickpeaseeditem>,
    <harvestcraft:cassavaseeditem>,
    <harvestcraft:beanseeditem>,
    <harvestcraft:amaranthseeditem>
] as IItemStack[];

val cropFlourNoSeed = [
    <ore:cropPotato>,
    <ore:cropCoconut>,
    <ore:cropChestnut>,
    <ore:cropBanana>,
    <ore:cropAlmond>
] as IOreDictEntry[];

// Add Torch Recipe
recipes.addShaped("unlitTorch",<realistictorches:torch_unlit> * 4,
[
    [coalUnlit],
    [stick]
]);

recipes.addShaped("vanillaTorch",<minecraft:torch> * 4,
[
    [coalVanilla],
    [stick]
]);


//UnifyFlourProject v2
val uniFlour = <harvestcraft:flouritem>;

//Unify Bread detour
furnace.remove(<minecraft:bread>);
furnace.addRecipe(<minecraft:bread>, <harvestcraft:doughitem>, 0.35);

//Replace flours
mods.atum.Quern.removeRecipe("atum:emmer_wheat");
mods.atum.Quern.addRecipe(<atum:emmer>, uniFlour, 2);
mods.enderio.SagMill.removeRecipe(<minecraft:wheat>);
mods.enderio.SagMill.removeRecipe(<natura:materials>);
Grinder.removeRecipe(<minecraft:wheat>);
Mortar.removeRecipe(<roots:flour>);
furnace.remove(<atum:emmer_bread>);

for i, item in cropFlour {
    //EnderIO SAG Mill w/ seeds
    mods.enderio.SagMill.addRecipe([uniFlour * 2, cropSeed[1]], [1.0, 0.2], item, "MULTIPLY_OUTPUT", 1000);
    //AE2 Grinder w/ seeds
    Grinder.addRecipe(uniFlour * 2, item, 4, cropSeed[i], 0.2);
    //IC2 Macerator Part 1
    mods.ic2.Macerator.addRecipe(uniFlour * 2, item);
    //Roots Mortar Part 1
    Mortar.addRecipe("flourMortar_0" + i, uniFlour, [item]);
}

for i, item in cropFlourNoSeed {
    //EnderIO SAG Mill w/o seeds
    mods.enderio.SagMill.addRecipe([uniFlour * 2], [1.0], item, "MULTIPLY_OUTPUT", 1000);
    //AE2 Grinder w/o seeds
    Grinder.addRecipe(uniFlour * 2, item, 4);
    //IC2 Macerator Part 2
    mods.ic2.Macerator.addRecipe(uniFlour * 2, item);
    //Roots Mortar Part 2
    Mortar.addRecipe("flourMortar_1" + i, uniFlour, [item]);
}


// Add Gear Recipes
recipes.addShaped("stoneGear",<thermalfoundation:material:23>,
[
    [null, cobble, null],
    [cobble, wdGear, cobble],
    [null, cobble, null]
]);

recipes.addShaped("stoneGearAlt",<thermalfoundation:material:23>,
[
    [stick, cobble, stick],
    [cobble, null, cobble],
    [stick, cobble, stick]
]);

recipes.addShaped("ironGear",<thermalfoundation:material:24>,
[
    [null, iron, null],
    [iron, rckGear, iron],
    [null, iron, null]
]);

recipes.addShaped("ironGearAlt",<thermalfoundation:material:24>,
[
    [null, fePlate, null],
    [fePlate, rckGear, fePlate],
    [null, fePlate, null]
]);

recipes.addShaped("copperGear",<thermalfoundation:material:256>,
[
    [null, cu, null],
    [cu, rckGear, cu],
    [null, cu, null]
]);

recipes.addShaped("copperGearAlt",<thermalfoundation:material:256>,
[
    [null, cuPlate, null],
    [cuPlate, rckGear, cuPlate],
    [null, cuPlate, null]
]);

recipes.addShaped("tinGear",<thermalfoundation:material:257>,
[
    [null, tin, null],
    [tin, rckGear, tin],
    [null, tin, null]
]);

recipes.addShaped("tinGearAlt",<thermalfoundation:material:257>,
[
    [null, tinPlate, null],
    [tinPlate, rckGear, tinPlate],
    [null, tinPlate, null]
]);

recipes.addShaped("bronzeGear",<thermalfoundation:material:291>,
[
    [null, bronze, null],
    [bronze, rckGear, bronze],
    [null, bronze, null]
]);

recipes.addShaped("bronzeGearAlt",<thermalfoundation:material:291>,
[
    [null, bronzePlate, null],
    [bronzePlate, rckGear, bronzePlate],
    [null, bronzePlate, null]
]);

recipes.addShaped("goldGear",<thermalfoundation:material:25>,
[
    [null, gold, null],
    [gold, feGear, gold],
    [null, gold, null]
]);

recipes.addShaped("goldGearAlt",<thermalfoundation:material:25>,
[
    [null, goldPlate, null],
    [goldPlate, feGear, goldPlate],
    [null, goldPlate, null]
]);

recipes.addShaped("diamondGear",<thermalfoundation:material:26>,
[
    [null, dia, null],
    [dia, feGear, dia],
    [null, dia, null]
]);

recipes.addShaped("emeraldGear",<thermalfoundation:material:27>,
[
    [null, emrld, null],
    [emrld, feGear, emrld],
    [null, emrld, null]
]);