(run_on_thread or run_on_actor)(
	(getactorthreads or getactors)()[1],
 	[=[

local Service = setmetatable({}, {
	__call = function(Self, Service)
		return cloneref(game.GetService(game, Service))
	end,
})

local Workspace		= Service"Workspace"
local RunService	= Service"RunService"
local PlayerService	= Service"Players"

local Camera		= Workspace.CurrentCamera
local LocalPlayer	= PlayerService.LocalPlayer

local ModuleCache 	= debug.getupvalue(getrenv().shared.require, 1)._cache
local Modules		= setmetatable({}, {
	__index = function(Self, Index)
		return ModuleCache[Index].module
	end,
})

local NO_UPVALUES = function(Function)
	return function(...)
		return Function(...)
	end
end

local ReplicationInterface	= Modules.ReplicationInterface;

local Players	= {}
do
	local Entries = debug.getupvalue(ReplicationInterface.addEntry, 1)
	function Players:GetPlayers()
		local PlayerObjects = {}

		for Player, Entry in Entries do
		
			local ThirdPersonObject = Entry:getThirdPersonObject()
			local CharacterHash = ThirdPersonObject and ThirdPersonObject:getCharacterHash()

			if (not CharacterHash) or (Player.Team == LocalPlayer.Team) then
				continue
			end

			PlayerObjects[Player] = {
				UserId = Player.UserId,
				Character = CharacterHash,
			}
		end

		return PlayerObjects
	end
end

local Paedophiles	= {
	525919, 	--! AxisAngle
	5725475,	--! litozinnamon
	31137804,	--! Raspy_Pi (Up to assumption)
	484782977,	--! smrkndev
	607954,		--! Arekan (Up to assumption)
	9843936,	--! Genya (Up to assumption)
	1667819,	--! shaylan007
	525919,		--! AxisAngle (Putting him there again because fuck you axis)
}


--! Built with antoxa
local Masker = {};
do 
	local model = Instance.new("Model")
	local part = Instance.new("Part")
	local specialMesh = Instance.new("SpecialMesh")
	local decal = Instance.new("Decal")
	local attachment = Instance.new("Attachment")
	local attachment1 = Instance.new("Attachment")
	local attachment2 = Instance.new("Attachment")
	local attachment3 = Instance.new("Attachment")
	local Weld = Instance.new("Weld")
	local humanoid = Instance.new("Humanoid")
	local humanoidDescription = Instance.new("HumanoidDescription")
	local bodyColors = Instance.new("BodyColors")
	local part1 = Instance.new("Part")
	local decal1 = Instance.new("Decal")
	local attachment4 = Instance.new("Attachment")
	local attachment5 = Instance.new("Attachment")
	local attachment6 = Instance.new("Attachment")
	local attachment7 = Instance.new("Attachment")
	local attachment8 = Instance.new("Attachment")
	local attachment9 = Instance.new("Attachment")
	local attachment10 = Instance.new("Attachment")
	local attachment11 = Instance.new("Attachment")
	local Weld1 = Instance.new("Weld")
	local part2 = Instance.new("Part")
	local attachment12 = Instance.new("Attachment")
	local Weld2 = Instance.new("Weld")
	local part3 = Instance.new("Part")
	local attachment13 = Instance.new("Attachment")
	local attachment14 = Instance.new("Attachment")
	local Weld3 = Instance.new("Weld")
	local part4 = Instance.new("Part")
	local attachment15 = Instance.new("Attachment")
	local Weld4 = Instance.new("Weld")
	local part5 = Instance.new("Part")
	local attachment16 = Instance.new("Attachment")
	local attachment17 = Instance.new("Attachment")
	local Weld5 = Instance.new("Weld")

	model.Name = "Clothing"
	model.PrimaryPart = part
	part.CFrame = CFrame.new(-24.5, 4.5, -21.5, 1, 0, 0, 0, 1, 0, 0, 0,  1)
	part.CanCollide = false
	part.CanQuery = false
	part.CanTouch = false
	part.Color = Color3.new(0.5, 0.5, 0.5)
	part.Massless = true
	part.Name = "Head"
	part.PivotOffset = CFrame.new(0, -4.5, 0, 1, 0, 0, 0, 1, 0, 0, 0,  1)
	part.Size = Vector3.new(2, 1, 1)
	part.TopSurface = Enum.SurfaceType.Smooth
	part.Parent = model
	specialMesh.Scale = Vector3.new(1.25, 1.25, 1.25)
	specialMesh.Parent = part
	decal.Name = "face"
	decal.Texture = "rbxasset://textures/face.png"
	decal.Parent = part
	attachment.CFrame = CFrame.new(0, 0.6, 0, 1, 0, 0, 0, 1, 0, 0, 0,  1)
	attachment.Name = "HairAttachment"
	attachment.Parent = part
	attachment1.CFrame = CFrame.new(0, 0.6, 0, 1, 0, 0, 0, 1, 0, 0, 0,  1)
	attachment1.Name = "HatAttachment"
	attachment1.Parent = part
	attachment2.CFrame = CFrame.new(0, 0, -0.6, 1, 0, 0, 0, 1, 0, 0, 0,  1)
	attachment2.Name = "FaceFrontAttachment"
	attachment2.Parent = part
	attachment3.Name = "FaceCenterAttachment"
	attachment3.Parent = part
	Weld.Part1 = part
	Weld.Parent = part
	humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	humanoid.HealthDisplayType = Enum.HumanoidHealthDisplayType.AlwaysOff
	humanoid.PlatformStand = true
	humanoid.Parent = model
	humanoidDescription.BodyTypeScale = 0
	humanoidDescription.HeadColor = Color3.new(0.5, 0.5, 0.5)
	humanoidDescription.LeftArmColor = Color3.new(0.5, 0.5, 0.5)
	humanoidDescription.LeftLegColor = Color3.new(0.5, 0.5, 0.5)
	humanoidDescription.ProportionScale = 0
	humanoidDescription.RightArmColor = Color3.new(0.5, 0.5, 0.5)
	humanoidDescription.RightLegColor = Color3.new(0.5, 0.5, 0.5)
	humanoidDescription.TorsoColor = Color3.new(0.5, 0.5, 0.5)
	humanoidDescription.Parent = humanoid
	bodyColors.HeadColor3 = Color3.new(0.5, 0.5, 0.5)
	bodyColors.LeftArmColor3 = Color3.new(0.5, 0.5, 0.5)
	bodyColors.LeftLegColor3 = Color3.new(0.5, 0.5, 0.5)
	bodyColors.RightArmColor3 = Color3.new(0.5, 0.5, 0.5)
	bodyColors.RightLegColor3 = Color3.new(0.5, 0.5, 0.5)
	bodyColors.TorsoColor3 = Color3.new(0.5, 0.5, 0.5)
	bodyColors.Parent = model
	part1.CFrame = CFrame.new(-24.5, 3, -21.5, 1, 0, 0, 0, 1, 0, 0, 0,  1)
	part1.CanQuery = false
	part1.CanTouch = false
	part1.Color = Color3.new(0.5, 0.5, 0.5)
	part1.LeftSurface = Enum.SurfaceType.Weld
	part1.Massless = true
	part1.Name = "Torso"
	part1.RightSurface = Enum.SurfaceType.Weld
	part1.Size = Vector3.new(2, 2, 1)
	part1.Parent = model
	decal1.Name = "roblox"
	decal1.Parent = part1
	attachment4.CFrame = CFrame.new(0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0,  1)
	attachment4.Name = "NeckAttachment"
	attachment4.Parent = part1
	attachment5.CFrame = CFrame.new(0, 0, -0.5, 1, 0, 0, 0, 1, 0, 0, 0,  1)
	attachment5.Name = "BodyFrontAttachment"
	attachment5.Parent = part1
	attachment6.CFrame = CFrame.new(0, 0, 0.5, 1, 0, 0, 0, 1, 0, 0, 0,  1)
	attachment6.Name = "BodyBackAttachment"
	attachment6.Parent = part1
	attachment7.CFrame = CFrame.new(-1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0,  1)
	attachment7.Name = "LeftCollarAttachment"
	attachment7.Parent = part1
	attachment8.CFrame = CFrame.new(1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0,  1)
	attachment8.Name = "RightCollarAttachment"
	attachment8.Parent = part1
	attachment9.CFrame = CFrame.new(0, -1, -0.5, 1, 0, 0, 0, 1, 0, 0, 0,  1)
	attachment9.Name = "WaistFrontAttachment"
	attachment9.Parent = part1
	attachment10.CFrame = CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0,  1)
	attachment10.Name = "WaistCenterAttachment"
	attachment10.Parent = part1
	attachment11.CFrame = CFrame.new(0, -1, 0.5, 1, 0, 0, 0, 1, 0, 0, 0,  1)
	attachment11.Name = "WaistBackAttachment"
	attachment11.Parent = part1
	Weld1.Part1 = part1
	Weld1.Parent = part1
	part2.BottomSurface = Enum.SurfaceType.Smooth
	part2.CFrame = CFrame.new(-24, 1, -21.5, 1, 0, 0, 0, 1, 0, 0, 0,  1)
	part2.CanCollide = false
	part2.CanQuery = false
	part2.CanTouch = false
	part2.Color = Color3.new(0.5, 0.5, 0.5)
	part2.Massless = true
	part2.Name = "Right Leg"
	part2.Size = Vector3.new(1, 2, 1)
	part2.Parent = model
	attachment12.CFrame = CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0,  1)
	attachment12.Name = "RightFootAttachment"
	attachment12.Parent = part2
	Weld2.Part1 = part2
	Weld2.Parent = part2
	part3.CFrame = CFrame.new(-23, 3, -21.5, 1, 0, 0, 0, 1, 0, 0, 0,  1)
	part3.CanCollide = false
	part3.CanQuery = false
	part3.CanTouch = false
	part3.Color = Color3.new(0.5, 0.5, 0.5)
	part3.Massless = true
	part3.Name = "Right Arm"
	part3.Size = Vector3.new(1, 2, 1)
	part3.Parent = model
	attachment13.CFrame = CFrame.new(0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0,  1)
	attachment13.Name = "RightShoulderAttachment"
	attachment13.Parent = part3
	attachment14.CFrame = CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0,  1)
	attachment14.Name = "RightGripAttachment"
	attachment14.Parent = part3
	Weld3.Part1 = part3
	Weld3.Parent = part3
	part4.BottomSurface = Enum.SurfaceType.Smooth
	part4.CFrame = CFrame.new(-25, 1, -21.5, 1, 0, 0, 0, 1, 0, 0, 0,  1)
	part4.CanCollide = false
	part4.CanQuery = false
	part4.CanTouch = false
	part4.Color = Color3.new(0.5, 0.5, 0.5)
	part4.Massless = true
	part4.Name = "Left Leg"
	part4.Size = Vector3.new(1, 2, 1)
	part4.Parent = model
	attachment15.CFrame = CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0,  1)
	attachment15.Name = "LeftFootAttachment"
	attachment15.Parent = part4
	Weld4.Part1 = part4
	Weld4.Parent = part4
	part5.CFrame = CFrame.new(-26, 3, -21.5, 1, 0, 0, 0, 1, 0, 0, 0,  1)
	part5.CanCollide = false
	part5.CanQuery = false
	part5.CanTouch = false
	part5.Color = Color3.new(0.5, 0.5, 0.5)
	part5.Massless = true
	part5.Name = "Left Arm"
	part5.Size = Vector3.new(1, 2, 1)
	part5.Parent = model
	attachment16.CFrame = CFrame.new(0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0,  1)
	attachment16.Name = "LeftShoulderAttachment"
	attachment16.Parent = part5
	attachment17.CFrame = CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0,  1)
	attachment17.Name = "LeftGripAttachment"
	attachment17.Parent = part5
	Weld5.Part1 = part5
	Weld5.Parent = part5

	Masker = {};
	Masker.__index = Masker

	function Masker.new(UserId)
		local self = setmetatable({}, Masker)
		self.UserId = UserId
		self.Character = model:Clone()
		self.Character.Parent = workspace.CurrentCamera
		self.Humanoid = self.Character.Humanoid
		self.Parent = nil;
		return self;
	end;

	function Masker:WeldMotor(Limb, OtherLimb)
		--self.Character[Limb]['CFrame']				= OtherLimb['CFrame']
		self.Character[Limb]['Weld']['Part0']	= OtherLimb
	end;

	function Masker:ParentTo(Model)
		self.Character.Parent = Model
	end;

	function Masker:Description()
		self.Humanoid:ApplyDescription(PlayerService:GetHumanoidDescriptionFromUserId(Paedophiles[math.random(1,#Paedophiles)]))
	end
end

local function HideParts(Instance)
	for _,Part in next,Instance:GetDescendants() do
		if(Part.Parent:IsA'Model' and Part.Parent.Parent:IsA'Model')then continue end;
		if Part:IsA('BasePart') then
			Part.Transparency = 1
		elseif(Part:IsA('MeshPart')) then
			Part:Destroy();
		elseif(Part:IsA('SpecialMesh')) then
		elseif(Part:IsA('SurfaceGui')) then
			Part.Enabled = false;
		elseif(Part:IsA('BillboardGui')) then
		elseif(Part:IsA('Texture')) then
			Part.Transparency = 1;
		elseif(Part:IsA('Decal')) then
			Part.Transparency = 1;
		end;
	end;
end;

--! This is half assed because I dont care enough lmfao
do
	local Humans	= {}
	RunService.RenderStepped:Connect(function()
		for _,Player in next, Players:GetPlayers() do
			local Character = Player.Character;
			
			local FakeCharacter	= Humans[tostring(Player.UserId)];
			
			if(not FakeCharacter) then 
				local Mask = Masker.new(Player.UserId);
				Humans[tostring(Player.UserId)]=Mask;
				
				Mask:WeldMotor('Head',		Character['Head']);
				Mask:WeldMotor('Torso',		Character['Torso']);
				Mask:WeldMotor('Right Arm',	Character['Right Arm']);
				Mask:WeldMotor('Left Arm',	Character['Left Arm']);
				Mask:WeldMotor('Right Leg',	Character['Right Leg']);
				Mask:WeldMotor('Left Leg',	Character['Left Leg']);

				pcall(function() Mask:Description() end)
			else
			if(Character['Torso'] and Character['Torso']['Parent'] and Character['Torso']['Parent']['Parent'])then
				HideParts(Character['Torso']['Parent'])
			end
				
				FakeCharacter:WeldMotor('Head',			Character['Head']);
				FakeCharacter:WeldMotor('Torso',		Character['Torso']);
				FakeCharacter:WeldMotor('Right Arm',	Character['Right Arm']);
				FakeCharacter:WeldMotor('Left Arm',		Character['Left Arm']);
				FakeCharacter:WeldMotor('Right Leg',	Character['Right Leg']);
				FakeCharacter:WeldMotor('Left Leg',		Character['Left Leg']);
			end;
			
		end
	end)
end


 ]=]
 )
