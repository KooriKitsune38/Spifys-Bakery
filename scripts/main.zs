import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.roots.Mortar;
import mods.atum.Quern;
import mods.enderio.SagMill;
import mods.appliedenergistics2.Grinder;
import mods.ic2.Macerator;
import mods.forestry.Carpenter;





//-----Item values-----

//Items
val stick = <ore:stickWood>;
val cobble = <ore:cobblestone>;
val glowDust = <ore:dustGlowstone>;
val feather = <ore:feather>;
val dustCoal = <ore:dustCoal>;
val fuelCoke = <ore:fuelCoke>;
//Blocks
val wood = <ore:plankWood>;
val slabWood = <ore:slabWood>;
val pumpkin = <minecraft:pumpkin>;
val glass = <ore:blockGlass>;
val glassPane = <ore:paneGlassColorless>;
val outdoorIron = <naturaldecormod:outdooriron>;
//Metals/Gems
val cu = <ore:ingotCopper>;
val tin = <ore:ingotTin>;
val bronze = <ore:ingotBronze>;
val iron = <ore:ingotIron>;
val gold = <ore:ingotGold>;
val dia = <ore:gemDiamond>;
val emrld = <ore:gemEmerald>;
//Plates
val cuPlate = <ore:plateCopper>;
val tinPlate = <ore:plateTin>;
val bronzePlate = <ore:plateBronze>;
val fePlate = <ore:plateIron>;
val goldPlate = <ore:plateGold>;
//Gears
val wdGear = <ore:gearWood>;
val rckGear = <ore:gearStone>;
val feGear = <ore:gearIron>;
//Flour
val uniFlour = <harvestcraft:flouritem>;
//Torch
val newTorchLit = <realistictorches:torch_lit>;
val newTorchUnlit = <realistictorches:torch_unlit>;
val newTorchOre = <ore:torch>;
//Aether
val holystone = <aether_legacy:holystone>;
val ambrosium = <aether_legacy:ambrosium_shard>;





//-----Item removal-----

//Hide from JEI and remove recipe
val jeiRemove = [
    //Gears
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
    //Flour stuff
    <forestry:crated.natura.materials.1>,
    <forestry:crated.natura.materials.2>,
    <atum:emmer_dough>,
    <atum:emmer_flour>,
    <natura:materials:1>,
    <natura:materials:2>,
    <enderio:item_material:21>,
    //Bronze stuff
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
    <forestry:bronze_shovel>,
    //Ciruits
    <energycontrol:item_component:0>,
    <energycontrol:item_component:1>,
    //Torches
    <minecraft:torch>,
    <atum:palm_torch>,
    <atum:deadwood_torch>,
    <atum:limestone_torch>,
    <atum:bone_torch>,
    <atum:pharaoh_torch>,
    <mysticalagriculture:miners_torch>,
    <aether_legacy:ambrosium_torch>,
    //Betweenlands
    <thebetweenlands:weedwood_shovel>,
    <thebetweenlands:bone_shovel>,
    <thebetweenlands:octine_shovel>,
    <thebetweenlands:valonite_shovel>,
    <thebetweenlands:items_crushed:17>,
    <thebetweenlands:sulfur_torch>
] as IItemStack[];

//Just remove Recipe
val recipeRemove = [
    //Gears
    <thermalfoundation:material:23>,
    <thermalfoundation:material:24>,
    <thermalfoundation:material:25>,
    <thermalfoundation:material:26>,
    <thermalfoundation:material:27>,
    <thermalfoundation:material:256>,
    <thermalfoundation:material:257>,
    <thermalfoundation:material:291>,
    //Light stuff
    <minecraft:lit_pumpkin>,
    <naturaldecormod:lamplight>,
    <naturaldecormod:ceilinglamp>,
    <bibliocraft:lanterniron>,
    <bibliocraft:lanterngold>,
    <rustic:lantern_wood>,
    <roots:glass_eye>,
    //Jack O' Lanterns
    <fairylights:light:112>,
    <fairylights:light:113>,
    <fairylights:light:114>,
    <fairylights:light:115>,
    <fairylights:light:116>,
    <fairylights:light:117>,
    <fairylights:light:118>,
    <fairylights:light:119>,
    <fairylights:light:120>,
    <fairylights:light:121>,
    <fairylights:light:122>,
    <fairylights:light:123>,
    <fairylights:light:124>,
    <fairylights:light:125>,
    <fairylights:light:126>,
    <fairylights:light:127>,
    //Aether
    <aether_legacy:incubator>
] as IItemStack[];

