import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;



//Replace copper and silver ingots from Mysitcal World Hut loottable (chests)
val mwc = LootTweaker.getTable("mysticalworld:chests/hut");
val mwcGems = mwc.getPool("gems");
mwcGems.removeEntry("mysticalworld:copper_ingot");
mwcGems.removeEntry("mysticalworld:silver_ingot");

mwcGems.addItemEntry(<thermalfoundation:material:128>, 20, 0, [Functions.setCount(2, 5)], [], "replacementCopperMWC-Hut");
mwcGems.addItemEntry(<thermalfoundation:material:130>, 8, 0, [Functions.setCount(1, 2)], [], "replacementSilverMWC-Hut");



//Remove various stuff from normal Chest loottables
val ic2Remove = [
    "copper_ingot",
    "tin_ingot",
    "iridium_shard"
] as string[];

val ic2Remove2 = [
    "copper_ingot",
    "tin_ingot",
    "iridium_shard",
    "ic2:bronze_pickaxe"
] as string[];

val ic2RemovePlus = [
    "copper_ingot",
    "tin_ingot",
    "iridium_shard",
    "ic2:bronze_pickaxe",
    "ic2:bronze_sword",
    "ic2:bronze_helmet",
    "ic2:bronze_chestplate",
    "ic2:bronze_leggings",
    "ic2:bronze_boots"
] as string[];

val railcraftRemove = [
    "railcraft:ingot",
    "railcraft:gear",
    "railcraft:plate"
] as string[];

val railcraftRemovePlus = [
    "railcraft:armor_boots_steel",
    "railcraft:armor_helmet_steel",
    "railcraft:tool_sword_steel",
    "railcraft:armor_chestplate_steel",
    "railcraft:armor_leggings_steel",
    "railcraft:tool_pickaxe_steel",
    "railcraft:tool_axe_steel",
    "railcraft:ingot"
] as string[];

val mcDungeon = LootTweaker.getTable("minecraft:chests/simple_dungeon");
val mcDungeonIC2 = mcDungeon.getPool("ic2");

for item in ic2Remove {
    mcDungeonIC2.removeEntry(item);
}

val mcDungeonRailcraft = mcDungeon.getPool("railcraft_general");

for item in railcraftRemovePlus {
    mcDungeonRailcraft.removeEntry(item);
}

val mcPyramid = LootTweaker.getTable("minecraft:chests/desert_pyramid");
val mcPyramidIC2 = mcPyramid.getPool("ic2");

for item in ic2RemovePlus {
    mcPyramidIC2.removeEntry(item);
}


val mcJungle = LootTweaker.getTable("minecraft:chests/jungle_temple");
val mcJungleIC2 = mcJungle.getPool("ic2");

for item in ic2RemovePlus {
    mcJungleIC2.removeEntry(item);
}

val mcCrossing = LootTweaker.getTable("minecraft:chests/stronghold_crossing");
val mcCrossingIC2 = mcCrossing.getPool("ic2");

for item in ic2RemovePlus {
    mcCrossingIC2.removeEntry(item);
}

val mcCrossingRailcraft = mcCrossing.getPool("railcraft_general");
mcCrossingRailcraft.removeEntry(
    "railcraft:chests/simple_dungeon"
);

val mcCorridor = LootTweaker.getTable("minecraft:chests/stronghold_corridor");
val mcCorridorIC2 = mcCorridor.getPool("ic2");

for item in ic2RemovePlus {
    mcCorridorIC2.removeEntry(item);
}

val mcCorridorRailcraft = mcCorridor.getPool("railcraft_general");
mcCorridorRailcraft.removeEntry(
    "railcraft:chests/simple_dungeon"
);

val mcLibrary = LootTweaker.getTable("minecraft:chests/stronghold_library");
val mcLibraryIC2 = mcLibrary.getPool("ic2");

for item in ic2RemovePlus {
    mcLibraryIC2.removeEntry(item);
}

val mcSmith = LootTweaker.getTable("minecraft:chests/village_blacksmith");
val mcSmithIC2 = mcSmith.getPool("ic2");

for item in ic2RemovePlus {
    mcSmithIC2.removeEntry(item);
}

val mcSmithRailcraft = mcSmith.getPool("railcraft_general");
mcSmithRailcraft.removeEntry(
    "railcraft:chests/simple_dungeon"
);

val mcIgloo = LootTweaker.getTable("minecraft:chests/igloo_chest");
val mcIglooIC2 = mcIgloo.getPool("ic2");

for item in ic2RemovePlus {
    mcIglooIC2.removeEntry(item);
}

val mcNetherBridge = LootTweaker.getTable("minecraft:chests/nether_bridge");
val mcNetherBridgeIC2 = mcNetherBridge.getPool("ic2");

for item in ic2Remove2 {
    mcNetherBridgeIC2.removeEntry(item);
}

val rcWorkshop = LootTweaker.getTable("railcraft:chests/village_workshop");
val rcWorkshopRailcraft = rcWorkshop.getPool("railcraft_resources");

for item in railcraftRemove {
    rcWorkshopRailcraft.removeEntry(item);
}