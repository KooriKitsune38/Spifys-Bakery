import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;




//-----Table Values-----

//Vanilla
val mcDungeon = LootTweaker.getTable("minecraft:chests/simple_dungeon");
val mcPyramid = LootTweaker.getTable("minecraft:chests/desert_pyramid");
val mcJungle = LootTweaker.getTable("minecraft:chests/jungle_temple");
val mcCrossing = LootTweaker.getTable("minecraft:chests/stronghold_crossing");
val mcCorridor = LootTweaker.getTable("minecraft:chests/stronghold_corridor");
val mcLibrary = LootTweaker.getTable("minecraft:chests/stronghold_library");
val mcSmith = LootTweaker.getTable("minecraft:chests/village_blacksmith");
val mcIgloo = LootTweaker.getTable("minecraft:chests/igloo_chest");
val mcNetherBridge = LootTweaker.getTable("minecraft:chests/nether_bridge");
val mcShaft = LootTweaker.getTable("minecraft:chests/abandoned_mineshaft");
val mcEndCity = LootTweaker.getTable("minecraft:chests/end_city_treasure");
//Railcraft
val rcWorkshop = LootTweaker.getTable("railcraft:chests/village_workshop");
//Mystical World
val mwc = LootTweaker.getTable("mysticalworld:chests/hut");
//Aether
val aetherBronze = lootTwekaer.getTable("aether_legacy:chests/bronze_dungeon_chest");
val aetherSilver = lootTwekaer.getTable("aether_legacy:chests/silver_dungeon_chest");
val aetherGold = lootTwekaer.getTable("aether_legacy:chests/gold_dungeon_chest");
val aetherBronzeReward = lootTwekaer.getTable("aether_legacy:chests/bronze_dungeon_reward");
val aetherSilverReward = lootTwekaer.getTable("aether_legacy:chests/silver_dungeon_reward");
val aetherGoldReward = lootTwekaer.getTable("aether_legacy:chests/gold_dungeon_reward");


//-----Remove from Loottables-----

//Replace copper and silver ingots from Mysitcal World Hut loottable (chests)
val mwcGems = mwc.getPool("gems");
mwcGems.removeEntry("mysticalworld:copper_ingot");
mwcGems.removeEntry("mysticalworld:silver_ingot");


//Item, Weight, Idk, setCount min-max, Condition, ID
mwcGems.addItemEntry(<thermalfoundation:material:128>, 20, 0, [Functions.setCount(2, 5)], [], "replacementCopperMWC-Hut");
mwcGems.addItemEntry(<thermalfoundation:material:130>, 8, 0, [Functions.setCount(1, 2)], [], "replacementSilverMWC-Hut");



//Items to remove from loottables
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



//Most common chest type
val mcDungeonIC2 = mcDungeon.getPool("ic2");

for item in ic2Remove {
    mcDungeonIC2.removeEntry(item);
}

val mcDungeonRailcraft = mcDungeon.getPool("railcraft_general");

for item in railcraftRemovePlus {
    mcDungeonRailcraft.removeEntry(item);
}



//Abandoned Mineshaft
val mcShaftIC2 = mcShaft.getPool("ic2");

for item in ic2Remove2 {
    mcShaftIC2.removeEntry(item);
}

val mcShaftRailcraft = mcShaft.getPool("railcraft_resources");

for item in railcraftRemove {
    mcShaftRailcraft.removeEntry(item);
}




//End City chests
val mcEndCityIC2 = mcEndCity.getPool("ic2");

for item in ic2RemovePlus {
    mcEndCityIC2.removeEntry(item);
}


//Desert pyramid chests
val mcPyramidIC2 = mcPyramid.getPool("ic2");

for item in ic2RemovePlus {
    mcPyramidIC2.removeEntry(item);
}



//Jungle temple chests
val mcJungleIC2 = mcJungle.getPool("ic2");

for item in ic2RemovePlus {
    mcJungleIC2.removeEntry(item);
}



//Stronghold chests
val mcCrossingIC2 = mcCrossing.getPool("ic2");