//Just Hide from JEI
val jeiHide = [
    //Flour stuff
    <atum:emmer_bread>,
    <roots:flour>,
    //Torch
    <minecraft:torch>,
    <tconstruct:stone_torch>
] as IItemStack[];

//Recipes that need to be removed by Name
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

//Remove from mod items
mods.atum.Quern.removeRecipe("atum:emmer_wheat");
mods.enderio.SagMill.removeRecipe(<minecraft:wheat>);
mods.enderio.SagMill.removeRecipe(<natura:materials>);
Grinder.removeRecipe(<minecraft:wheat>);
Mortar.removeRecipe(<roots:flour>);
furnace.remove(<atum:emmer_bread>);
mods.forestry.Carpenter.removeRecipe(<minecraft:torch>);

//Yippie
for item in jeiRemove {
    mods.jei.JEI.removeAndHide(item);
}
for item in recipeRemove {
    recipes.remove(item);
}
for item in jeiHide {
    mods.jei.JEI.hide(item);
}
for item in removeByName {
    recipes.removeByRecipeName(item);
}





//-----UnifyFlourProject v2-----

//Unify Bread detour
furnace.remove(<minecraft:bread>);
furnace.addRecipe(<minecraft:bread>, <harvestcraft:doughitem>, 0.35);

//Replace flours
mods.atum.Quern.addRecipe(<atum:emmer>, uniFlour, 2);

//Flour arrays
val cropFlour = [
    <ore:cropWheat>, 
    <ore:cropRice>, 
    <ore:cropRye>, 
    <ore:cropOats>, 
    <ore:cropBarley>, 
    <ore:cropSoybean>, 
    <ore:cropPeas>, 
    <ore:cropBean>
] as IOreDictEntry[];

val cropFlourNoSeed = [
    <ore:cropPotato>, 
    <ore:cropCoconut>, 
    <ore:cropChestnut>, 
    <ore:cropBanana>, 
    <ore:cropAlmond> 
] as IOreDictEntry[];

val cropSeed = [
    <minecraft:wheat_seeds>,
    <harvestcraft:riceseeditem>,
    <harvestcraft:ryeseeditem>,
    <harvestcraft:oatsseeditem>,
    <harvestcraft:barleyseeditem>,
    <harvestcraft:soybeanseeditem>,
    <harvestcraft:peasseeditem>,
    <harvestcraft:beanseeditem>
] as IItemStack[];

for i, item in cropFlour {
    mods.enderio.SagMill.addRecipe([uniFlour * 2, cropSeed[i]], [1.0, 0.2], item, "MULTIPLY_OUTPUT", 1000);     //EnderIO SAG Mill w/ seeds
    Grinder.addRecipe(uniFlour * 2, item, 4, cropSeed[i], 0.2);                                                 //AE2 Grinder w/ seeds
    mods.ic2.Macerator.addRecipe(uniFlour * 2, item);                                                           //IC2 Macerator Part 1
    Mortar.addRecipe("flourMortar_0" + i, uniFlour, [item]);                                                    //Roots Mortar Part 1
}

