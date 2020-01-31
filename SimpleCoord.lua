WorldMapFrame:HookScript("OnUpdate", function(self, elapsed)
  self.elapsed = (self.elapsed or 0) + elapsed
  if self.elapsed > .2 then
    if not self.locationTip then
      local tip = CreateFrame("Frame", nil, WorldMapFrame)
      tip:SetFrameStrata("FULLSCREEN_DIALOG")
      self.locationTip = tip:CreateFontString(nil, "OVERLAY", "GameFontGreen")
      self.locationTip:SetPoint("BOTTOM", self, "BOTTOM", 0, 8)
    end

    local pwmid, wmid = C_Map.GetBestMapForUnit("player"), WorldMapFrame:GetMapID()
    -- local position = C_Map.GetPlayerMapPosition(pwmid, "player")
    -- if not position then
    --   local position = { x = 0, y = 0 }
    -- end
    RunScript('position = C_Map.GetPlayerMapPosition(0, "player")')
    local pinfo = C_Map.GetMapInfo(pwmid)
    local finfo = C_Map.GetMapInfo(wmid)
    local x, y = WorldMapFrame:GetNormalizedCursorPosition()

    if position then
      self.locationTip:SetText(format("玩家: %s %d,%d  鼠标: %s %d,%d", pinfo.name, position.x * 100, position.y * 100, finfo.name, x * 100, y * 100))
    else
      self.locationTip:SetText(format("鼠标: %s %d,%d", finfo.name, x * 100, y * 100))
    end

    self.elapsed = 0
  end
end)
