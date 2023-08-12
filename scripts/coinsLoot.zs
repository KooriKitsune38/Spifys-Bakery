import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

//Aether
val aetherBronze = LootTweaker.getTable("aether_legacy:chests/bronze_dungeon_chest");
val aetherSilver = LootTweaker.getTable("aether_legacy:chests/silver_dungeon_chest");
val aetherBronzeReward = LootTweaker.getTable("aether_legacy:chests/bronze_dungeon_reward");
val aetherSilverReward = LootTweaker.getTable("aether_legacy:chests/silver_dungeon_reward");
val aetherGoldReward = LootTweaker.getTable("aether_legacy:chests/gold_dungeon_reward");

//TheBetweenLands
val blCavePot = LootTweaker.getTable("thebetweenlands:loot/cave_pot");
val blCommonPot = LootTweaker.getTable("thebetweenlands:loot/common_pot_loot");
val blUndergroundPot = LootTweaker.getTable("thebetweenlands:loot/underground_ruins_pot");
val blUnderwaterPot = LootTweaker.getTable("thebetweenlands:loot/underwater_ruins_pot");
val blWightPot = LootTweaker.getTable("thebetweenlands:loot/wight_fortress_pot");
val blCragRockPot = LootTweaker.getTable("thebetweenlands:loot/cragrock_tower_pot");
val blDungeonPot = LootTweaker.getTable("thebetweenlands:loot/dungeon_pot_loot");
val blMarshRuinsPot = LootTweaker.getTable("thebetweenlands:loot/marsh_ruins_pot");
val blCommonChest = LootTweaker.getTable("thebetweenlands:loot/common_chest_loot");
val blWightChest = LootTweaker.getTable("thebetweenlands:loot/wight_fortress_chest");
val blCragRockChest = LootTweaker.getTable("thebetweenlands:loot/cragrock_tower_chest");
val blDungeonChest = LootTweaker.getTable("thebetweenlands:loot/dungeon_chest_loot");
val blSludgeWormBarrisheeChest = LootTweaker.getTable("thebetweenlands:loot/sludge_worm_dungeon_barrishee_chest");
val blSludgeWormChest = LootTweaker.getTable("thebetweenlands:loot/sludge_worm_dungeon_chest");
val blSludgePlainsUrn = LootTweaker.getTable("thebetweenlands:loot/sludge_plains_ruins_urn");
val blSludgeWormCryptUrn = LootTweaker.getTable("thebetweenlands:loot/sludge_worm_dungeon_crypt_urn");
val blSludgeWormUrn = LootTweaker.getTable("thebetweenlands:loot/sludge_worm_dungeon_urn");

// -- Bosses --
//Aether
val aetherBossValkyrie = LootTweaker.getTable("aether_legacy:entities/bosses/valkyrie_queen");
val aetherBossSlider = LootTweaker.getTable("aether_legacy:entities/bosses/slider");
val aetherBossSpirit = LootTweaker.getTable("aether_legacy:entities/bosses/sun_spirit");
//TheBetweenLands
val blSpiritTree = LootTweaker.getTable("thebetweenlands:entities/spirit_tree_face_large");
val blSludgeMenace = LootTweaker.getTable("thebetweenlands:entities/sludge_menace");
val blDreadfulPeatMummy = LootTweaker.getTable("thebetweenlands:entities/dreadful_peat_mummy");
val blPrimordialMalevolence = LootTweaker.getTable("thebetweenlands:entities/fortress_boss");
//Mowzies Mobs
val mowzieFrostmaw = LootTweaker.getTable("mowziesmobs:entities/frostmaw");
val mowzieWroughtnaut = LootTweaker.getTable("mowziesmobs:entities/ferrous_wroughtnaut");
val mowzieNaga = LootTweaker.getTable("mowziesmobs:entities/naga");
val mowzieBarako = LootTweaker.getTable("mowziesmobs:entities/barako");

//Aether
var aetherBronzeRewardNew = aetherBronzeReward.addPool("coinsPool", 2, 2, 0, 0);
    aetherBronzeRewardNew.addItemEntry(<ordinarycoins:coinbronze>, 9, 0, [Functions.setCount(18, 48)], [], "bronzeCoin");
    aetherBronzeRewardNew.addItemEntry(<ordinarycoins:coinsilver>, 15, 0, [Functions.setCount(10, 24)], [], "silverCoin");
    aetherBronzeRewardNew.addItemEntry(<ordinarycoins:coingold>, 18, 0, [Functions.setCount(3, 8)], [], "goldCoin");

var aetherSilverRewardNew = aetherSilverReward.addPool("coinsPool", 2, 2, 0, 0);
    aetherSilverRewardNew.addItemEntry(<ordinarycoins:coinbronze>, 9, 0, [Functions.setCount(24, 48)], [], "bronzeCoin");
    aetherSilverRewardNew.addItemEntry(<ordinarycoins:coinsilver>, 15, 0, [Functions.setCount(22, 30)], [], "silverCoin");
    aetherSilverRewardNew.addItemEntry(<ordinarycoins:coingold>, 20, 0, [Functions.setCount(4, 14)], [], "goldCoin");

var aetherGoldRewardNew = aetherGoldReward.addPool("coinsPool", 2, 2, 1, 1);
    aetherGoldRewardNew.addItemEntry(<ordinarycoins:coinsilver>, 15, 0, [Functions.setCount(28, 48)], [], "silverCoin");
    aetherGoldRewardNew.addItemEntry(<ordinarycoins:coingold>, 25, 0, [Functions.setCount(8, 10)], [], "goldCoin");

//Bosses
var coinBosses = [
    aetherBossValkyrie,
    aetherBossSlider,
    aetherBossSpirit,
    blSpiritTree,
    blSludgeMenace,
    blDreadfulPeatMummy,
    blPrimordialMalevolence,
    mowzieFrostmaw,
    mowzieWroughtnaut,
    mowzieNaga,
    mowzieBarako
] as LootTable[];

var coinTables = [
    aetherBronze,
    aetherSilver,
    blCavePot,
    blCommonPot,
    blUndergroundPot,
    blUnderwaterPot,
    blWightPot,
    blCragRockPot,
    blDungeonPot,
    blMarshRuinsPot,
    blCommonChest,
    blWightChest,
    blCragRockChest,
    blDungeonChest,
    blSludgeWormBarrisheeChest,
    blSludgeWormChest,
    blSludgePlainsUrn,
    blSludgeWormCryptUrn,
    blSludgeWormUrn
] as LootTable[];

function addCoins(lootTable as LootTable) {
    var coinPool = lootTable.addPool("coinsPool", 1, 3, 0, 0);
    coinPool.addItemEntry(<ordinarycoins:coinbronze>, 24, 0, [Functions.setCount(12, 32)], [], "bronzeCoin");
    coinPool.addItemEntry(<ordinarycoins:coinsilver>, 28, 0, [Functions.setCount(8, 24)], [], "silverCoin");
    coinPool.addItemEntry(<ordinarycoins:coingold>, 12, 0, [Functions.setCount(2, 7)], [], "goldCoin");
}

function addCoinsBoss(lootTable as LootTable) {
    var coinPool = lootTable.addPool("coinsPool", 2, 2, 1, 1);
    coinPool.addItemEntry(<ordinarycoins:coinsilver>, 15, 0, [Functions.setCount(28, 48)], [], "silverCoin");
    coinPool.addItemEntry(<ordinarycoins:coingold>, 25, 0, [Functions.setCount(8, 10)], [], "goldCoin");
}

for table in coinTables {
    addCoins(table);
}

for table in coinBosses {
    addCoinsBoss(table);
}