for i, item in cropFlourNoSeed {
    mods.enderio.SagMill.addRecipe([uniFlour * 2], [1.0], item, "MULTIPLY_OUTPUT", 1000);                       //EnderIO SAG Mill w/o seeds
    Grinder.addRecipe(uniFlour * 2, item, 4);                                                                   //AE2 Grinder w/o seeds
    mods.ic2.Macerator.addRecipe(uniFlour * 2, item);                                                           //IC2 Macerator Part 2
    Mortar.addRecipe("flourMortar_1" + i, uniFlour, [item]);                                                    //Roots Mortar Part 2
}





//-----Recipe Addition-----

//Fixing recipies needing torches
recipes.addShaped("newAetherTorch", newTorchUnlit * 4,
[
    [ambrosium],
    [stick]
]);

recipes.addShaped("newTorchCoke", newTorchUnlit * 8,
[
    [fuelCoke],
    [stick]
]);

recipes.addShaped("pumpkinLitRealistic", <minecraft:lit_pumpkin>,
[
    [pumpkin],
    [newTorchLit]
]);

recipes.addShaped("lampLightNew", <naturaldecormod:lamplight> * 2,
[
    [newTorchLit],
    [outdoorIron]
]);

recipes.addShaped("lampCeilingNew", <naturaldecormod:ceilinglamp> * 2,
[
    [outdoorIron],
    [newTorchLit],
    [outdoorIron]
]);

recipes.addShaped("lanternIronNew", <bibliocraft:lanterniron>,
[
    [glassPane, glowDust, glassPane],
    [iron, newTorchLit, iron],
    [glassPane, glowDust, glassPane]
]);

recipes.addShaped("lanternGoldNew", <bibliocraft:lanterngold>,
[
    [glassPane, glowDust, glassPane],
    [gold, newTorchLit, gold],
    [glassPane, glowDust, glassPane]
]);

recipes.addShaped("lanternWoodNew", <rustic:lantern_wood>,
[
    [stick, wood, stick],
    [gold, newTorchLit, gold],
    [stick, wood, stick]
]);

recipes.addShaped("glassEyeNew", <roots:glass_eye>,
[
    [glass, glass, glass],
    [glass, newTorchLit, glass],
    [glass, glass, glass]
]);

recipes.addShaped("incubatorNew", <aether_legacy:incubator>,
[
    [holystone, holystone, holystone],
    [holystone, newTorchOre, holystone],
    [holystone, holystone, holystone]
]);

recipes.addShaped("particleCustomizerNew", <simplyjetpacks:metaitem:0>,
[
    [null, newTorchOre, null],
    [newTorchOre, dustCoal, newTorchOre],
    [null, newTorchOre, null]
]);



//BiblioCraft Desk stuff
val deskWood = [
    <minecraft:planks:0>,
    <minecraft:planks:1>,
    <minecraft:planks:2>,
    <minecraft:planks:3>,
    <minecraft:planks:4>,
    <minecraft:planks:5>,
    <bibliocraft:framingsheet>
] as IItemStack[];

val deskSlab = [
    <minecraft:wooden_slab:0>,
    <minecraft:wooden_slab:1>,
    <minecraft:wooden_slab:2>,
    <minecraft:wooden_slab:3>,
    <minecraft:wooden_slab:4>,
    <minecraft:wooden_slab:5>,
    <bibliocraft:framingboard>
] as IItemStack[];

val deskOutput = [
    <bibliocraft:desk:0>,
    <bibliocraft:desk:1>,
    <bibliocraft:desk:2>,
    <bibliocraft:desk:3>,
    <bibliocraft:desk:4>,
    <bibliocraft:desk:5>,
    <bibliocraft:desk:6>
] as IItemStack[];

for i, item in deskOutput {
    recipes.addShaped("bibliocraftDeskNew_" + i, item,
    [
        [newTorchLit, null, feather],
        [deskSlab[i], deskSlab[i], deskSlab[i]],
        [deskWood[i], null, deskWood[i]]
    ]);
}



