# SimpleCoord

Show current player's and mouseover coordinates in the World Map.

## Known Issues

1. [Temp Fixed] As `C_Map.GetPlayerMapPosition` has a memory leak issue, it's wrapped in [RunScript](https://wowwiki.fandom.com/wiki/API_RunScript) to avoid limitless memery usage grow.

2. [Not Fixed] `C_Map.GetPlayerMapPosition` seems not working properly in an instance/battle field.
