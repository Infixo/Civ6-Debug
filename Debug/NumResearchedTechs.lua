
function()
	local player = Players[g_TunerSelectedPlayer];
	local playerTechs = player:GetTechs();
	local numTechs = 0;
	if playerTechs == nil then return 0; end
	for tech in GameInfo.Technologies() do
		if(playerTechs:HasTech(tech.Index)) then
			numTechs = numTechs + 1
		end
	end
	return numTechs
end

-- WORKING

function()
	local listItems = {};
	local player = Players[g_TunerSelectedPlayer];
	local playerTechs = player:GetTechs();
	local ID = 0;		

	if playerTechs == nil then return; end
	
	for tech in GameInfo.Technologies() do
		local item = {};
		item["Text"] = string.gsub( tech.TechnologyType, "TECH_", "" );
		if(playerTechs:HasTech(tech.Index)) then
			item["Selected"] = true;
		else
			item["Selected"] = false;
		end
		ID = ID + 1;

		listItems[ID] = item;
	end
	return listItems;
end

local player = Players[g_TunerSelectedPlayer];
local playerTechs = player:GetTechs();
local ID = 0;		

for tech in GameInfo.Technologies() do
	playerTechs:SetTech(ID, true);
	ID = ID + 1;
end
