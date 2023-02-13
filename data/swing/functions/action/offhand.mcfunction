## advancement swing:use/offhand

#make reusable
advancement revoke @s only swing:use/offhand

execute unless data entity @s SelectedItem.tag.swing run function swing:action/swap_hand
