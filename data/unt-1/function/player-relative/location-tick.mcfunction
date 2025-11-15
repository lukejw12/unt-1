# boat controller only if boat nearby
execute as @e[type=armor_stand,tag=unt-1.boat,limit=1,distance=..5] at @s run function unt-1:boat-controller/boat-ticks

# dock interactions
execute if entity @e[type=armor_stand,tag=unt-1.dock,distance=..4] run function unt-1:player-relative/dock-nearby

# inventory checks
function unt-1:inventory/check-multi-slot