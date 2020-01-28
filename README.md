# SimpleCoord

Show current player's and mouseover coordinates in the World Map.

## Know Issues

As `C_Map.GetPlayerMapPosition` has a memory leak issue, it's wrapped in [RunScript](https://wowwiki.fandom.com/wiki/API_RunScript) to avoid limitless memery usage grow.