for item in ic2RemovePlus {
    mcCrossingIC2.removeEntry(item);
}

val mcCrossingRailcraft = mcCrossing.getPool("railcraft_general");
mcCrossingRailcraft.removeEntry(
    "railcraft:chests/simple_dungeon"
);

val mcCorridorIC2 = mcCorridor.getPool("ic2");

for item in ic2RemovePlus {
    mcCorridorIC2.removeEntry(item);
}

val mcCorridorRailcraft = mcCorridor.getPool("railcraft_general");
mcCorridorRailcraft.removeEntry(
    "railcraft:chests/simple_dungeon"
);

val mcLibraryIC2 = mcLibrary.getPool("ic2");

for item in ic2RemovePlus {
    mcLibraryIC2.removeEntry(item);
}



//Village chests
val mcSmithIC2 = mcSmith.getPool("ic2");

for item in ic2RemovePlus {
    mcSmithIC2.removeEntry(item);
}

val mcSmithRailcraft = mcSmith.getPool("railcraft_general");
mcSmithRailcraft.removeEntry(
    "railcraft:chests/simple_dungeon"
);

val mcIglooIC2 = mcIgloo.getPool("ic2");

for item in ic2RemovePlus {
    mcIglooIC2.removeEntry(item);
}

val rcWorkshopRailcraft = rcWorkshop.getPool("railcraft_resources");

for item in railcraftRemove {
    rcWorkshopRailcraft.removeEntry(item);
}


//Nether chests
val mcNetherBridgeIC2 = mcNetherBridge.getPool("ic2");

for item in ic2Remove2 {
    mcNetherBridgeIC2.removeEntry(item);
}

//Aether
for item in [aetherBronze, aetherSilver, aetherGold] {
    pool = item.getPool("main");
    pool.removeEntry("aether_legacy:ambrosium_torch");
}



//-----Add to Loottables-----

//Aether
var aetherBronzeRewardNew = aetherBronzeReward.addPool("coinsLoot", 1, 1, 0, 0);
    aetherBronzeRewardNew.addItemEntry(<ordinarycoins:coinbronze>, 9, 0, [Functions.setCount(18, 48)], [], "bronzeCoin");
    aetherBronzeRewardNew.addItemEntry(<ordinarycoins:coinsilver>, 15, 0, [Functions.setCount(10, 24)], [], "silverCoin");
    aetherBronzeRewardNew.addItemEntry(<ordinarycoins:coingold>, 18, 0, [Functions.setCount(3, 8)], [], "goldCoin");

var aetherSilverRewardNew = aetherSilverReward.addPool("coinsLoot", 1, 1, 0, 0);
    aetherSilverRewardNew.addItemEntry(<ordinarycoins:coinbronze>, 9, 0, [Functions.setCount(24, 48)], [], "bronzeCoin");
    aetherSilverRewardNew.addItemEntry(<ordinarycoins:coinsilver>, 15, 0, [Functions.setCount(22, 30)], [], "silverCoin");
    aetherSilverRewardNew.addItemEntry(<ordinarycoins:coingold>, 18, 0, [Functions.setCount(4, 14)], [], "goldCoin");

var aetherGoldRewardNew = aetherGoldReward.addPool("coinsLoot", 1, 1, 0, 0);
    aetherGoldRewardNew.addItemEntry(<ordinarycoins:coinbronze>, 9, 0, [Functions.setCount(24, 52)], [], "bronzeCoin");
    aetherGoldRewardNew.addItemEntry(<ordinarycoins:coinsilver>, 15, 0, [Functions.setCount(28, 48)], [], "silverCoin");
    aetherGoldRewardNew.addItemEntry(<ordinarycoins:coingold>, 18, 0, [Functions.setCount(8, 16)], [], "goldCoin");

