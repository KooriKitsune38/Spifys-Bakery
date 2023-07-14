import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.roots.Mortar;
import mods.atum.Quern;
import mods.enderio.SagMill;
import mods.appliedenergistics2.Grinder;
import mods.ic2.Macerator;



//Stuff not hidden from JEI using the ingame Hide menu
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
    <enderio:item_material:21>,
    <railcraft:gear:0>,
    <railcraft:gear:1>,
    <railcraft:gear:2>,
    <railcraft:gear:3>,
    <railcraft:gear:4>,
    <railcraft:gear:5>,
    <ic2:bronze_sword>,
    <ic2:bronze_pickaxe>,
    <ic2:bronze_axe>,
    <ic2:bronze_hoe>,
    <ic2:bronze_shovel>,
    <ic2:bronze_helmet>,
    <ic2:bronze_chestplate>,
    <ic2:bronze_leggings>,
    <ic2:bronze_boots>,
    <atum:emmer_dough>,
    <atum:emmer_flour>,
    <atum:emmer_bread>,
    <forestry:bronze_pickaxe>,
    <forestry:bronze_shovel>,
    <roots:flour>,
    <forestry:crated.natura.materials.1>,
    <forestry:crated.natura.materials.2>,
    <natura:materials:1>,
    <natura:materials:2>
] as IItemStack[];

for item in jeiRemove {
    mods.jei.JEI.hide(item);
}



//UnifyFlourProject
val uniFlour = <harvestcraft:flouritem>;

//Remove old flour
val flourRemove = [
    <natura:materials:1>,
    <natura:materials:2>,
    <enderio:item_material:21>
] as IItemStack[];

for item in flourRemove {
    recipes.remove(item);
}

//Replace mortar flour
Mortar.removeRecipe(<roots:flour>);
Mortar.addRecipe("wheatFlourMortar", uniFlour, [<ore:cropWheat>]);
Mortar.addRecipe("potatoFlourMortar", uniFlour, [<ore:cropPotato>]);
Mortar.addRecipe("riceFlourMortar", uniFlour, [<ore:cropRice>]);
Mortar.addRecipe("ryeFlourMortar", uniFlour, [<ore:cropRye>]);
Mortar.addRecipe("oatsFlourMortar", uniFlour, [<ore:cropOats>]);
Mortar.addRecipe("barleyFlourMortar", uniFlour, [<ore:cropBarley>]);

//Replace Atum flour
mods.atum.Quern.removeRecipe("atum:emmer_wheat");
mods.atum.Quern.addRecipe(<atum:emmer>, uniFlour, 2);
furnace.remove(<atum:emmer_bread>);

//Replace SAG Mill flour
mods.enderio.SagMill.removeRecipe(<minecraft:wheat>);
mods.enderio.SagMill.removeRecipe(<natura:materials>);
mods.enderio.SagMill.addRecipe([uniFlour], [1.0], <ore:cropPotato>, "MULTIPLY_OUTPUT", 1000);
mods.enderio.SagMill.addRecipe([uniFlour * 2, <harvestcraft:riceseeditem>], [1.0, 0.2], <ore:cropRice>, "MULTIPLY_OUTPUT", 1000);
mods.enderio.SagMill.addRecipe([uniFlour * 2, <harvestcraft:oatsseeditem>], [1.0, 0.2], <ore:cropOats>, "MULTIPLY_OUTPUT", 1000);
mods.enderio.SagMill.addRecipe([uniFlour * 2, <harvestcraft:ryeseeditem>], [1.0, 0.2], <ore:cropRye>, "MULTIPLY_OUTPUT", 1000);
mods.enderio.SagMill.addRecipe([uniFlour * 2, <harvestcraft:barleyseeditem>], [1.0, 0.2], <ore:cropBarley>, "MULTIPLY_OUTPUT", 1000);
mods.enderio.SagMill.addRecipe([uniFlour * 2, <minecraft:wheat_seeds>], [1.0, 0.2], <ore:cropWheat>, "MULTIPLY_OUTPUT", 1000);

//Replace AE2 Grinder flour
Grinder.removeRecipe(<minecraft:wheat>);
Grinder.addRecipe(uniFlour * 2, <ore:cropWheat>, 4, <minecraft:wheat_seeds>, 0.2);
Grinder.addRecipe(uniFlour * 2, <ore:cropBarley>, 4, <harvestcraft:barleyseeditem>, 0.2);
Grinder.addRecipe(uniFlour * 2, <ore:cropOats>, 4, <harvestcraft:oatsseeditem>, 0.2);
Grinder.addRecipe(uniFlour * 2, <ore:cropRye>, 4, <harvestcraft:ryeseeditem>, 0.2);
Grinder.addRecipe(uniFlour * 2, <ore:cropRice>, 4, <harvestcraft:riceseeditem>, 0.2);
Grinder.addRecipe(uniFlour, <ore:cropPotato>, 4);

//Add IC2 Flour
mods.ic2.Macerator.addRecipe(uniFlour * 2, <ore:cropWheat>);
mods.ic2.Macerator.addRecipe(uniFlour * 2, <ore:cropRye>);
mods.ic2.Macerator.addRecipe(uniFlour * 2, <ore:cropOats>);
mods.ic2.Macerator.addRecipe(uniFlour * 2, <ore:cropBarley>);
mods.ic2.Macerator.addRecipe(uniFlour * 2, <ore:cropRice>);
mods.ic2.Macerator.addRecipe(uniFlour, <ore:cropPotato>);


//Remove some bronze stuff from being crafted
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

for item in bronzeGear {
    recipes.remove(item);
}



//Remove some gear types from being crafted
val gears = [
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
    <thermalfoundation:material:23>,
    <thermalfoundation:material:24>,
    <thermalfoundation:material:25>,
    <thermalfoundation:material:26>,
    <thermalfoundation:material:27>,
    <thermalfoundation:material:256>,
    <thermalfoundation:material:257>,
    <thermalfoundation:material:291>,
    <railcraft:gear:0>,
    <railcraft:gear:1>,
    <railcraft:gear:2>,
    <railcraft:gear:3>,
    <railcraft:gear:4>,
    <railcraft:gear:5>
] as IItemStack[];

for item in gears {
    recipes.remove(item);
}



//Remove some specific alternate recipes that wouldnt go away otherwise
recipes.removeByRecipeName("enderio:gear_stone_upgrade");
recipes.removeByRecipeName("enderio:gear_stone");
recipes.removeByRecipeName("enderio:gear_wood");
recipes.removeByRecipeName("enderio:gear_ae2_messes_things_up");
recipes.removeByRecipeName("enderio:gear_just_to_be_sure");
recipes.removeByRecipeName("enderio:gear_better_save_than_sorry");



//Replace wierd gear recipes with only 1 type (updgrade from last gear type)
val stick = <ore:stickWood>;
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