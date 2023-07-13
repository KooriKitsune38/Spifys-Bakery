import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;


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
    <railcraft:gear:0>,
    <railcraft:gear:1>,
    <railcraft:gear:2>,
    <railcraft:gear:3>,
    <railcraft:gear:4>,
    <railcraft:gear:5>
] as IItemStack[];

for item in jeiRemove {
    mods.jei.JEI.hide(item);
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



//Replace copper and silver ingots from Mysitcal World Hut loottable (chests)
val mwc = LootTweaker.getTable("mysticalworld:chests/hut");
val mwcGems = mwc.getPool("gems");
mwcGems.removeEntry("mysticalworld:copper_ingot");
mwcGems.removeEntry("mysticalworld:silver_ingot");

mwcGems.addItemEntry(<thermalfoundation:material:128>, 20, "replacementCopperMWC-Hut");
mwcGems.addItemEntry(<thermalfoundation:material:130>, 8, "replacementSilverMWC-Hut");