//Simple Dungeons
val mcDungeonNew = mcDungeon.addPool("newLoot", 1, 1, 0 ,0);
    mcDungeonNew.addItemEntry(<thermalfoundation:material:128>, 17, 0, [Functions.setCount(2, 5)], [], "copperIngot");
    mcDungeonNew.addItemEntry(<thermalfoundation:material:129>, 13, 0, [Functions.setCount(1, 3)], [], "tinIngot");
    mcDungeonNew.addItemEntry(<ordinarycoins:coinbronze>, 13, 0, [Functions.setCount(8, 24)], [], "bronzeCoin");
    mcDungeonNew.addItemEntry(<ordinarycoins:coinsilver>, 17, 0, [Functions.setCount(6, 16)], [], "silverCoin");
    mcDungeonNew.addItemEntry(<ordinarycoins:coingold>, 8, 0, [Functions.setCount(1, 3)], [], "goldCoin");



//Blacksmith
val mcSmithNew = mcSmith.addPool("newLoot", 1, 1, 0 ,0);
    mcSmithNew.addItemEntry(<thermalfoundation:material:128>, 17, 0, [Functions.setCount(4, 8)], [], "copperIngot");
    mcSmithNew.addItemEntry(<thermalfoundation:material:129>, 13, 0, [Functions.setCount(3, 6)], [], "tinIngot");
    mcSmithNew.addItemEntry(<thermalfoundation:material:128>, 9, 0, [Functions.setCount(2, 4)], [], "bronzeIngot");



//End City
val mcEndCityNew = mcEndCity.addPool("newLoot", 1, 1, 0 ,0);
    mcEndCityNew.addItemEntry(<thermalfoundation:material:135>, 9, 0, [Functions.setCount(1, 2)], [], "iridiumIngot");
    mcEndCityNew.addItemEntry(<thermalfoundation:material:134>, 11, 0, [Functions.setCount(1, 4)], [], "platinumIngot");
    mcEndCityNew.addItemEntry(<aquaculture:diamond_fishing_rod>, 5, 0, [], [], "diamondFishingrod");
    mcEndCityNew.addItemEntry(<ic2:nano_helmet>.withTag({charge: 1000000.0}), 1, 0, [], [], "nanoHelmet");
    mcEndCityNew.addItemEntry(<ic2:nano_chestplate>.withTag({charge: 1000000.0}), 1, 0, [], [], "nanoChestplate");
    mcEndCityNew.addItemEntry(<ic2:nano_leggings>.withTag({charge: 1000000.0}), 1, 0, [], [], "nanoLeggings");
    mcEndCityNew.addItemEntry(<ic2:nano_boots>.withTag({charge: 1000000.0}), 1, 0, [], [], "nanoBoots");
    mcEndCityNew.addItemEntry(<ic2:nano_saber>.withTag({charge: 1000000.0}), 2, 0, [], [], "nanoSaber");
    mcEndCityNew.addItemEntry(<ordinarycoins:coingold>, 16, 0, [Functions.setCount(4, 8)], [], "goldCoin");
    mcEndCityNew.addItemEntry(<ordinarycoins:coinplatinum>, 8, 0, [Functions.setCount(2, 4)], [], "platinumCoin");



//Various Structures
val tableArray = [
    mcPyramid,
    mcJungle,
    mcCrossing,
    mcCorridor,
    mcLibrary,
    mcNetherBridge,
    mcShaft,
    aetherBronze,
    aetherGold,
    aetherSilver
] as LootTable[];

val poolArray = [
    null,
    null,
    null,
    null,
    null,
    null,
    null
] as LootPool[];

for i, item in tableArray {
    poolArray[i] = item.addPool("newLoot", 1, 1, 0 ,0);
    scripts.coinsLoot.addCoins(item);
}


//Adding to arrays
for item in poolArray {
    item.addItemEntry(<thermalfoundation:material:128>, 17, 0, [Functions.setCount(2, 5)], [], "copperIngot");
    item.addItemEntry(<thermalfoundation:material:129>, 13, 0, [Functions.setCount(1, 3)], [], "tinIngot");
    item.addItemEntry(<thermalfoundation:material:128>, 9, 0, [Functions.setCount(1, 3)], [], "bronzeIngot");
}