//Jack Off Lanters fix
val jackDye = [
    <ore:dyeBlack>,
    <ore:dyeRed>,
    <ore:dyeGreen>,
    <ore:dyeBrown>,
    <ore:dyeBlue>,
    <ore:dyePurple>,
    <ore:dyeCyan>,
    <ore:dyeLightGray>,
    <ore:dyeGray>,
    <ore:dyePink>,
    <ore:dyeLime>,
    <ore:dyeYellow>,
    <ore:dyeLightBlue>,
    <ore:dyeMagenta>,
    <ore:dyeOrange>,
    <ore:dyeWhite>
] as IOreDictEntry[];

val jackOutput = [
    <fairylights:light:112>,
    <fairylights:light:113>,
    <fairylights:light:114>,
    <fairylights:light:115>,
    <fairylights:light:116>,
    <fairylights:light:117>,
    <fairylights:light:118>,
    <fairylights:light:119>,
    <fairylights:light:120>,
    <fairylights:light:121>,
    <fairylights:light:122>,
    <fairylights:light:123>,
    <fairylights:light:124>,
    <fairylights:light:125>,
    <fairylights:light:126>,
    <fairylights:light:127>
] as IItemStack[];

for i, item in jackOutput {
    recipes.addShaped("jackOLanternNew_" + i, item * 4,
    [
        [null, iron, null],
        [slabWood, jackDye[i], slabWood],
        [newTorchLit, pumpkin, newTorchLit]
    ]);
}



// Add Gear Recipes
recipes.addShaped("stoneGear", <thermalfoundation:material:23>,
[
    [null, cobble, null],
    [cobble, wdGear, cobble],
    [null, cobble, null]
]);

recipes.addShaped("stoneGearAlt", <thermalfoundation:material:23>,
[
    [stick, cobble, stick],
    [cobble, null, cobble],
    [stick, cobble, stick]
]);

recipes.addShaped("ironGear", <thermalfoundation:material:24>,
[
    [null, iron, null],
    [iron, rckGear, iron],
    [null, iron, null]
]);

recipes.addShaped("ironGearAlt", <thermalfoundation:material:24>,
[
    [null, fePlate, null],
    [fePlate, rckGear, fePlate],
    [null, fePlate, null]
]);

recipes.addShaped("copperGear", <thermalfoundation:material:256>,
[
    [null, cu, null],
    [cu, rckGear, cu],
    [null, cu, null]
]);

recipes.addShaped("copperGearAlt", <thermalfoundation:material:256>,
[
    [null, cuPlate, null],
    [cuPlate, rckGear, cuPlate],
    [null, cuPlate, null]
]);

recipes.addShaped("tinGear", <thermalfoundation:material:257>,
[
    [null, tin, null],
    [tin, rckGear, tin],
    [null, tin, null]
]);

recipes.addShaped("tinGearAlt", <thermalfoundation:material:257>,
[
    [null, tinPlate, null],
    [tinPlate, rckGear, tinPlate],
    [null, tinPlate, null]
]);

recipes.addShaped("bronzeGear", <thermalfoundation:material:291>,
[
    [null, bronze, null],
    [bronze, rckGear, bronze],
    [null, bronze, null]
]);

recipes.addShaped("bronzeGearAlt", <thermalfoundation:material:291>,
[
    [null, bronzePlate, null],
    [bronzePlate, rckGear, bronzePlate],
    [null, bronzePlate, null]
]);

recipes.addShaped("goldGear", <thermalfoundation:material:25>,
[
    [null, gold, null],
    [gold, feGear, gold],
    [null, gold, null]
]);

recipes.addShaped("goldGearAlt", <thermalfoundation:material:25>,
[
    [null, goldPlate, null],
    [goldPlate, feGear, goldPlate],
    [null, goldPlate, null]
]);

recipes.addShaped("diamondGear", <thermalfoundation:material:26>,
[
    [null, dia, null],
    [dia, feGear, dia],
    [null, dia, null]
]);

recipes.addShaped("emeraldGear", <thermalfoundation:material:27>,
[
    [null, emrld, null],
    [emrld, feGear, emrld],
    [null, emrld, null]
]);