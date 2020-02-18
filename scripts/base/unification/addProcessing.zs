#priority 898

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;

var materials as MCTag[string][string] = {
    "iron": {
        "nugget": <tag:forge:nuggets/iron>,
        "ingot": <tag:forge:ingots/iron>,
        "storage_block": <tag:forge:storage_blocks/iron>,
        "ore": <tag:forge:ores/iron>,
        "ore_deposit": <tag:forge:ore_deposit/iron>,
        "dust": <tag:forge:dusts/iron>,
        //"fluid": <fluid:forge:fluids/iron>,
        "gear": <tag:forge:gears/iron>,
        "plate": <tag:forge:plates/iron>,
        "rod": <tag:forge:rods/iron>,
        "sheet": <tag:forge:sheets/iron>,
        "dirty_dust": <tag:forge:dirty_dusts/iron>,
        "clump": <tag:forge:clumps/iron>,
        "shard": <tag:forge:shards/iron>,
        "crystal": <tag:forge:crystals/iron>,
        //"slurry": <tag:forge:slurries/iron>,
        //"clean_slurry": <tag:forge:clean_slurries/iron>
    },

    "gold": {
        "nugget": <tag:forge:nuggets/gold>,
        "ingot": <tag:forge:ingots/gold>,
        "storage_block": <tag:forge:storage_blocks/gold>,
        "ore": <tag:forge:ores/gold>,
        "ore_deposit": <tag:forge:ore_deposit/gold>,
        "dust": <tag:forge:dusts/gold>,
        //"fluid": <fluid:forge:fluids/gold>,
        "gear": <tag:forge:gears/gold>,
        "plate": <tag:forge:plates/gold>,
        "rod": <tag:forge:rods/gold>,
        "sheet": <tag:forge:sheets/gold>,
        "dirty_dust": <tag:forge:dirty_dusts/gold>,
        "clump": <tag:forge:clumps/gold>,
        "shard": <tag:forge:shards/gold>,
        "crystal": <tag:forge:crystals/gold>,
        //"slurry": <tag:forge:slurries/gold>,
        //"clean_slurry": <tag:forge:clean_slurries/gold>
    },

    "neptunium": {
        "nugget": <tag:forge:nuggets/neptunium>,
        "ingot": <tag:forge:ingots/neptunium>,
        "storage_block": <tag:forge:storage_blocks/neptunium>,
        "ore": <tag:forge:ores/neptunium>,
        "ore_deposit": <tag:forge:ore_deposit/neptunium>,
        "dust": <tag:forge:dusts/neptunium>,
        //"fluid": <fluid:forge:fluids/neptunium>,
        "gear": <tag:forge:gears/neptunium>,
        "plate": <tag:forge:plates/neptunium>,
        "rod": <tag:forge:rods/neptunium>,
        "sheet": <tag:forge:sheets/neptunium>,
        "dirty_dust": <tag:forge:dirty_dusts/neptunium>,
        "clump": <tag:forge:clumps/neptunium>,
        "shard": <tag:forge:shards/neptunium>,
        "crystal": <tag:forge:crystals/neptunium>,
        //"slurry": <tag:forge:slurries/neptunium>,
        //"clean_slurry": <tag:forge:clean_slurries/neptunium>
    },

    "copper": {
        "nugget": <tag:forge:nuggets/copper>,
        "ingot": <tag:forge:ingots/copper>,
        "storage_block": <tag:forge:storage_blocks/copper>,
        "ore": <tag:forge:ores/copper>,
        "ore_deposit": <tag:forge:ore_deposit/copper>,
        "dust": <tag:forge:dusts/copper>,
        //"fluid": <fluid:forge:fluids/copper>,
        "gear": <tag:forge:gears/copper>,
        "plate": <tag:forge:plates/copper>,
        "rod": <tag:forge:rods/copper>,
        "sheet": <tag:forge:sheets/copper>,
        "dirty_dust": <tag:forge:dirty_dusts/copper>,
        "clump": <tag:forge:clumps/copper>,
        "shard": <tag:forge:shards/copper>,
        "crystal": <tag:forge:crystals/copper>,
        //"slurry": <tag:forge:slurries/copper>,
        //"clean_slurry": <tag:forge:clean_slurries/copper>
    },

    "silver": {
        "nugget": <tag:forge:nuggets/silver>,
        "ingot": <tag:forge:ingots/silver>,
        "storage_block": <tag:forge:storage_blocks/silver>,
        "ore": <tag:forge:ores/silver>,
        "ore_deposit": <tag:forge:ore_deposit/silver>,
        "dust": <tag:forge:dusts/silver>,
        //"fluid": <fluid:forge:fluids/silver>,
        "gear": <tag:forge:gears/silver>,
        "plate": <tag:forge:plates/silver>,
        "rod": <tag:forge:rods/silver>,
        "sheet": <tag:forge:sheets/silver>,
        "dirty_dust": <tag:forge:dirty_dusts/silver>,
        "clump": <tag:forge:clumps/silver>,
        "shard": <tag:forge:shards/silver>,
        "crystal": <tag:forge:crystals/silver>,
        //"slurry": <tag:forge:slurries/silver>,
        //"clean_slurry": <tag:forge:clean_slurries/silver>
    },

    "zinc": {
        "nugget": <tag:forge:nuggets/zinc>,
        "ingot": <tag:forge:ingots/zinc>,
        "storage_block": <tag:forge:storage_blocks/zinc>,
        "ore": <tag:forge:ores/zinc>,
        "ore_deposit": <tag:forge:ore_deposit/zinc>,
        "dust": <tag:forge:dusts/zinc>,
        //"fluid": <fluid:forge:fluids/zinc>,
        "gear": <tag:forge:gears/zinc>,
        "plate": <tag:forge:plates/zinc>,
        "rod": <tag:forge:rods/zinc>,
        "sheet": <tag:forge:sheets/zinc>,
        "dirty_dust": <tag:forge:dirty_dusts/zinc>,
        "clump": <tag:forge:clumps/zinc>,
        "shard": <tag:forge:shards/zinc>,
        "crystal": <tag:forge:crystals/zinc>,
        //"slurry": <tag:forge:slurries/zinc>,
        //"clean_slurry": <tag:forge:clean_slurries/zinc>
    },

    "brass": {
        "nugget": <tag:forge:nuggets/brass>,
        "ingot": <tag:forge:ingots/brass>,
        "storage_block": <tag:forge:storage_blocks/brass>,
        "ore": <tag:forge:ores/brass>,
        "ore_deposit": <tag:forge:ore_deposit/brass>,
        "dust": <tag:forge:dusts/brass>,
        //"fluid": <fluid:forge:fluids/brass>,
        "gear": <tag:forge:gears/brass>,
        "plate": <tag:forge:plates/brass>,
        "rod": <tag:forge:rods/brass>,
        "sheet": <tag:forge:sheets/brass>,
        "dirty_dust": <tag:forge:dirty_dusts/brass>,
        "clump": <tag:forge:clumps/brass>,
        "shard": <tag:forge:shards/brass>,
        "crystal": <tag:forge:crystals/brass>,
        //"slurry": <tag:forge:slurries/brass>,
        //"clean_slurry": <tag:forge:clean_slurries/brass>
    },

    "tungsten": {
        "nugget": <tag:forge:nuggets/tungsten>,
        "ingot": <tag:forge:ingots/tungsten>,
        "storage_block": <tag:forge:storage_blocks/tungsten>,
        "ore": <tag:forge:ores/tungsten>,
        "ore_deposit": <tag:forge:ore_deposit/tungsten>,
        "dust": <tag:forge:dusts/tungsten>,
        //"fluid": <fluid:forge:fluids/tungsten>,
        "gear": <tag:forge:gears/tungsten>,
        "plate": <tag:forge:plates/tungsten>,
        "rod": <tag:forge:rods/tungsten>,
        "sheet": <tag:forge:sheets/tungsten>,
        "dirty_dust": <tag:forge:dirty_dusts/tungsten>,
        "clump": <tag:forge:clumps/tungsten>,
        "shard": <tag:forge:shards/tungsten>,
        "crystal": <tag:forge:crystals/tungsten>,
        //"slurry": <tag:forge:slurries/tungsten>,
        //"clean_slurry": <tag:forge:clean_slurries/tungsten>
    },

    "lead": {
        "nugget": <tag:forge:nuggets/lead>,
        "ingot": <tag:forge:ingots/lead>,
        "storage_block": <tag:forge:storage_blocks/lead>,
        "ore": <tag:forge:ores/lead>,
        "ore_deposit": <tag:forge:ore_deposit/lead>,
        "dust": <tag:forge:dusts/lead>,
        //"fluid": <fluid:forge:fluids/lead>,
        "gear": <tag:forge:gears/lead>,
        "plate": <tag:forge:plates/lead>,
        "rod": <tag:forge:rods/lead>,
        "sheet": <tag:forge:sheets/lead>,
        "dirty_dust": <tag:forge:dirty_dusts/lead>,
        "clump": <tag:forge:clumps/lead>,
        "shard": <tag:forge:shards/lead>,
        "crystal": <tag:forge:crystals/lead>,
        //"slurry": <tag:forge:slurries/lead>,
        //"clean_slurry": <tag:forge:clean_slurries/lead>
    },

    "quicksilver": {
        "nugget": <tag:forge:nuggets/quicksilver>,
        "ingot": <tag:forge:ingots/quicksilver>,
        "storage_block": <tag:forge:storage_blocks/quicksilver>,
        "ore": <tag:forge:ores/quicksilver>,
        "ore_deposit": <tag:forge:ore_deposit/quicksilver>,
        "dust": <tag:forge:dusts/quicksilver>,
        //"fluid": <fluid:forge:fluids/quicksilver>,
        "gear": <tag:forge:gears/quicksilver>,
        "plate": <tag:forge:plates/quicksilver>,
        "rod": <tag:forge:rods/quicksilver>,
        "sheet": <tag:forge:sheets/quicksilver>,
        "dirty_dust": <tag:forge:dirty_dusts/quicksilver>,
        "clump": <tag:forge:clumps/quicksilver>,
        "shard": <tag:forge:shards/quicksilver>,
        "crystal": <tag:forge:crystals/quicksilver>,
        //"slurry": <tag:forge:slurries/quicksilver>,
        //"clean_slurry": <tag:forge:clean_slurries/quicksilver>
    },

    "tin": {
        "nugget": <tag:forge:nuggets/tin>,
        "ingot": <tag:forge:ingots/tin>,
        "storage_block": <tag:forge:storage_blocks/tin>,
        "ore": <tag:forge:ores/tin>,
        "ore_deposit": <tag:forge:ore_deposit/tin>,
        "dust": <tag:forge:dusts/tin>,
        //"fluid": <fluid:forge:fluids/tin>,
        "gear": <tag:forge:gears/tin>,
        "plate": <tag:forge:plates/tin>,
        "rod": <tag:forge:rods/tin>,
        "sheet": <tag:forge:sheets/tin>,
        "dirty_dust": <tag:forge:dirty_dusts/tin>,
        "clump": <tag:forge:clumps/tin>,
        "shard": <tag:forge:shards/tin>,
        "crystal": <tag:forge:crystals/tin>,
        //"slurry": <tag:forge:slurries/tin>,
        //"clean_slurry": <tag:forge:clean_slurries/tin>
    },

    "redstone_alloy": {
        "nugget": <tag:forge:nuggets/redstone_alloy>,
        "ingot": <tag:forge:ingots/redstone_alloy>,
        "storage_block": <tag:forge:storage_blocks/redstone_alloy>,
        "ore": <tag:forge:ores/redstone_alloy>,
        "ore_deposit": <tag:forge:ore_deposit/redstone_alloy>,
        "dust": <tag:forge:dusts/redstone_alloy>,
        //"fluid": <fluid:forge:fluids/redstone_alloy>,
        "gear": <tag:forge:gears/redstone_alloy>,
        "plate": <tag:forge:plates/redstone_alloy>,
        "rod": <tag:forge:rods/redstone_alloy>,
        "sheet": <tag:forge:sheets/redstone_alloy>,
        "dirty_dust": <tag:forge:dirty_dusts/redstone_alloy>,
        "clump": <tag:forge:clumps/redstone_alloy>,
        "shard": <tag:forge:shards/redstone_alloy>,
        "crystal": <tag:forge:crystals/redstone_alloy>,
        //"slurry": <tag:forge:slurries/redstone_alloy>,
        //"clean_slurry": <tag:forge:clean_slurries/redstone_alloy>
    },

    "refined_iron": {
        "nugget": <tag:forge:nuggets/refined_iron>,
        "ingot": <tag:forge:ingots/refined_iron>,
        "storage_block": <tag:forge:storage_blocks/refined_iron>,
        "ore": <tag:forge:ores/refined_iron>,
        "ore_deposit": <tag:forge:ore_deposit/refined_iron>,
        "dust": <tag:forge:dusts/refined_iron>,
        //"fluid": <fluid:forge:fluids/refined_iron>,
        "gear": <tag:forge:gears/refined_iron>,
        "plate": <tag:forge:plates/refined_iron>,
        "rod": <tag:forge:rods/refined_iron>,
        "sheet": <tag:forge:sheets/refined_iron>,
        "dirty_dust": <tag:forge:dirty_dusts/refined_iron>,
        "clump": <tag:forge:clumps/refined_iron>,
        "shard": <tag:forge:shards/refined_iron>,
        "crystal": <tag:forge:crystals/refined_iron>,
        //"slurry": <tag:forge:slurries/refined_iron>,
        //"clean_slurry": <tag:forge:clean_slurries/refined_iron>
    },

    "compressed_iron": {
        "nugget": <tag:forge:nuggets/compressed_iron>,
        "ingot": <tag:forge:ingots/compressed_iron>,
        "storage_block": <tag:forge:storage_blocks/compressed_iron>,
        "ore": <tag:forge:ores/compressed_iron>,
        "ore_deposit": <tag:forge:ore_deposit/compressed_iron>,
        "dust": <tag:forge:dusts/compressed_iron>,
        //"fluid": <fluid:forge:fluids/compressed_iron>,
        "gear": <tag:forge:gears/compressed_iron>,
        "plate": <tag:forge:plates/compressed_iron>,
        "rod": <tag:forge:rods/compressed_iron>,
        "sheet": <tag:forge:sheets/compressed_iron>,
        "dirty_dust": <tag:forge:dirty_dusts/compressed_iron>,
        "clump": <tag:forge:clumps/compressed_iron>,
        "shard": <tag:forge:shards/compressed_iron>,
        "crystal": <tag:forge:crystals/compressed_iron>,
        //"slurry": <tag:forge:slurries/compressed_iron>,
        //"clean_slurry": <tag:forge:clean_slurries/compressed_iron>
    },

    "nickel": {
        "nugget": <tag:forge:nuggets/nickel>,
        "ingot": <tag:forge:ingots/nickel>,
        "storage_block": <tag:forge:storage_blocks/nickel>,
        "ore": <tag:forge:ores/nickel>,
        "ore_deposit": <tag:forge:ore_deposit/nickel>,
        "dust": <tag:forge:dusts/nickel>,
        //"fluid": <fluid:forge:fluids/nickel>,
        "gear": <tag:forge:gears/nickel>,
        "plate": <tag:forge:plates/nickel>,
        "rod": <tag:forge:rods/nickel>,
        "sheet": <tag:forge:sheets/nickel>,
        "dirty_dust": <tag:forge:dirty_dusts/nickel>,
        "clump": <tag:forge:clumps/nickel>,
        "shard": <tag:forge:shards/nickel>,
        "crystal": <tag:forge:crystals/nickel>,
        //"slurry": <tag:forge:slurries/nickel>,
        //"clean_slurry": <tag:forge:clean_slurries/nickel>
    },

    "platinum": {
        "nugget": <tag:forge:nuggets/platinum>,
        "ingot": <tag:forge:ingots/platinum>,
        "storage_block": <tag:forge:storage_blocks/platinum>,
        "ore": <tag:forge:ores/platinum>,
        "ore_deposit": <tag:forge:ore_deposit/platinum>,
        "dust": <tag:forge:dusts/platinum>,
        //"fluid": <fluid:forge:fluids/platinum>,
        "gear": <tag:forge:gears/platinum>,
        "plate": <tag:forge:plates/platinum>,
        "rod": <tag:forge:rods/platinum>,
        "sheet": <tag:forge:sheets/platinum>,
        "dirty_dust": <tag:forge:dirty_dusts/platinum>,
        "clump": <tag:forge:clumps/platinum>,
        "shard": <tag:forge:shards/platinum>,
        "crystal": <tag:forge:crystals/platinum>,
        //"slurry": <tag:forge:slurries/platinum>,
        //"clean_slurry": <tag:forge:clean_slurries/platinum>
    },

    "bismuth": {
        "nugget": <tag:forge:nuggets/bismuth>,
        "ingot": <tag:forge:ingots/bismuth>,
        "storage_block": <tag:forge:storage_blocks/bismuth>,
        "ore": <tag:forge:ores/bismuth>,
        "ore_deposit": <tag:forge:ore_deposit/bismuth>,
        "dust": <tag:forge:dusts/bismuth>,
        //"fluid": <fluid:forge:fluids/bismuth>,
        "gear": <tag:forge:gears/bismuth>,
        "plate": <tag:forge:plates/bismuth>,
        "rod": <tag:forge:rods/bismuth>,
        "sheet": <tag:forge:sheets/bismuth>,
        "dirty_dust": <tag:forge:dirty_dusts/bismuth>,
        "clump": <tag:forge:clumps/bismuth>,
        "shard": <tag:forge:shards/bismuth>,
        "crystal": <tag:forge:crystals/bismuth>,
        //"slurry": <tag:forge:slurries/bismuth>,
        //"clean_slurry": <tag:forge:clean_slurries/bismuth>
    },

    "aluminum": {
        "nugget": <tag:forge:nuggets/aluminum>,
        "ingot": <tag:forge:ingots/aluminum>,
        "storage_block": <tag:forge:storage_blocks/aluminum>,
        "ore": <tag:forge:ores/aluminum>,
        "ore_deposit": <tag:forge:ore_deposit/aluminum>,
        "dust": <tag:forge:dusts/aluminum>,
        //"fluid": <fluid:forge:fluids/aluminum>,
        "gear": <tag:forge:gears/aluminum>,
        "plate": <tag:forge:plates/aluminum>,
        "rod": <tag:forge:rods/aluminum>,
        "sheet": <tag:forge:sheets/aluminum>,
        "dirty_dust": <tag:forge:dirty_dusts/aluminum>,
        "clump": <tag:forge:clumps/aluminum>,
        "shard": <tag:forge:shards/aluminum>,
        "crystal": <tag:forge:crystals/aluminum>,
        //"slurry": <tag:forge:slurries/aluminum>,
        //"clean_slurry": <tag:forge:clean_slurries/aluminum>
    },

    "uranium": {
        "nugget": <tag:forge:nuggets/uranium>,
        "ingot": <tag:forge:ingots/uranium>,
        "storage_block": <tag:forge:storage_blocks/uranium>,
        "ore": <tag:forge:ores/uranium>,
        "ore_deposit": <tag:forge:ore_deposit/uranium>,
        "dust": <tag:forge:dusts/uranium>,
        //"fluid": <fluid:forge:fluids/uranium>,
        "gear": <tag:forge:gears/uranium>,
        "plate": <tag:forge:plates/uranium>,
        "rod": <tag:forge:rods/uranium>,
        "sheet": <tag:forge:sheets/uranium>,
        "dirty_dust": <tag:forge:dirty_dusts/uranium>,
        "clump": <tag:forge:clumps/uranium>,
        "shard": <tag:forge:shards/uranium>,
        "crystal": <tag:forge:crystals/uranium>,
        //"slurry": <tag:forge:slurries/uranium>,
        //"clean_slurry": <tag:forge:clean_slurries/uranium>
    },

    "bronze": {
        "nugget": <tag:forge:nuggets/bronze>,
        "ingot": <tag:forge:ingots/bronze>,
        "storage_block": <tag:forge:storage_blocks/bronze>,
        "ore": <tag:forge:ores/bronze>,
        "ore_deposit": <tag:forge:ore_deposit/bronze>,
        "dust": <tag:forge:dusts/bronze>,
        //"fluid": <fluid:forge:fluids/bronze>,
        "gear": <tag:forge:gears/bronze>,
        "plate": <tag:forge:plates/bronze>,
        "rod": <tag:forge:rods/bronze>,
        "sheet": <tag:forge:sheets/bronze>,
        "dirty_dust": <tag:forge:dirty_dusts/bronze>,
        "clump": <tag:forge:clumps/bronze>,
        "shard": <tag:forge:shards/bronze>,
        "crystal": <tag:forge:crystals/bronze>,
        //"slurry": <tag:forge:slurries/bronze>,
        //"clean_slurry": <tag:forge:clean_slurries/bronze>
    },

    "invar": {
        "nugget": <tag:forge:nuggets/invar>,
        "ingot": <tag:forge:ingots/invar>,
        "storage_block": <tag:forge:storage_blocks/invar>,
        "ore": <tag:forge:ores/invar>,
        "ore_deposit": <tag:forge:ore_deposit/invar>,
        "dust": <tag:forge:dusts/invar>,
        //"fluid": <fluid:forge:fluids/invar>,
        "gear": <tag:forge:gears/invar>,
        "plate": <tag:forge:plates/invar>,
        "rod": <tag:forge:rods/invar>,
        "sheet": <tag:forge:sheets/invar>,
        "dirty_dust": <tag:forge:dirty_dusts/invar>,
        "clump": <tag:forge:clumps/invar>,
        "shard": <tag:forge:shards/invar>,
        "crystal": <tag:forge:crystals/invar>,
        //"slurry": <tag:forge:slurries/invar>,
        //"clean_slurry": <tag:forge:clean_slurries/invar>
    },

    "electrum": {
        "nugget": <tag:forge:nuggets/electrum>,
        "ingot": <tag:forge:ingots/electrum>,
        "storage_block": <tag:forge:storage_blocks/electrum>,
        "ore": <tag:forge:ores/electrum>,
        "ore_deposit": <tag:forge:ore_deposit/electrum>,
        "dust": <tag:forge:dusts/electrum>,
        //"fluid": <fluid:forge:fluids/electrum>,
        "gear": <tag:forge:gears/electrum>,
        "plate": <tag:forge:plates/electrum>,
        "rod": <tag:forge:rods/electrum>,
        "sheet": <tag:forge:sheets/electrum>,
        "dirty_dust": <tag:forge:dirty_dusts/electrum>,
        "clump": <tag:forge:clumps/electrum>,
        "shard": <tag:forge:shards/electrum>,
        "crystal": <tag:forge:crystals/electrum>,
        //"slurry": <tag:forge:slurries/electrum>,
        //"clean_slurry": <tag:forge:clean_slurries/electrum>
    },

    "bismuth_brass": {
        "nugget": <tag:forge:nuggets/bismuth_brass>,
        "ingot": <tag:forge:ingots/bismuth_brass>,
        "storage_block": <tag:forge:storage_blocks/bismuth_brass>,
        "ore": <tag:forge:ores/bismuth_brass>,
        "ore_deposit": <tag:forge:ore_deposit/bismuth_brass>,
        "dust": <tag:forge:dusts/bismuth_brass>,
        //"fluid": <fluid:forge:fluids/bismuth_brass>,
        "gear": <tag:forge:gears/bismuth_brass>,
        "plate": <tag:forge:plates/bismuth_brass>,
        "rod": <tag:forge:rods/bismuth_brass>,
        "sheet": <tag:forge:sheets/bismuth_brass>,
        "dirty_dust": <tag:forge:dirty_dusts/bismuth_brass>,
        "clump": <tag:forge:clumps/bismuth_brass>,
        "shard": <tag:forge:shards/bismuth_brass>,
        "crystal": <tag:forge:crystals/bismuth_brass>,
        //"slurry": <tag:forge:slurries/bismuth_brass>,
        //"clean_slurry": <tag:forge:clean_slurries/bismuth_brass>
    },

    "aluminum_steel": {
        "nugget": <tag:forge:nuggets/aluminum_steel>,
        "ingot": <tag:forge:ingots/aluminum_steel>,
        "storage_block": <tag:forge:storage_blocks/aluminum_steel>,
        "ore": <tag:forge:ores/aluminum_steel>,
        "ore_deposit": <tag:forge:ore_deposit/aluminum_steel>,
        "dust": <tag:forge:dusts/aluminum_steel>,
        //"fluid": <fluid:forge:fluids/aluminum_steel>,
        "gear": <tag:forge:gears/aluminum_steel>,
        "plate": <tag:forge:plates/aluminum_steel>,
        "rod": <tag:forge:rods/aluminum_steel>,
        "sheet": <tag:forge:sheets/aluminum_steel>,
        "dirty_dust": <tag:forge:dirty_dusts/aluminum_steel>,
        "clump": <tag:forge:clumps/aluminum_steel>,
        "shard": <tag:forge:shards/aluminum_steel>,
        "crystal": <tag:forge:crystals/aluminum_steel>,
        //"slurry": <tag:forge:slurries/aluminum_steel>,
        //"clean_slurry": <tag:forge:clean_slurries/aluminum_steel>
    },

    "bismuth_steel": {
        "nugget": <tag:forge:nuggets/bismuth_steel>,
        "ingot": <tag:forge:ingots/bismuth_steel>,
        "storage_block": <tag:forge:storage_blocks/bismuth_steel>,
        "ore": <tag:forge:ores/bismuth_steel>,
        "ore_deposit": <tag:forge:ore_deposit/bismuth_steel>,
        "dust": <tag:forge:dusts/bismuth_steel>,
        //"fluid": <fluid:forge:fluids/bismuth_steel>,
        "gear": <tag:forge:gears/bismuth_steel>,
        "plate": <tag:forge:plates/bismuth_steel>,
        "rod": <tag:forge:rods/bismuth_steel>,
        "sheet": <tag:forge:sheets/bismuth_steel>,
        "dirty_dust": <tag:forge:dirty_dusts/bismuth_steel>,
        "clump": <tag:forge:clumps/bismuth_steel>,
        "shard": <tag:forge:shards/bismuth_steel>,
        "crystal": <tag:forge:crystals/bismuth_steel>,
        //"slurry": <tag:forge:slurries/bismuth_steel>,
        //"clean_slurry": <tag:forge:clean_slurries/bismuth_steel>
    },

    "signalum": {
        "nugget": <tag:forge:nuggets/signalum>,
        "ingot": <tag:forge:ingots/signalum>,
        "storage_block": <tag:forge:storage_blocks/signalum>,
        "ore": <tag:forge:ores/signalum>,
        "ore_deposit": <tag:forge:ore_deposit/signalum>,
        "dust": <tag:forge:dusts/signalum>,
        //"fluid": <fluid:forge:fluids/signalum>,
        "gear": <tag:forge:gears/signalum>,
        "plate": <tag:forge:plates/signalum>,
        "rod": <tag:forge:rods/signalum>,
        "sheet": <tag:forge:sheets/signalum>,
        "dirty_dust": <tag:forge:dirty_dusts/signalum>,
        "clump": <tag:forge:clumps/signalum>,
        "shard": <tag:forge:shards/signalum>,
        "crystal": <tag:forge:crystals/signalum>,
        //"slurry": <tag:forge:slurries/signalum>,
        //"clean_slurry": <tag:forge:clean_slurries/signalum>
    },

    "lumium": {
        "nugget": <tag:forge:nuggets/lumium>,
        "ingot": <tag:forge:ingots/lumium>,
        "storage_block": <tag:forge:storage_blocks/lumium>,
        "ore": <tag:forge:ores/lumium>,
        "ore_deposit": <tag:forge:ore_deposit/lumium>,
        "dust": <tag:forge:dusts/lumium>,
        //"fluid": <fluid:forge:fluids/lumium>,
        "gear": <tag:forge:gears/lumium>,
        "plate": <tag:forge:plates/lumium>,
        "rod": <tag:forge:rods/lumium>,
        "sheet": <tag:forge:sheets/lumium>,
        "dirty_dust": <tag:forge:dirty_dusts/lumium>,
        "clump": <tag:forge:clumps/lumium>,
        "shard": <tag:forge:shards/lumium>,
        "crystal": <tag:forge:crystals/lumium>,
        //"slurry": <tag:forge:slurries/lumium>,
        //"clean_slurry": <tag:forge:clean_slurries/lumium>
    },

    "enderium": {
        "nugget": <tag:forge:nuggets/enderium>,
        "ingot": <tag:forge:ingots/enderium>,
        "storage_block": <tag:forge:storage_blocks/enderium>,
        "ore": <tag:forge:ores/enderium>,
        "ore_deposit": <tag:forge:ore_deposit/enderium>,
        "dust": <tag:forge:dusts/enderium>,
        //"fluid": <fluid:forge:fluids/enderium>,
        "gear": <tag:forge:gears/enderium>,
        "plate": <tag:forge:plates/enderium>,
        "rod": <tag:forge:rods/enderium>,
        "sheet": <tag:forge:sheets/enderium>,
        "dirty_dust": <tag:forge:dirty_dusts/enderium>,
        "clump": <tag:forge:clumps/enderium>,
        "shard": <tag:forge:shards/enderium>,
        "crystal": <tag:forge:crystals/enderium>,
        //"slurry": <tag:forge:slurries/enderium>,
        //"clean_slurry": <tag:forge:clean_slurries/enderium>
    },

    "diamond": {
        "nugget": <tag:forge:nuggets/diamond>,
        "ingot": <tag:forge:ingots/diamond>,
        "storage_block": <tag:forge:storage_blocks/diamond>,
        "ore": <tag:forge:ores/diamond>,
        "ore_deposit": <tag:forge:ore_deposit/diamond>,
        "dust": <tag:forge:dusts/diamond>,
        //"fluid": <fluid:forge:fluids/diamond>,
        "gear": <tag:forge:gears/diamond>,
        "plate": <tag:forge:plates/diamond>,
        "rod": <tag:forge:rods/diamond>,
        "sheet": <tag:forge:sheets/diamond>,
        "dirty_dust": <tag:forge:dirty_dusts/diamond>,
        "clump": <tag:forge:clumps/diamond>,
        "shard": <tag:forge:shards/diamond>,
        "crystal": <tag:forge:crystals/diamond>,
        //"slurry": <tag:forge:slurries/diamond>,
        //"clean_slurry": <tag:forge:clean_slurries/diamond>
    },

    "lapis_lazuli": {
        "nugget": <tag:forge:nuggets/lapis_lazuli>,
        "ingot": <tag:forge:ingots/lapis_lazuli>,
        "storage_block": <tag:forge:storage_blocks/lapis_lazuli>,
        "ore": <tag:forge:ores/lapis_lazuli>,
        "ore_deposit": <tag:forge:ore_deposit/lapis_lazuli>,
        "dust": <tag:forge:dusts/lapis_lazuli>,
        //"fluid": <fluid:forge:fluids/lapis_lazuli>,
        "gear": <tag:forge:gears/lapis_lazuli>,
        "plate": <tag:forge:plates/lapis_lazuli>,
        "rod": <tag:forge:rods/lapis_lazuli>,
        "sheet": <tag:forge:sheets/lapis_lazuli>,
        "dirty_dust": <tag:forge:dirty_dusts/lapis_lazuli>,
        "clump": <tag:forge:clumps/lapis_lazuli>,
        "shard": <tag:forge:shards/lapis_lazuli>,
        "crystal": <tag:forge:crystals/lapis_lazuli>,
        //"slurry": <tag:forge:slurries/lapis_lazuli>,
        //"clean_slurry": <tag:forge:clean_slurries/lapis_lazuli>
    },

    "emerald": {
        "nugget": <tag:forge:nuggets/emerald>,
        "ingot": <tag:forge:ingots/emerald>,
        "storage_block": <tag:forge:storage_blocks/emerald>,
        "ore": <tag:forge:ores/emerald>,
        "ore_deposit": <tag:forge:ore_deposit/emerald>,
        "dust": <tag:forge:dusts/emerald>,
        //"fluid": <fluid:forge:fluids/emerald>,
        "gear": <tag:forge:gears/emerald>,
        "plate": <tag:forge:plates/emerald>,
        "rod": <tag:forge:rods/emerald>,
        "sheet": <tag:forge:sheets/emerald>,
        "dirty_dust": <tag:forge:dirty_dusts/emerald>,
        "clump": <tag:forge:clumps/emerald>,
        "shard": <tag:forge:shards/emerald>,
        "crystal": <tag:forge:crystals/emerald>,
        //"slurry": <tag:forge:slurries/emerald>,
        //"clean_slurry": <tag:forge:clean_slurries/emerald>
    },

    "quartz": {
        "nugget": <tag:forge:nuggets/quartz>,
        "ingot": <tag:forge:ingots/quartz>,
        "storage_block": <tag:forge:storage_blocks/quartz>,
        "ore": <tag:forge:ores/quartz>,
        "ore_deposit": <tag:forge:ore_deposit/quartz>,
        "dust": <tag:forge:dusts/quartz>,
        //"fluid": <fluid:forge:fluids/quartz>,
        "gear": <tag:forge:gears/quartz>,
        "plate": <tag:forge:plates/quartz>,
        "rod": <tag:forge:rods/quartz>,
        "sheet": <tag:forge:sheets/quartz>,
        "dirty_dust": <tag:forge:dirty_dusts/quartz>,
        "clump": <tag:forge:clumps/quartz>,
        "shard": <tag:forge:shards/quartz>,
        "crystal": <tag:forge:crystals/quartz>,
        //"slurry": <tag:forge:slurries/quartz>,
        //"clean_slurry": <tag:forge:clean_slurries/quartz>
    },

    "amethyst": {
        "nugget": <tag:forge:nuggets/amethyst>,
        "ingot": <tag:forge:ingots/amethyst>,
        "storage_block": <tag:forge:storage_blocks/amethyst>,
        "ore": <tag:forge:ores/amethyst>,
        "ore_deposit": <tag:forge:ore_deposit/amethyst>,
        "dust": <tag:forge:dusts/amethyst>,
        //"fluid": <fluid:forge:fluids/amethyst>,
        "gear": <tag:forge:gears/amethyst>,
        "plate": <tag:forge:plates/amethyst>,
        "rod": <tag:forge:rods/amethyst>,
        "sheet": <tag:forge:sheets/amethyst>,
        "dirty_dust": <tag:forge:dirty_dusts/amethyst>,
        "clump": <tag:forge:clumps/amethyst>,
        "shard": <tag:forge:shards/amethyst>,
        "crystal": <tag:forge:crystals/amethyst>,
        //"slurry": <tag:forge:slurries/amethyst>,
        //"clean_slurry": <tag:forge:clean_slurries/amethyst>
    },

    "sapphire": {
        "nugget": <tag:forge:nuggets/sapphire>,
        "ingot": <tag:forge:ingots/sapphire>,
        "storage_block": <tag:forge:storage_blocks/sapphire>,
        "ore": <tag:forge:ores/sapphire>,
        "ore_deposit": <tag:forge:ore_deposit/sapphire>,
        "dust": <tag:forge:dusts/sapphire>,
        //"fluid": <fluid:forge:fluids/sapphire>,
        "gear": <tag:forge:gears/sapphire>,
        "plate": <tag:forge:plates/sapphire>,
        "rod": <tag:forge:rods/sapphire>,
        "sheet": <tag:forge:sheets/sapphire>,
        "dirty_dust": <tag:forge:dirty_dusts/sapphire>,
        "clump": <tag:forge:clumps/sapphire>,
        "shard": <tag:forge:shards/sapphire>,
        "crystal": <tag:forge:crystals/sapphire>,
        //"slurry": <tag:forge:slurries/sapphire>,
        //"clean_slurry": <tag:forge:clean_slurries/sapphire>
    },

    "malachite": {
        "nugget": <tag:forge:nuggets/malachite>,
        "ingot": <tag:forge:ingots/malachite>,
        "storage_block": <tag:forge:storage_blocks/malachite>,
        "ore": <tag:forge:ores/malachite>,
        "ore_deposit": <tag:forge:ore_deposit/malachite>,
        "dust": <tag:forge:dusts/malachite>,
        //"fluid": <fluid:forge:fluids/malachite>,
        "gear": <tag:forge:gears/malachite>,
        "plate": <tag:forge:plates/malachite>,
        "rod": <tag:forge:rods/malachite>,
        "sheet": <tag:forge:sheets/malachite>,
        "dirty_dust": <tag:forge:dirty_dusts/malachite>,
        "clump": <tag:forge:clumps/malachite>,
        "shard": <tag:forge:shards/malachite>,
        "crystal": <tag:forge:crystals/malachite>,
        //"slurry": <tag:forge:slurries/malachite>,
        //"clean_slurry": <tag:forge:clean_slurries/malachite>
    },

    "ruby": {
        "nugget": <tag:forge:nuggets/ruby>,
        "ingot": <tag:forge:ingots/ruby>,
        "storage_block": <tag:forge:storage_blocks/ruby>,
        "ore": <tag:forge:ores/ruby>,
        "ore_deposit": <tag:forge:ore_deposit/ruby>,
        "dust": <tag:forge:dusts/ruby>,
        //"fluid": <fluid:forge:fluids/ruby>,
        "gear": <tag:forge:gears/ruby>,
        "plate": <tag:forge:plates/ruby>,
        "rod": <tag:forge:rods/ruby>,
        "sheet": <tag:forge:sheets/ruby>,
        "dirty_dust": <tag:forge:dirty_dusts/ruby>,
        "clump": <tag:forge:clumps/ruby>,
        "shard": <tag:forge:shards/ruby>,
        "crystal": <tag:forge:crystals/ruby>,
        //"slurry": <tag:forge:slurries/ruby>,
        //"clean_slurry": <tag:forge:clean_slurries/ruby>
    },

    "redstone": {
        "nugget": <tag:forge:nuggets/redstone>,
        "ingot": <tag:forge:ingots/redstone>,
        "storage_block": <tag:forge:storage_blocks/redstone>,
        "ore": <tag:forge:ores/redstone>,
        "ore_deposit": <tag:forge:ore_deposit/redstone>,
        "dust": <tag:forge:dusts/redstone>,
        //"fluid": <fluid:forge:fluids/redstone>,
        "gear": <tag:forge:gears/redstone>,
        "plate": <tag:forge:plates/redstone>,
        "rod": <tag:forge:rods/redstone>,
        "sheet": <tag:forge:sheets/redstone>,
        "dirty_dust": <tag:forge:dirty_dusts/redstone>,
        "clump": <tag:forge:clumps/redstone>,
        "shard": <tag:forge:shards/redstone>,
        "crystal": <tag:forge:crystals/redstone>,
        //"slurry": <tag:forge:slurries/redstone>,
        //"clean_slurry": <tag:forge:clean_slurries/redstone>
    },

    "glowstone": {
        "nugget": <tag:forge:nuggets/glowstone>,
        "ingot": <tag:forge:ingots/glowstone>,
        "storage_block": <tag:forge:storage_blocks/glowstone>,
        "ore": <tag:forge:ores/glowstone>,
        "ore_deposit": <tag:forge:ore_deposit/glowstone>,
        "dust": <tag:forge:dusts/glowstone>,
        //"fluid": <fluid:forge:fluids/glowstone>,
        "gear": <tag:forge:gears/glowstone>,
        "plate": <tag:forge:plates/glowstone>,
        "rod": <tag:forge:rods/glowstone>,
    }; 
}

