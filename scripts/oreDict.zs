import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;



//Add/remove items in salt OreDicts

val SaltAdd = [
    <skyes_bakery:salt>
] as IItemStack[];

val SaltRemove = [

] as IItemStack[];



//Add/remove items in flour OreDicts

val flourAdd = [
    <harvestcraft:flouritem>
] as IItemStack[];

val flourRemove = [
    
] as IItemStack[];



//Add/remove items in dough OreDicts

val doughAdd = [
    
] as IItemStack[];

//Add/remove items in torch OreDicts

val torchAdd = [
    <realistictorches:torch_lit>,
    <realistictorches:torch_smoldering>,
    <realistictorches:torch_unlit>
] as IItemStack[];

val torchRemove = [
    
] as IItemStack[];





//Edit items in OreDict
val foodSalt = <ore:foodSalt>;
for item in SaltAdd {foodSalt.add(item);}
for item in SaltRemove {foodSalt.remove(item);}
val itemSalt = <ore:itemSalt>;
for item in SaltAdd {itemSalt.add(item);}
for item in SaltRemove {itemSalt.remove(item);}
val dustWheat = <ore:dustWheat>;
for item in flourAdd {dustWheat.add(item);}
for item in flourRemove {dustWheat.remove(item);}
val foodFlour = <ore:foodFlour>;
for item in flourAdd {foodFlour.add(item);}
for item in flourRemove {foodFlour.remove(item);}
val foodDough = <ore:foodDough>;
for item in doughAdd {foodDough.add(item);}
val torch = <ore:torch>;
for item in torchAdd {torch.add(item);}
for item in torchRemove {torch.remove(item);}