for material, types in materials {
        //#addEquipmentToNuggetSmelting(material);
        /* var nuggetTag = BracketHandlers.getTag("forge:nuggets/" + material);
        var nugget = nuggetTag.first();
        var equipmentTag = BracketHandlers.getTag("mysticalworld:" + material + "_items");
        var xp = 1.0;
        var cookingTime = 200;

        if (equipmentTag.first().matches(<item:minecraft:air>)) {
            logger.info("Attempted to add Metal Item to Nugget Smelting/Blasting recipes, but no items exist in the ItemTag " + equipmentTag.commandString);
        }
        else if (nugget.matches(<item:minecraft:air>)) {
            logger.info("Attempted to add Metal Item to Nugget Smelting/Blasting recipes, but no items exist in the ItemTag " + nuggetTag.commandString);
        } 
        else {
            for item in equipmentTag.items {
                blastFurnace.removeRecipe(nuggetTag.first(), item);
                furnace.removeRecipe(nuggetTag.first(), item);
                blastFurnace.addRecipe(formatRecipeName(nuggetTag.first()) + "_from_" + formatRecipeName(item), nuggetTag.first(), item, xp, cookingTime);
                furnace.addRecipe(formatRecipeName(nuggetTag.first()) + "_from_" + formatRecipeName(item), nuggetTag.first(), item, xp, cookingTime);    
            }  
        } */

        //#addDustToIngotSmelting(material);
        var dustItemTag = BracketHandlers.getTag("forge:dusts/" + material);
        var ingotItemTag = BracketHandlers.getTag("forge:ingots/" + material);
        var dust = dustItemTag.first();
        var ingot = ingotItemTag.first();
        var xp = 0.0;
        var cookingTime = 200;

        if (dust.matches(<item:minecraft:air>)) {
            logger.info("Attempted to add smelting recipe, but no items exist in the ItemTag " + dustItemTag.commandString);
        }
        else if (ingot.matches(<item:minecraft:air>)) {
            logger.info("Attempted to add smelting recipe, but no items exist in the ItemTag " + ingotItemTag.commandString);
        } 
        else {
            blastFurnace.removeRecipe(ingot, dust);
            furnace.removeRecipe(ingot, dust);
            blastFurnace.addRecipe("blastfurnace_" + formatRecipeName(ingot) + "_from_dust", ingot, dust, xp, cookingTime);
            furnace.addRecipe("furnace_" + formatRecipeName(ingot) + "_from_dust", ingot, dust, xp, cookingTime);
        }

        //#addOreToIngotSmelting(material);
        var oreItemTag = BracketHandlers.getTag("forge:ores/" + material);
        var ore = oreItemTag.first();
        xp = 1.0;

        if (ore.matches(<item:minecraft:air>)) {
            logger.info("minecraft_addOreToIngotSmelting: No items exist in the ItemTag " + oreItemTag.commandString);
        } 
        else {
            blastFurnace.removeRecipe(ingot, ore);
            furnace.removeRecipe(ingot, ore);
            blastFurnace.addRecipe("blastfurnace_" + formatRecipeName(ingot) + "_from_ore", ingot, ore, xp, cookingTime);
            furnace.addRecipe("furnace_" + formatRecipeName(ingot) + "_from_ore", ingot, ore, xp, cookingTime); 
        }

        //#mekanism_addOreToDustCrushing(material);
        if (ore.matches(<item:minecraft:air>)) {
            logger.info("mekanism_addOreToDustEnriching: No items exist in the ItemTag " + oreItemTag.commandString);
        }
        else if (dust.matches(<item:minecraft:air>)) 
        {
            logger.info("mekanism_addOreToDustEnriching: No items exist in the ItemTag " + dustItemTag.commandString);
        } 
        else {
            //TODO: Try declaring the functions inside this script
            //#mekanism_addOreToDustEnriching(material);
            <recipetype:mekanism:enriching>.addJSONRecipe("enriching_" + formatRecipeName(dust * 2),
            {
                input: {
                    ingredient: {
                        item: ore.registryName
                    }
                    
                },
                output: {
                    item: dust.registryName,
                    count: 2
                }
            });
        }
}