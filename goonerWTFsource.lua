-- [version:fallen survival paid];
-- [updated:07/06/25];

local menu, fonts, UI, framework, flags;
do -- startup   
    if (not game:IsLoaded()) then repeat game.Loaded:Wait() until game:IsLoaded() end;
    -- macros
    if (not LPH_OBFUSCATED) then
        LPH_NO_VIRTUALIZE = function(...) return ... end;
        LPH_NO_UPVALUES = function(f) return (function(...) return f(...) end) end;
        LPH_JIT = function(...) return ... end;
        LPH_JIT_MAX = function(...) return ... end;
    end; 

    if (not LRM_LinkedDiscordID) then LRM_LinkedDiscordID = "1123144940071952394" end;
    if (not LRM_TotalExecutions) then LRM_TotalExecutions = "unknown" end;
    if (not LRM_SecondsLeft) then LRM_SecondsLeft = "9999999" end;

    do --// your buypass
        if (not LPH_OBFUSCATED) then
            if not getgenv then
                getgenv = function()
                    return _G
                end
            end

            if not cloneref then
                cloneref = function(Reference)
                    return Reference
                end
            end

            if not loadfile then
                loadfile = function(...)
                    return ...
                end
            end

            if not readfile then
                readfile = function(...)
                    return ...
                end
            end

            if not request then
                request = function(...)
                    return ...
                end
            end

            if not clonefunction then
                clonefunction = function(f)
                    return f
                end
            end

            if not newcclosure then
                newcclosure = function(...)
                    return ...
                end
            end

            if not hookfunction then
                hookfunction = function() end
            end

            if not getrenv then
                getrenv = function()
                    return {}
                end
            end
        end

        local Start = tick()
        local Executor = identifyexecutor()

        -- print = function(str)
        -- 	rconsoleprint(str .. "\n")
        -- end

        local HttpService = game:GetService("HttpService")

        local GarbageCollection = getgc(true)
        local LocalPlayer = game:GetService("Players").LocalPlayer

        local Character = LocalPlayer.Character
        local Humanoid = Character:FindFirstChild("Humanoid")

        local Whitelist = {
            { 2, "Highlight", "Highlight", false },
            { 1 },
            { { 1 }, 0 },
            { "2", "" },
        }

        local IsTableWhitelisted = function(Table)
            if not Table then
                return false
            end

            for WhitelistIndex, WhitelistEntry in ipairs(Whitelist) do
                local IsMatch = false

                if type(WhitelistEntry) == "table" then
                    if #WhitelistEntry == #Table then
                        IsMatch = true
                        for EntryIndex, EntryValue in ipairs(WhitelistEntry) do
                            if type(EntryValue) == "table" then
                                if type(Table[EntryIndex]) ~= "table" or #EntryValue ~= #Table[EntryIndex] then
                                    IsMatch = false
                                    break
                                end
                                for SubIndex, SubValue in ipairs(EntryValue) do
                                    if Table[EntryIndex][SubIndex] ~= SubValue then
                                        IsMatch = false
                                        break
                                    end
                                end
                                if not IsMatch then
                                    break
                                end
                            else
                                if Table[EntryIndex] ~= EntryValue then
                                    IsMatch = false
                                    break
                                end
                            end
                        end
                    end
                else
                    if #Table == 1 and Table[1] == WhitelistEntry then
                        IsMatch = true
                    end
                end

                if IsMatch then
                    return true
                end
            end

            return false
        end

        for _, Table in GarbageCollection do
            if type(Table) ~= "table" then
                continue
            end

            if rawget(Table, 2) == Character and rawget(Table, 0) == Humanoid then
                local Table1 = rawget(Table, 7)
                local Table2 = rawget(Table, 10)

                Table1[2] = nil
                Table2[2] = nil

                local Expected1
                local Expected2

                setmetatable(Table1, {
                    __index = function()
                        if IsTableWhitelisted(Expected1) then
                            --rconsoleprint("Sanity Check Attempt #1")
                            return Expected1
                        else
                            --rconsoleprint("Index Attempt #1")
                        end
                    end,
                    __newindex = function(_, _, Value)
                        Expected1 = Value

                        --rconsoleprint("Ban Attempt #1: " .. HttpService:JSONEncode(Value))
                    end,
                })

                setmetatable(Table2, {
                    __index = function()
                        if IsTableWhitelisted(Expected2) then
                            --rconsoleprint("Sanity Check Attempt #2")
                            return Expected2
                        else
                            --rconsoleprint("Index Attempt #2")
                        end
                    end,
                    __newindex = function(_, _, Value)
                        Expected2 = Value

                        --rconsoleprint("Ban Attempt #2: " .. HttpService:JSONEncode(Value))
                    end,
                })

                --rconsoleprint("Loaded Part 1")
            end
        end

        for _, Table in GarbageCollection do
            if type(Table) ~= "table" then
                continue
            end

            if typeof(rawget(Table, 1)) == "Instance" and rawget(Table, 1).Name == "Remotes" then
                local Table1 = rawget(Table, 4)

                local Expected1

                setmetatable(Table1, {
                    __index = function()
                        if IsTableWhitelisted(Expected1) then
                            --rconsoleprint("Sanity Check Attempt #3")
                            return Expected1
                        else
                            --rconsoleprint("Index Attempt #3")
                        end
                    end,
                    __newindex = function(_, _, Value)
                        Expected1 = Value

                        --rconsoleprint("Ban Attempt #3: " .. HttpService:JSONEncode(Value))
                    end,
                })

                --rconsoleprint("Loaded Part 2")
            end
        end

        local ID = tostring(LRM_LinkedDiscordID)
    end

    menu = loadstring(game:HttpGet("https://raw.githubusercontent.com/mainstreamed/clones/refs/heads/main/synapse/uiLibrary.lua", true))();
    UI, framework, fonts = menu[1],menu[2],menu[3];
    flags = UI.flags; getfenv(0)["UI"], getfenv(0)["Flags"] = UI, flags; 
end;

-- locals 
local get_renv = getrenv();
local clone_ref = cloneref;
local clone_func = clonefunction;
local get_genv = getgenv();
local math_huge = get_genv.math.huge;
local math_floor = get_genv.math.floor;
local math_clamp = get_genv.math.clamp;
local math_random = get_genv.math.random;
local math_tan = get_genv.math.tan;
local math_rad = get_genv.math.rad;
local math_min = get_genv.math.min;
local math_max = get_genv.math.max;
local math_atan = get_genv.math.atan;
local math_atan2 = get_genv.math.atan2;
local math_sin = get_genv.math.sin;
local math_cos = get_genv.math.cos;
local math_deg = get_genv.math.deg;
local math_pi = get_genv.math.pi; 
local block_cast = workspace.Blockcast;                    
local color3_new = clone_func(get_renv.Color3.new);       
local color3_fromrgb = clone_func(get_renv.Color3.fromRGB);                                                 
local udim2_new = clone_func(get_renv.UDim2.new);
local udim_new = clone_func(get_renv.UDim.new);
local instance_new = clone_func(get_renv.Instance.new);
local vec2_new = clone_func(get_renv.Vector2.new)
local taskspawn = clone_func(get_renv.task.spawn);
local table_insert = clone_func(get_renv.table.insert);

-- services
local workspace = clone_ref(game.GetService(game, "Workspace"));
local players = clone_ref(game.GetService(game, "Players"));
local uis = clone_ref(game.GetService(game, "UserInputService"));
local tween_service = clone_ref(game.GetService(game, "TweenService"));
local rs = clone_ref(game.GetService(game, "ReplicatedStorage"));
local stats = clone_ref(game.GetService(game, "Stats"));
local get_team = clone_ref(game.GetService(game, "Teams"));
local lighting = clone_ref(game.GetService(game, "Lighting"));
local run_service = clone_ref(game.GetService(game, "RunService"));

-- variables
local def_color = color3_fromrgb(128, 128, 242);
local camera = workspace["CurrentCamera"];
local viewport_size = camera["ViewportSize"];
local local_player = players["LocalPlayer"];
local local_char = local_player.Character or local_player.CharacterAdded:Wait();
local_player.CharacterAdded:Connect(function(character) local_char = character end);
local sky = lighting:FindFirstChildOfClass("Sky") or Instance.new("Sky", lighting);
local teams = get_team:GetTeams(); 
local atmosphere = lighting:FindFirstChild("Atmosphere");
local folder = workspace:FindFirstChild("VFX") and workspace.VFX:FindFirstChild("VMs")
local end_time = os.clock();

-- game
local nodes = workspace:FindFirstChild("Nodes");
local plants = workspace:FindFirstChild("Plants");
local bodybags = workspace:FindFirstChild("Bases") and workspace:FindFirstChild("Bases"):FindFirstChild("Loners"):FindFirstChild("Body Bag");
local drops = workspace:FindFirstChild("Drops");

-- modules
local _modules = rs:FindFirstChild("Modules");
local toolinfo_table = _modules and require(_modules.ToolInfo);
local items_table = _modules and require(_modules.Items);
local settings_table = _modules and require(_modules.SettingsModule);
local raycast_util = _modules and require(_modules.RaycastUtil)
local vector_util = _modules and require(_modules.VectorUtil);
local sound_table = _modules and require(_modules.SoundModule);

-- sounds
local normal_hit = game:GetService("SoundService"):FindFirstChild("Hit")
local hit_head = game:GetService("SoundService"):FindFirstChild("HitHead")

local library = {};
do -- library
    library.window = UI:window({ name = 'Synapse', size = UDim2.new(0, 770, 0, 500) });
    library.tabs = {
        ["combat"] = library.window:tabs({ name = "assist", scrollable = true, icon = "http://www.roblox.com/asset/?id=101187718648966", size = UDim2.new(0, 22, 0, 25) }),
        ["visuals"] = library.window:tabs({ name = "visuals", scrollable = true, icon = "http://www.roblox.com/asset/?id=7035631382", size = UDim2.new(0, 28, 0, 31) }),
        ["misc"] = library.window:tabs({ name = "misc", scrollable = true, icon = "http://www.roblox.com/asset/?id=484211948", size = UDim2.new(0, 28, 0, 28) }),
        ["skins"] = library.window:tabs({ name = "skins", scrollable = false, icon = "http://www.roblox.com/asset/?id=15132314888", size = UDim2.new(0, 34, 0, 34) }),
        ["colors"] = library.window:tabs({name = "colors", scrollable = false, icon = "http://www.roblox.com/asset/?id=78489916461314", size = udim2_new(0, 32, 0, 32)}),
        ["settings"] = library.window:tabs({ name = "settings", scrollable = false, icon = "http://www.roblox.com/asset/?id=11663743444", size = UDim2.new(0, 28, 0, 28) }) -- http://www.roblox.com/asset/?id=11348555035
    }; 
    library = setmetatable({combat=library.tabs.combat,visuals=library.tabs.visuals,misc=library.tabs.misc,colors=library.tabs.colors,skins=library.tabs.skins,settings=library.tabs.settings},{__index=library});
end;

local target, guns, esp, utility, functions = {}, {}, {}, {}, {};
do -- utility
    utility = {
        hit_effects = {
            Electric = {
                FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4,
                SpreadAngle = Vector2.new(-360,360),
                Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0,1), NumberSequenceKeypoint.new(0.25,0), NumberSequenceKeypoint.new(0.75,0), NumberSequenceKeypoint.new(1,1)},
                LightEmission = 1, Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255,255,255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,255))},
                Drag = 5, Brightness = 5,
                Size = NumberSequence.new{NumberSequenceKeypoint.new(0,0.5), NumberSequenceKeypoint.new(0.5,3), NumberSequenceKeypoint.new(1,6)},
                Texture = "rbxassetid://11515478646", FlipbookMode = Enum.ParticleFlipbookMode.OneShot,
                Lifetime = NumberRange.new(0.25), Speed = NumberRange.new(1,2), Rotation = NumberRange.new(-360,360)
            },
            Lightning = {
                FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4,
                SpreadAngle = Vector2.new(-360,360),
                Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0,1), NumberSequenceKeypoint.new(0.25,0), NumberSequenceKeypoint.new(0.75,0), NumberSequenceKeypoint.new(1,1)},
                LightEmission = 1, Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255,255,255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,255))},
                Drag = 5, Brightness = 10,
                Size = NumberSequence.new{NumberSequenceKeypoint.new(0,0.5), NumberSequenceKeypoint.new(0.5,3), NumberSequenceKeypoint.new(1,6)},
                Texture = "rbxassetid://3995331885", FlipbookMode = Enum.ParticleFlipbookMode.OneShot,
                Lifetime = NumberRange.new(0.2), Speed = NumberRange.new(0), Rotation = NumberRange.new(-360,360), RotSpeed = NumberRange.new(-15,15)
            };            
        };
        hit_sounds = {
            ["Default"]   = "";
            ["Dink"]      = "rbxassetid://988593556";
            ["TF2"]       = "rbxassetid://8255306220";
            ["Gamesense"] = "rbxassetid://4817809188";
            ["Rust"]      = "rbxassetid://1255040462";
            ["Neverlose"] = "rbxassetid://8726881116";
            ["Bubble"]    = "rbxassetid://198598793";
            ["Quake"]     = "rbxassetid://1455817260";
            ["Among-Us"]  = "rbxassetid://7227567562";
            ["Ding"]      = "rbxassetid://2868331684";
            ["Minecraft"] = "rbxassetid://6361963422";
            ["Blackout"]  = "rbxassetid://3748776946";
            ["Osu"]       = "rbxassetid://7151989073"
        },
        skyboxes = {
            ["Vaporwave"]      = {"1417494030"; "1417494146"; "1417494253"; "1417494402"; "1417494499"; "1417494643"};
            ["Redshift"]       = {"401664839"; "401664862"; "401664960"; "401664881"; "401664901"; "401664936"};
            ["Desert"]         = {"1013852"; "1013853"; "1013850"; "1013851"; "1013849"; "1013854"};
            ["Blaze"]          = {"150939022"; "150939038"; "150939047"; "150939056"; "150939063"; "150939082"};
            ["Among Us"]       = {"5752463190"; "5752463190"; "5752463190"; "5752463190"; "5752463190"; "5752463190"};
            ["Space Wave2"]    = {"1233158420"; "1233158838"; "1233157105"; "1233157640"; "1233157995"; "1233159158"};
            ["Turquoise Wave"] = {"47974894"; "47974690"; "47974821"; "47974776"; "47974859"; "47974909"};
            ["Dark Night"]     = {"6285719338"; "6285721078"; "6285722964"; "6285724682"; "6285726335"; "6285730635"};
            ["Bright Pink"]    = {"271042516"; "271077243"; "271042556"; "271042310"; "271042467"; "271077958"};
            ["Oblivion Lost"]  = {"5103110171", "5102993828", "5103111020", "5103112417", "5103113734", "5102993828"},
            ["Setting Sun"]    = {"626460377", "626460216", "626460513", "626473032", "626458639", "626460625"},
        },
        custom_textures = {
            ["Scan"] = "rbxassetid://9305457875",
            ["Scanning-hexagon"] = "rbxassetid://89067318",
            ["Hexagon"] = "rbxassetid://2930247814",
            ["Ground"] = "rbxassetid://11619804506",
            ["Lasers"] = "rbxassetid://398330154",
            ["Player"] = "rbxassetid://4504366173",
            ["Stars"] = "rbxassetid://4952604311",
            ["Lidar"] = "rbxassetid://965496575",
            ["Akatsuki"] = "rbxassetid://10913193650",
            ["America"] = "rbxassetid://936775406",
            ["Shield Forcefield"] = "rbxassetid://361073795",
        },
        r15_rig = {
            "Head", "HairPart", "UpperTorso", "LowerTorso", "LeftHand", "RightHand",
            "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm",
            "LeftFoot", "RightFoot", "LeftLowerLeg", "RightLowerLeg",
            "LeftUpperLeg", "RightUpperLeg", "HumanoidRootPart"
        };
        game = {
            Brightness = lighting.Brightness;
            ClockTime = lighting.ClockTime;
            Ambient = lighting.Ambient;
            OutdoorAmbient = lighting.OutdoorAmbient;
            FogEnd = lighting.FogEnd;
            FieldOfView = camera and camera.FieldOfView or 70;
            Density = atmosphere and atmosphere.Density;
            Offset = atmosphere and atmosphere.Offset;
            Glare = atmosphere and atmosphere.Glare;
            Haze = atmosphere and atmosphere.Haze;
        };
        skys = {};
        hitsounds = {};
    };
    for v in pairs(utility.skyboxes) do table_insert(utility.skys, v) end;
    for name in pairs(utility.hit_sounds) do table.insert(utility.hitsounds, name) end;
end;

local entry, closest_part, closest_distance, entry_model, manipulation_pos = nil, nil, nil, nil;
do
    target = {
        entry = nil,
        part = nil,
        hair = nil,
        manip = nil,
        hitscan = nil,
        distance = math_huge,
    };
    target.prediction_x, target.prediction_y, target.manip, target.hitscan = nil, nil, nil, nil;
    target.highlight_player = nil;
end;

do
    guns = {
        shot = false,
        weapon_name = nil,
        ignore_tools = false,
        projectile_speed = nil,
        projectile_gravity = nil,
    };
end

do -- functions
    -- Visible Check
    functions.is_visible = function(target)
        if not target or target == local_char then return false end;
    
        local position = nil
        if typeof(target) == "Instance" then
            if target:IsA("Model") then
                position = target.PrimaryPart and target.PrimaryPart.Position
            elseif target:IsA("BasePart") then
                position = target.Position
            end
        end
    
        if not position then return false end;
    
        local raycast_params = RaycastParams.new()
        raycast_params.FilterType = Enum.RaycastFilterType.Blacklist
        local ignore_list = {local_char, camera}
    
        if folder then
            for _, model in ipairs(folder:GetChildren()) do
                if model:IsA("Model") then
                    table.insert(ignore_list, model)
                end
            end
        end
    
        raycast_params.FilterDescendantsInstances = ignore_list
    
        local ray = workspace:Raycast(camera.CFrame.Position, (position - camera.CFrame.Position).Unit * 10000, raycast_params)
        return ray and ray.Instance and ray.Instance:IsDescendantOf(target:IsA("Model") and target or target.Parent)
    end;               
    -- Hitscan
    functions.hitscan_is_visible = function(origin, goal, character)
        local params = RaycastParams.new();
        params.FilterDescendantsInstances = {character, local_player.Character and local_player.Character, workspace:FindFirstChild("VFX")};
        local result = workspace:Raycast(origin, goal - origin, params);
        return not result, result;
    end;
    functions.hit_scan = function(character, humanoid_root_part, hit_part)
        if not character or not humanoid_root_part or not local_player.Character then
            return
        end

        local local_head = local_player.Character:FindFirstChild("Head")
        if not local_head then
            return
        end

        local origin = humanoid_root_part.Position
        local is_visible_to_local, _ = functions.hitscan_is_visible(local_head.Position, hit_part.Position, character)
        local is_visible_to_enemy, _ = functions.hitscan_is_visible(hit_part.Position, local_head.Position, local_player.Character)

        if is_visible_to_local and is_visible_to_enemy then
            return nil 
        end

        local magnitude, point = math.huge, nil
        local step_size = 2.78
        local range = 3

        for x = -range, range do
            for y = -range, range do
                for z = -range, range do
                    local new_position = origin + Vector3.new(x * step_size, y * step_size, z * step_size)
                    if new_position ~= origin then
                        local visible_check_local = functions.hitscan_is_visible(local_head.Position, new_position, character)
                        local visible_check_player = functions.hitscan_is_visible(hit_part.Position, new_position, local_player.Character)
                        if visible_check_local and visible_check_player then
                            local distance_between_point = (origin - new_position).Magnitude
                            if distance_between_point < magnitude then
                                magnitude = distance_between_point
                                point = new_position
                            end
                        end
                    end
                end
            end
        end

        return point;
    end;
    -- Hit effects
    functions.add_effect = function(position)
        local new_part = Instance.new("Part")
        new_part.Parent = workspace
        new_part.Size = Vector3.new(0, 0, 0)
        new_part.CanCollide = false
        new_part.Anchored = true
        new_part.Position = position
        new_part.Transparency = 1
    
        local new_effect = Instance.new("ParticleEmitter")
        for k, v in pairs(utility.hit_effects[flags["Hit Effect Type"]]) do
            new_effect[k] = v
        end

        new_effect.Color = ColorSequence.new{ ColorSequenceKeypoint.new(0, flags["Hit Effect Accent"]), ColorSequenceKeypoint.new(1, flags["Hit Effect Accent"]) }
        new_effect.Parent = new_part
    
        task.delay(1, function()
            new_effect:Destroy()
            new_part:Destroy()
        end)
    end    
    -- Create Tracer
    functions.create_tracer = function(from_pos, to_pos)
        if typeof(from_pos) ~= "Vector3" or typeof(to_pos) ~= "Vector3" then return end
    
        task.spawn(function()
            local StartPart = Instance.new("Part", workspace)
            local EndPart = Instance.new("Part", workspace)
            local StartAttachment = Instance.new("Attachment", StartPart)
            local EndAttachment = Instance.new("Attachment", EndPart)
            
            StartPart.Transparency, StartPart.Size, StartPart.Anchored, StartPart.CanCollide, StartPart.Position = 1, Vector3.new(0.05, 0.05, 0.05), true, false, from_pos
            EndPart.Transparency, EndPart.Size, EndPart.Anchored, EndPart.CanCollide, EndPart.Position = 1, Vector3.new(0.05, 0.05, 0.05), true, false, from_pos
    
            local Beam = Instance.new("Beam", workspace)
            Beam.Color, Beam.FaceCamera, Beam.Attachment0, Beam.Attachment1 = ColorSequence.new(flags["Tracer Accent"], Color3.fromRGB(255, 255, 255)), false, StartAttachment, EndAttachment;
            Beam.Width0 = 0.4
            Beam.Width1 = 0.4                      
            Beam.Brightness = 8
            Beam.Transparency = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 0),
                NumberSequenceKeypoint.new(1, 0)
            })
            Beam.LightEmission = 1 
            Beam.LightInfluence = 0 
            Beam.Texture = "rbxassetid://128372145766358" 
            Beam.TextureLength = 4
            Beam.TextureSpeed = 1
            Beam.TextureMode = Enum.TextureMode.Stretch
    
            task.spawn(function()
                tween_service:Create(EndPart, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = to_pos}):Play()
            end)
    
            task.spawn(function()
                tween_service:Create(Beam, TweenInfo.new(2, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextureSpeed = 0.5}):Play()
            end)
    
            delay(flags["Tracer Hit Lifetime"], function()
                local Tween = tween_service:Create(Beam, TweenInfo.new(1), {Width0 = 0, Width1 = 0, TextureSpeed = 0})
                Tween:Play()
                Tween.Completed:Wait()
                Beam:Destroy()
                StartPart:Destroy()
                EndPart:Destroy()
            end)              
        end);
    end;      
    -- Find Target
    functions.find_target = function()
        local mouse_pos, cam_pos = uis:GetMouseLocation(), camera.CFrame.Position
        local closest_entry, closest_part, closest_distance, entry_model = nil, nil, math.huge, nil
        local fallback_parts = {"Head", "UpperTorso", "LowerTorso", "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm", "LeftFoot", "RightFoot", "LeftLowerLeg", "RightLowerLeg", "LeftUpperLeg", "RightUpperLeg", "HumanoidRootPart"}
    
        for _, player in ipairs(players:GetPlayers()) do
            if player ~= local_player then
                local char = player.Character
                if char and char:FindFirstChild("Humanoid") and char.Humanoid.Health > 0 then
                    local ignore_team_check = char and char:FindFirstChild("TeamHighlight") or false;
                    local ignore_safezone = player and player:GetAttribute("Safezone") == true or player:GetAttribute("SafeZone") == true or false;

                    if not ignore_team_check and not ignore_safezone then
                        local target_part = nil
                        local p = char:FindFirstChild(flags["Aimbot Bone"])
                        if p and (not flags["Visible Check"] or functions.is_visible(p)) then
                            target_part = p;
                        end;

                        if not target_part then
                            for _, name in ipairs(fallback_parts) do
                                local f = char:FindFirstChild(name)
                                if f and (not flags["Visible Check"] or functions.is_visible(f)) then
                                    target_part = f
                                    break
                                end
                            end
                        end;

                        if target_part then
                            local screen_pos, on_screen = camera:WorldToViewportPoint(target_part.Position)
                            local dist = (Vector2.new(screen_pos.X, screen_pos.Y) - mouse_pos).Magnitude
                            local target_dist = (target_part.Position - cam_pos).Magnitude

                            local max_dist = math.huge
                            if flags["Enable FOV"] then
                                local fov_radius = flags["FOV Radius"]
                                max_dist = fov_radius / math.tan(math.rad(camera.FieldOfView / 2))
                            end

                            local in_fov = on_screen and dist <= max_dist
                            local in_max_distance = target_dist <= (flags["Aimbot Max Distance"] or math.huge)
                            
                            if in_fov and in_max_distance then
                                if dist < closest_distance then
                                    closest_entry, closest_part, closest_distance, entry_model = player, target_part, dist, char
                                end
                            end
                        end
                    end
                end
            end
        end
        return closest_entry, closest_part, closest_distance, entry_model
    end;  
    -- Barrel End Point
    functions.barrel_endpoint = function()
        for _, v in ipairs(local_char:GetDescendants()) do
            if (v:IsA("Part") and v.Name == "FlashPart" and not v:FindFirstAncestor("HolsterModel")) then
                return v.CFrame.Position;
            end
        end
    end;        
    functions.barrel_endpoint2 = function()
        for _, v in ipairs(workspace:WaitForChild("VFX"):WaitForChild("VMs"):GetDescendants()) do
            if v:IsA("Part") and v.Name == "FlashPart" then
                return v.Position
            end
        end
    end; 
    -- Get Equipped Item
    functions.get_equipped_item = function()
        local character = local_char
        if (character and character:FindFirstChild("InventoryController")) then
            local inventory_controller = character.InventoryController
            local equip_controller = character.EquipController
            local fetch_table = inventory_controller.Fetch:Invoke()
            if (fetch_table and fetch_table.Toolbar and equip_controller:GetAttribute("Equipped")) then
                local equipped_id = equip_controller:GetAttribute("Equipped")
                local equipped_tool = fetch_table.Toolbar[equipped_id]
                if (equipped_tool and typeof(equipped_tool) == "table") then
                    local weapon_id = equipped_tool.ID
                    local weapon_info = items_table[weapon_id]
                    if weapon_info and weapon_info.Name then
                        local weapon_name = weapon_info.Name
                        local weapon_data = toolinfo_table[weapon_name]
                        if weapon_data then
                            return weapon_name, weapon_data;
                        end
                    end
                end
            end
        end
        return nil, nil;
    end;
    functions.has_item = function()
        local name, data = functions.get_equipped_item();
        if (data and data.Bullet and type(data.Bullet.Speed) == "number" and type(data.Bullet.Gravity) == "number") then
            return true;
        end;
        return false;
    end;    
    -- Prediction 
    functions.prediction = function(target_part, humanoid, gravity, speed, enabled)
        if (not target_part or not target_part.Position) then return end
        if (not gravity or not speed) then return end
        if (not enabled or not humanoid) then return target_part.Position, 0, Vector3.zero end
    
        local drop = 0
        local dist = (target_part.Position - camera.CFrame.Position).Magnitude
        local t_time = dist / speed
    
        if table.find(flags["Aimbot Method"], "Aimbot") then        
            drop = -0.5 * gravity * -160 * t_time * t_time
        elseif table.find(flags["Aimbot Method"], "Silent Aim") then
            drop = -0.5 * gravity * -195 * t_time * t_time
        end
    
        if (drop ~= drop) then drop = 0 end
    
        local predpos
        local humanoid_velocity = humanoid:GetMoveVelocity();
        local playerpos = target_part.Position + Vector3.new(0, drop, 0);
        local clamped_player_velocityx = math_clamp(target_part.Velocity.X, -26, 26);
        local clamped_player_velocityz = math_clamp(target_part.Velocity.Z, -26, 26);

        if target_part.Velocity.Y < -100 or target_part.Velocity.X > 1000 then
            predpos = playerpos + Vector3.new(humanoid_velocity.X * 1.7, 0, humanoid_velocity.Z * 1.7) * t_time;
        else
            predpos = playerpos + Vector3.new(clamped_player_velocityx, 0, clamped_player_velocityz) * t_time;
        end;
        
        return predpos, drop, predpos;
    end;     
    -- Boundings
    functions.get_boundings = function(model)
        local hrp = model:FindFirstChild("HumanoidRootPart");
        if hrp then
            local cframe, size = model:GetBoundingBox();
            size = Vector3.new(math.min(size.X, 2.5), math.min(size.Y, 6), math.min(size.Z, 5));
            return hrp.CFrame, size, hrp.Position;
        end;
        return nil;
    end;
    functions.get_boundings2 = function(model)
        local cframe, size = model:GetBoundingBox()
        return cframe, size, cframe.Position
    end;   
    --[[local vertices = {
        { -0.5, -0.5, -0.5 }, { -0.5, 0.5, -0.5 }, { 0.5, -0.5, -0.5 }, { 0.5, 0.5, -0.5 },
        { -0.5, -0.5, 0.5 }, { -0.5, 0.5, 0.5 }, { 0.5, -0.5, 0.5 }, { 0.5, 0.5, 0.5 }
    };
    functions.get_boundings = function(model)
        local min, max = Vector3.new(math.huge, math.huge, math.huge), Vector3.new(-math.huge, -math.huge, -math.huge)
        for _, part in ipairs(model:GetChildren()) do
            if part:IsA("BasePart") then
                local cf, sz = part.CFrame, part.Size
                for _, v in ipairs(vertices) do
                    local pt = cf:PointToWorldSpace(Vector3.new(v[1]*sz.X*0.5, v[2]*sz.Y, v[3]*sz.Z*1.5))
                    min = Vector3.new(math.min(min.X, pt.X), math.min(min.Y, pt.Y), math.min(min.Z, pt.Z))
                    max = Vector3.new(math.max(max.X, pt.X), math.max(max.Y, pt.Y), math.max(max.Z, pt.Z))
                end
            end
        end
        if min == Vector3.new(math.huge, math.huge, math.huge) then return end
        local center = (min + max) / 2
        return CFrame.new(center), max - min, center
    end]]
    -- Get Item
    functions.get_item = function(Character)
        for _, value in pairs(Character:GetChildren()) do
            if value.Name ~= "HolsterModel" and value:IsA("Model") and value.Name ~= "Hair" and (value:FindFirstChild("Detail") or value:FindFirstChild("Main") or value:FindFirstChild("Handle") or value:FindFirstChild("Attachments") or value:FindFirstChild("ArrowAttach") or value:FindFirstChild("Attach")) and value.PrimaryPart then
                return value.Name;
            end;
        end;
        return "None";
    end;
    functions.get_tool_icon = function(Character)
        for _, value in pairs(Character:GetChildren()) do
            if value.Name ~= "HolsterModel" and value:IsA("Model") and value.Name ~= "Hair" and (value:FindFirstChild("Detail") or value:FindFirstChild("Main") or value:FindFirstChild("Handle") or value:FindFirstChild("Attachments") or value:FindFirstChild("ArrowAttach") or value:FindFirstChild("Attach")) and value.PrimaryPart then
                for _, item in ipairs(items_table) do
                    if item.Name == value.Name and item.Image then
                        if type(item.Image) == "table" then
                            for variant, assetId in pairs(item.Image) do
                                return assetId;
                            end;
                        else
                            return item.Image;
                        end;
                    end;
                end;
            end;
        end;
        return nil;
    end;
    -- Get Armor
    functions.get_armor_icon = function(Character)
        local icons = {};
    
        for _, child in ipairs(Character:GetChildren()) do
            if child and child.Name then
                local armorNumber, skinName = child.Name:match("Armor_(%d+)/(.*)");
                if armorNumber then
                    local key = tonumber(armorNumber);
                    if key then
                        local item = items_table[key]
                        if item and item.Type == "Armor" and item.Image then
                            if type(item.Image) == "table" then
                                if skinName and item.Image[skinName] then
                                    table.insert(icons, item.Image[skinName]);
                                elseif item.Image.Default then
                                    table.insert(icons, item.Image.Default);
                                end
                            elseif type(item.Image) == "string" then
                                table.insert(icons, item.Image);
                            end
                        end
                    end
                end
            end
        end;
    
        if #icons > 0 then return icons end;
        return nil;
    end; 
    -- Manipulation
    local raycast_params = RaycastParams.new()
    raycast_params.FilterType = Enum.RaycastFilterType.Blacklist
    local filters = {}
    if (workspace:FindFirstChild("VFX") and workspace.VFX:IsA("Folder")) then
        table.insert(filters, workspace.VFX);
    end;
    raycast_params.FilterDescendantsInstances = filters;

	local vectors = {
		Vector3.zero, -- none
		Vector3.new(1, 0, 0), -- big right
		Vector3.new(-1, 0, 0), -- big left
		Vector3.new(0, 0, 1), -- big forward
		Vector3.new(0, 0, -1), -- big backward
		Vector3.new(0, 1, 0), -- big up
		Vector3.new(0, -1, 0), -- big down
		
		Vector3.new(1 / 2, 0, 0), -- small right
		Vector3.new(-1 / 2, 0, 0), -- small left
		Vector3.new(0, 0, 1 / 2), -- small forward
		Vector3.new(0, 0, -1 / 2), -- small backward
		Vector3.new(0, 1 / 2, 0), -- small up
		Vector3.new(0, -1 / 2, 0), -- small down
	
		Vector3.new(1 / 2, 1 / 2, 0), -- small right up
		Vector3.new(1 / 2, -1 / 2, 0), -- small right down
		Vector3.new(-1 / 2, 1 / 2, 0), -- small left up
		Vector3.new(-1 / 2, -1 / 2, 0), -- small left down
		Vector3.new(0, 1 / 2, 1 / 2), -- small forward up
		Vector3.new(0, -1 / 2, 1 / 2), -- small forward down
		Vector3.new(0, 1 / 2, -1 / 2), -- small backward up
		Vector3.new(0, -1 / 2, -1 / 2), -- small backward down
	};
    
    functions.manipulated_pos = function(origin, target, part, enabled)
        if not (enabled and target and part and origin) then return end
        local target_part = target:FindFirstChild("HumanoidRootPart") or target.PrimaryPart
        if not target_part then return end
    
        local local_char = local_player.Character or local_player.CharacterAdded:Wait()
        local local_head_y = local_char:FindFirstChild("Head") and local_char.Head.Position.Y or origin.Y
        local best, min_dist = nil, math.huge
        local pos = part.Position
        local diff = pos - origin
    
        for _, v in ipairs(vectors) do
            local dx = v.X ~= 0 and math.clamp(math.abs(diff.X), 0, 7.5) or 0
            local dy = v.Y ~= 0 and math.clamp(math.abs(diff.Y), 0, 7.5) or 0
            local dz = v.Z ~= 0 and math.clamp(math.abs(diff.Z), 0, 6) or 0 
            local raw_mod = origin + Vector3.new(v.X * dx, v.Y * dy, v.Z * dz)
            local mod = Vector3.new(raw_mod.X, math.max(raw_mod.Y, local_head_y), raw_mod.Z)
            local to_mod_dir = mod - origin
            local to_target_dir = pos - mod
    
            if to_mod_dir.Magnitude > 0.01 and to_target_dir.Magnitude > 0.01 then
                local ray1 = workspace:Raycast(origin, to_mod_dir.Unit * (to_mod_dir.Magnitude + 0.1), raycast_params)
                local ray2 = workspace:Raycast(mod, to_target_dir.Unit * (to_target_dir.Magnitude + 0.1), raycast_params)
                if not ray1 and (not ray2 or (ray2.Instance and ray2.Instance:IsDescendantOf(target))) then
                    local dist = to_mod_dir.Magnitude
                    if dist < min_dist then
                        best, min_dist = mod, dist
                    end
                end
            end
        end
    
        return best;
    end;          
end;    

do 
    esp = {
        player_cache = {},
        drawing_cache = {},

        childadded_connections = {},
        childremoved_connections = {},
        functions = {},
    };
    do -- ESP
        esp.update_player_ESP = function(player)
            if (player.Name == local_player.Name) then
                return;
            end;
            --
            local esp_holder = framework.modules.instance_manager.new("ScreenGui", { Parent = cloneref(gethui()), Name = "esp_holder", DisplayOrder = 0 });
            local arrows_holder = framework.modules.instance_manager.new("ScreenGui", { Parent = cloneref(gethui()), Name = "arrows_holder", IgnoreGuiInset = true });
            local drawings = {
                -- arrow
                arrow = framework.modules.instance_manager.new("ImageLabel", {
                    Parent = arrows_holder,
                    BackgroundTransparency = 1,
                    AnchorPoint = Vector2.new(0.5, 0.5)
                }),
                -- Text
                name = framework.modules.instance_manager.new("TextLabel", {
                    Visible = false,
                    Parent = esp_holder,
                    BackgroundTransparency = 1,
                    TextStrokeTransparency = 0,
                    TextStrokeColor3 = color3_fromrgb(0, 0, 0),
                    FontFace = fonts.proggytiny,
                    AnchorPoint = Vector2.new(0.5, 0),
                    RichText = true,
                    TextSize = 9,
                    TextXAlignment = Enum.TextXAlignment.Center,
                    TextYAlignment = Enum.TextYAlignment.Top
                }),
                name_stroke = framework.modules.instance_manager.new("UIStroke", {
                    Thickness = 1,
                    LineJoinMode = Enum.LineJoinMode.Round,
                    ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual,
                    Color = Color3.fromRGB(0, 0, 0)
                }),
                flag1 = framework.modules.instance_manager.new("TextLabel", {
                    Parent = esp_holder,
                    BackgroundTransparency = 1,
                    TextStrokeTransparency = 0,
                    TextStrokeColor3 = Color3.fromRGB(0, 0, 0),
                    FontFace = fonts.smallest_pixel,
                    RichText = true,
                    TextSize = 9,
                    AnchorPoint = Vector2.new(0.5, 0),
                    TextXAlignment = Enum.TextXAlignment.Center
                }),
                flag1_stroke = framework.modules.instance_manager.new("UIStroke", {
                    Thickness = 1,
                    LineJoinMode = Enum.LineJoinMode.Round,
                    ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual,
                    Color = Color3.fromRGB(0, 0, 0)
                }),
                -- box
                box = framework.modules.instance_manager.new("Frame", {
                    Parent = esp_holder,
                    BackgroundTransparency = 1,
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    ZIndex = -999
                }),
                box2 = framework.modules.instance_manager.new("Frame", {
                    Parent = esp_holder,
                    BackgroundTransparency = 1,
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    ZIndex = 999
                }),
                Outline = framework.modules.instance_manager.new("UIStroke", {
                    Color = Color3.fromRGB(0, 0, 0),
                    Thickness = 3,
                    Transparency = 0,
                    LineJoinMode = Enum.LineJoinMode.Miter,
                    Enabled = true
                }), 
                Outline2 = framework.modules.instance_manager.new("UIStroke", {
                    Thickness = 1,
                    Enabled = true,
                    LineJoinMode = Enum.LineJoinMode.Miter
                }),
                -- Healthbar
                BehindHealthbar = framework.modules.instance_manager.new("Frame", {
                    Parent = esp_holder,
                    ZIndex = -1,
                    BackgroundColor3 = Color3.fromRGB(0, 0, 0),
                    BackgroundTransparency = 0,
                    BorderSizePixel = 1,
                    BorderColor3 = Color3.fromRGB(0, 0, 0)
                }),
                Healthbar = framework.modules.instance_manager.new("Frame", {
                    Parent = esp_holder,
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    BackgroundTransparency = 0,
                    BorderSizePixel = 0
                }),
                HealthbarGradient = framework.modules.instance_manager.new("UIGradient", {
                    Enabled = true,
                    Rotation = -90
                }),
                -- Images
                belt_icon_draw = framework.modules.instance_manager.new("ImageLabel", {
                    Visible = false,
                    Parent = esp_holder, 
                    BackgroundTransparency = 0.8, 
                    BorderColor3 = Color3.fromRGB(0, 0, 0), 
                    BackgroundColor3 = Color3.fromRGB(0, 0, 0), 
                    BorderSizePixel = 0, 
                    Size = UDim2.new(0, 45, 0, 45),
                    AnchorPoint = Vector2.new(0.5, 0.5),
                }), 
                belt_icon_corner = framework.modules.instance_manager.new("UICorner", { 
                    CornerRadius = udim_new(0, 8), 
                });
                belt_icon_list = framework.modules.instance_manager.new("UIListLayout", { 
                    FillDirection = Enum.FillDirection.Horizontal,
                    HorizontalAlignment = Enum.HorizontalAlignment.Center,
                    Padding = UDim.new(0, 0)  
                }),
            };

            local linepos = function(frame, from, to, thickness, plrpos)
                local c = (from + to) / 2
                local o = to - from + Vector2.new(0, 1)
                local d = (plrpos - camera.CFrame.p).Magnitude
                frame.Position = UDim2.new(0, c.X, 0, c.Y)
                frame.Rotation = math.atan2(o.Y, o.X) * 180 / math.pi
                frame.Size = UDim2.new(0, o.Magnitude, 0, thickness)
            end;

            local function createline()
                local frame = Instance.new("Frame", esp_holder)
                frame.AnchorPoint = Vector2.new(0.5, 0.5)
                frame.ZIndex = -999
                frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
                frame.BorderSizePixel = 0
                frame.Visible = false
                return frame
            end;  

            drawings.name_stroke.Parent = drawings.name;
            drawings.flag1_stroke.Parent = drawings.flag1;
            drawings.HealthbarGradient.Parent = drawings.Healthbar;
            drawings.belt_icon_list.Parent = drawings.belt_icon_draw;
            drawings.belt_icon_corner.Parent = drawings.belt_icon_draw;
            drawings.Outline.Parent = drawings.box;
            drawings.Outline2.Parent = drawings.box2;

            table.insert(esp.drawing_cache, {
                name = drawings.name,
                belt_icon_draw = drawings.belt_icon_draw,
                box = drawings.box,
                box2 = drawings.box2,
                flag1 = drawings.flag1,
                healthbar = drawings.BehindHealthbar,
                healthbar2 = drawings.Healthbar,
                esp_holder = esp_holder,
                arrow = drawings.arrow,
                arrows_holder = arrows_holder,
                update_conn = nil,
                player = player
            });

            local viewangle_parts = { Head = createline() };       
            local chams;
            do -- create chams
                chams = Instance.new("Highlight", player.Character);
                chams.Enabled = false;
            end

            local bounds;
            local function destroy_esp()
                bounds = { functions.get_boundings(player.Character) };

                local steps = 25;
                for i = 1, steps do
                    for _, v in ipairs({"belt_icon_draw", "name", "Outline", "Outline2", "flag1", "name_stroke", "BehindHealthbar", "Healthbar", "arrow"}) do 
                        local drawing = drawings[v];
                        if drawing:IsA("TextLabel") then
                            drawing.TextStrokeTransparency = i / steps;
                            drawing.TextTransparency = i / steps;
                        elseif drawing:IsA("ImageLabel") then
                            drawing.ImageTransparency = i / steps;
                        elseif drawing:IsA("UIStroke") then
                            drawing.Transparency = i / steps;
                        elseif drawing:IsA("Frame") then
                            drawing.BackgroundTransparency = i / steps;
                        end;
                    end;
                    wait(1 / steps);
                end;

                bounds = nil;

                for _, v in ipairs({"belt_icon_draw", "name", "box", "box2", "flag1", "BehindHealthbar", "Healthbar", "arrow"}) do
                    drawings[v].Visible = false; 
                end;
                for _, part in pairs(viewangle_parts) do
                    part.Visible = false;
                end;
                chams:Destroy();
                esp_holder:Destroy();
                arrows_holder:Destroy();
            end;

            do -- update esp
                local dead_check = false
                local displayed_belt_icons = {}
                local tween = {
                    health_start = 0,
                    health_transition_start = 0,
                    health_transition_old = 0,
                    current_health = 0
                };
                esp.update_esp = LPH_NO_VIRTUALIZE(function()
                    local character = player.Character;
                    local humanoid = character and character:FindFirstChild("Humanoid");
                    local hrp = character and character:FindFirstChild("HumanoidRootPart");
                    local head = character and character:FindFirstChild("Head");

                    if humanoid and (humanoid.Health <= 0 and not dead_check) then
                        dead_check = true;
                        pcall(destroy_esp);
                        return;
                    end;           

                    local cframe, size, position;
                    if bounds then
                        cframe, size, position = unpack(bounds);
                    else
                        cframe, size, position = functions.get_boundings(character);
                    end;

                    do -- ESP   
                        if (character and humanoid and hrp) then 
                            local max_distance;
                            if position then max_distance = (position - camera.CFrame.Position).Magnitude end;
                            if max_distance and flags["ESP Distance"] and max_distance < flags["ESP Distance"] then
                                local ignore_team_check = character and character:FindFirstChild("TeamHighlight") or false

                                if (not ignore_team_check) then

                                    local pos, on_screen = camera:WorldToScreenPoint(position)
                                    pos = Vector3.new(pos.X, pos.Y + 1, pos.Z)
                                    local height = math.tan(math.rad(camera.FieldOfView / 2)) * 2 * pos.Z
                                    local zoom_factor = math.clamp(60 / camera.FieldOfView, 1, 1.25)
                                    local scale = vec2_new(((viewport_size.Y / height) * size.X) * zoom_factor, ((viewport_size.Y / height) * size.Y) * zoom_factor)
                                    local box_side = pos.X + (scale.X / 2);
                                    local box_top = pos.Y - (scale.Y / 2);
                                    local item = functions.get_item(character);

                                    do -- Fonts
                                        for _, v in ipairs({"name", "flag1"}) do
                                            local current_font = drawings[v].FontFace;
                                            local new_font, new_size;

                                            if flags["ESP Fonts"] == "Pixel" then
                                                new_font, new_size = fonts.smallest_pixel, 9;
                                            elseif flags["ESP Fonts"] == "Templeos" then
                                                new_font, new_size = fonts.templeos, 6;
                                            end;

                                            if new_font and current_font ~= new_font then
                                                drawings[v].FontFace = new_font;
                                                drawings[v].TextSize = new_size;
                                            end;
                                        end;
                                    end;

                                    do -- Arrows
                                        if (not on_screen) and flags["Enable Arrows"] then
                                            drawings.arrow.Visible = true;
                                            drawings.arrow.Size = UDim2.new(0, flags["Arrow Size"], 0, flags["Arrow Size"]);
                                            drawings.arrow.ImageColor3 = flags["Arrows Accent"];

                                            local center = flags["Arrows From"] == "Screen" and viewport_size / 2 or uis:GetMouseLocation();
                                            local proj = camera.CFrame:PointToObjectSpace(hrp.Position);
                                            local angle = math.atan2(proj.Z, proj.X);
                                            local circularX = center.X + math.cos(angle) * flags["Arrow Radius"];
                                            local circularY = center.Y + math.sin(angle) * flags["Arrow Radius"];

                                            drawings.arrow.Image = (flags["Arrow Points"] == "Three") and "http://www.roblox.com/asset/?id=282305485" or "http://www.roblox.com/asset/?id=15000587389";
                                            drawings.arrow.Position = UDim2.new(0, circularX - drawings.arrow.Size.X.Offset / 2, 0, circularY - drawings.arrow.Size.Y.Offset / 2);
                                            drawings.arrow.Rotation = math.deg(angle) + 90;
                                            drawings.arrow.ImageTransparency = (math.sin(tick() * 2) * 0.5 + 0.5);
                                        else
                                            drawings.arrow.Visible = false;
                                        end;
                                    end;

                                    do -- Chams
                                        if (on_screen) and flags["Enable Chams"] then
                                            chams.Enabled = true;
                                            chams.DepthMode = flags["Chams Visible Check"] == "Always Visible" and Enum.HighlightDepthMode["AlwaysOnTop"] or Enum.HighlightDepthMode["Occluded"];
                                            chams.FillTransparency = flags["Chams Inline Opacity"] / 100;
                                            chams.OutlineTransparency = flags["Chams Outline Opacity"] / 100;
                                            chams.FillColor = chams.FillColor:Lerp((flags["Highlight Target"] and target.highlight_player == player and flags["Highlight Accent"]) and flags["Highlight Accent"] or flags["Chams Inline Accent"], 0.02);
                                            chams.OutlineColor = chams.OutlineColor:Lerp((flags["Highlight Target"] and target.highlight_player == player and flags["Highlight Accent"]) and flags["Highlight Accent"] or flags["Chams Outline Accent"], 0.02);
                                        else
                                            chams.Enabled = false;
                                        end;
                                    end;

                                    do -- Texts
                                        do -- Names & Distance
                                            if (on_screen) then
                                                local is_target = (flags["Highlight Target"] and target.highlight_player == player and flags["Highlight Accent"])
                                                local name_color = (is_target and flags["Highlight Accent"]) or flags["Text Color"]
                                                local line = "";

                                                if flags["Enable Name"] then
                                                    line = player.DisplayName
                                                    drawings.name.TextColor3 = drawings.name.TextColor3:Lerp(name_color, 0.02)
                                                end

                                                if flags["Enable Distance"] then
                                                    local dist_text = string.format("[%d]", math_floor(max_distance))
                                                    if line ~= "" then
                                                        line = line .. " " .. dist_text
                                                    else
                                                        line = dist_text
                                                    end
                                                    drawings.name.TextColor3 = drawings.name.TextColor3:Lerp(name_color, 0.02)
                                                end

                                                drawings.name.Text = line
                                                drawings.name.Visible = true
                                                drawings.name.Position = UDim2.new(0, pos.X, 0, pos.Y - scale.Y / 2 - 9)
                                            else
                                                drawings.name.Visible = false
                                            end
                                        end;

                                        do -- Flags
                                            if (flags["Enable Flags"] and on_screen and hrp) then
                                                local texts = {}

                                                if table.find(flags["Flag Type"], "Weapon") then
                                                    local weapon = item or ""
                                                    if weapon ~= "" then
                                                        local c = flags["Text Color"]
                                                        local hex = string.format("#%02X%02X%02X", c.R * 255, c.G * 255, c.B * 255)
                                                        table.insert(texts, '<font color="' .. hex .. '">' .. weapon .. '</font>')
                                                    end
                                                end

                                                if flags["Manipulation"] and table.find(flags["Flag Type"], "Manipulated") and manipulation_pos and entry and entry.Name == player.Name then
                                                    table.insert(texts, '<font color="#FF0000">manip</font>')
                                                end

                                                if table.find(flags["Flag Type"], "Reloading") then
                                                    local one, two = hrp:FindFirstChild(item .. "MagIn"), hrp:FindFirstChild(item .. "MagOut")
                                                    if (one and one:IsA("Sound") and one.Playing) or (two and two:IsA("Sound") and two.Playing) then
                                                        table.insert(texts, '<font color="#FFFF00">reload</font>')
                                                    end
                                                end

                                                if table.find(flags["Flag Type"], "Healing") then
                                                    local one, two = hrp:FindFirstChild("Small MedkitHeal"), hrp:FindFirstChild("BandageBandageSound")
                                                    if (one and one:IsA("Sound") and one.Playing) or (two and two:IsA("Sound") and two.Playing) then
                                                        table.insert(texts, '<font color="#00FF00">heal</font>')
                                                    end
                                                end

                                                if player:GetAttribute("Safezone") == true or player:GetAttribute("SafeZone") == true then
                                                    table.insert(texts, '<font color="#00FF00">Safezone</font>')
                                                end

                                                local count = #texts
                                                local y_offset = 3
                                                if count == 2 then
                                                    y_offset = 7
                                                elseif count == 3 then
                                                    y_offset = 11
                                                elseif count >= 4 then
                                                    y_offset = 14
                                                end

                                                local text = table.concat(texts, "<br/>")
                                                drawings.flag1.Visible = text ~= ""
                                                drawings.flag1.Text = text
                                                drawings.flag1.Position = UDim2.new(0, pos.X, 0, pos.Y + scale.Y / 2 + y_offset + 7)
                                            else
                                                drawings.flag1.Visible = false
                                            end
                                        end
                                    end
                                    
                                    do -- Boxes
                                        if (on_screen) and flags["Enable Boxes"] then
                                            drawings.box.Size = UDim2.new(0, scale.X - 1, 0, scale.Y - 1);
                                            drawings.box2.Size = UDim2.new(0, scale.X + 1, 0, scale.Y + 1);

                                            drawings.box.Position = UDim2.new(0, pos.X - (scale.X / 2), 0, pos.Y - (scale.Y / 2) + 3);
                                            drawings.box2.Position = UDim2.new(0, pos.X - (scale.X / 2) - 1, 0, pos.Y - (scale.Y / 2) + 2);

                                            if (flags["Boxes Filled"]) then
                                                drawings.box.BackgroundTransparency = flags["Boxes Filled Opacity"] / 100;
                                                drawings.box.BackgroundColor3 = flags["Filled Boxes Color"];
                                            else
                                                drawings.box.BackgroundTransparency = 1;
                                            end;

                                            drawings.box.Visible = true;
                                            drawings.box2.Visible = true;
                                            drawings.Outline2.Color = drawings.Outline2.Color:Lerp((flags["Highlight Target"] and target.highlight_player == player and flags["Highlight Accent"]) and flags["Highlight Accent"] or flags["Box Color"], 0.02);
                                        else
                                            drawings.box.Visible = false;
                                            drawings.box2.Visible = false;
                                        end;
                                    end;

                                    do -- ViewAngle
                                        if (on_screen) and flags["Enable ViewAngle"] and character and character:FindFirstChild("Head") then
                                            local head_pos = camera:WorldToScreenPoint(character.Head.Position);
                                            local look_dir = character.Head.CFrame.LookVector;
                                            local line_length = flags["ViewAngle Length"];
                                            local end_pos = character.Head.Position + (look_dir * line_length);
                                            local end_point = camera:WorldToScreenPoint(end_pos);
                                            local positions = { Head = Vector2.new(head_pos.X, head_pos.Y), Look = Vector2.new(end_point.X, end_point.Y) };
                                        
                                            for _, part in pairs(viewangle_parts) do
                                                part.BackgroundColor3 = part.BackgroundColor3:Lerp((flags["Highlight Target"] and target.highlight_player == player and flags["Highlight Accent"]) and flags["Highlight Accent"] or flags["View Angle Color"], 0.02)
                                            end;  

                                            for _, part in pairs(viewangle_parts) do
                                                part.BorderSizePixel = 1;
                                            end;
          
                                            if (viewangle_parts.Head) then
                                                linepos(viewangle_parts.Head, positions.Head, positions.Look, 1, character.Head.Position);
                                                for _, part in pairs(viewangle_parts) do
                                                    part.Visible = true;
                                                end;
                                            end;
                                        else
                                            for _, part in pairs(viewangle_parts) do
                                                part.Visible = false;
                                            end;
                                        end;                                                                                                                                                                                                                                                                                      
                                    end;

                                    do -- Belt
                                        if (on_screen and flags["Enable Belt"]) then
                                            local belt_img = functions.get_tool_icon(character)

                                            if belt_img and belt_img ~= "" and not displayed_belt_icons[belt_img] then
                                                local belt_icon_draw = drawings.belt_icon_draw:Clone()
                                                belt_icon_draw.Image = belt_img
                                                belt_icon_draw.ImageColor3 = Color3.fromRGB(255, 255, 255)
                                                belt_icon_draw.Visible = true
                                                belt_icon_draw.Parent = esp_holder
                                                displayed_belt_icons[belt_img] = belt_icon_draw
                                            end

                                            for _, belt_icon in ipairs(esp_holder:GetChildren()) do
                                                if belt_icon:IsA("ImageLabel") and belt_icon.Image ~= "" then
                                                    belt_icon.Visible = true
                                                end
                                            end

                                            local visicons = {}
                                            for _, belt_icon in pairs(esp_holder:GetChildren()) do
                                                if belt_icon:IsA("ImageLabel") and belt_icon.Image ~= "" and belt_icon.Visible then
                                                    table.insert(visicons, belt_icon)
                                                end
                                            end

                                            local iconCount = #visicons
                                            local totalWidth = iconCount * 42
                                            local startX = pos.X - totalWidth / 2 + 20

                                            for i, belt_icon_draw in ipairs(visicons) do
                                                belt_icon_draw.Position = UDim2.new(0, startX + (i - 1) * 42, 0, pos.Y - scale.Y / 2 - 35)
                                            end
                                        else
                                            for _, belt_icon in ipairs(esp_holder:GetChildren()) do
                                                if belt_icon:IsA("ImageLabel") then
                                                    belt_icon.Visible = false
                                                end
                                            end
                                        end
                                    end

                                    do -- Healthbar
                                        if (on_screen) and flags["Enable Healthbar"] and humanoid and humanoid.Health then
                                            local health, max_health = math_floor(humanoid.Health), humanoid.MaxHealth
                                            local health_color = Color3.new(1, 0, 0):lerp(Color3.new(0.7, 0.8, 0), math.clamp(health / max_health, 0, 1))
                                            health_color = health_color:lerp(Color3.new(0, 1, 0), math.clamp((health / max_health - 0.5) * 2, 0, 1))
                                            local health_offset = math_floor((max_health - health) / 10) * 0.1

                                            do -- Healthbar Animation
                                                tween.health_start = tween.health_start or 0
                                                tween.health_transition_start = tween.health_transition_start or health
                                                tween.health_transition_old = tween.health_transition_old or health
                                                tween.current_health = tween.current_health or health

                                                if health ~= tween.health_transition_start then
                                                    tween.health_transition_old, tween.health_transition_start, tween.health_start = tween.current_health, health, tick()
                                                end;
                                            end;

                                            local progress = math.clamp((tick() - tween.health_start) / 0.2, 0, 1)
                                            tween.current_health = tween.health_transition_old + (tween.health_transition_start - tween.health_transition_old) * progress

                                            if progress >= 1 then
                                                tween.current_health, tween.health_transition_old, tween.health_transition_start, tween.health_start = health, health, health, 0
                                            end;

                                            drawings.Healthbar.Visible = true
                                            drawings.BehindHealthbar.Visible = true

                                            local bar_width = 2 --flags["Healthbar Width"]
                                            local bar_height_adjust = 3
                                            local target_height = scale.Y * (tween.current_health / max_health) + bar_height_adjust
                                            local bar_offset = 5 + math.max(0, bar_width)

                                            drawings.Healthbar.Position = UDim2.new(0, pos.X - scale.X / 2 - bar_offset, 0, pos.Y - scale.Y / 2 + scale.Y * (1 - tween.current_health / max_health) + 1)
                                            drawings.BehindHealthbar.Position = UDim2.new(0, pos.X - scale.X / 2 - bar_offset, 0, pos.Y - scale.Y / 2 + 1)
                                            drawings.Healthbar.Size = UDim2.new(0, bar_width, 0, target_height)
                                            drawings.BehindHealthbar.Size = UDim2.new(0, bar_width, 0, scale.Y + bar_height_adjust)

                                            drawings.HealthbarGradient.Rotation = -90
                                            health_offset = math.clamp(health_offset, 0, 1)
                                            drawings.HealthbarGradient.Offset = Vector2.new(0, -health_offset)

                                            if flags["Lerp Health"] then
                                                drawings.HealthbarGradient.Color = ColorSequence.new{ ColorSequenceKeypoint.new(0, health_color), ColorSequenceKeypoint.new(1, health_color) };
                                            else
                                                drawings.HealthbarGradient.Color = ColorSequence.new{
                                                    ColorSequenceKeypoint.new(0, flags["Healthbar Bottom Color"]),
                                                    ColorSequenceKeypoint.new(1, flags["Healthbar Top Color"])
                                                };
                                            end;
                                        else
                                            drawings.Healthbar.Visible = false;
                                            drawings.BehindHealthbar.Visible = false;
                                        end;
                                    end;

                                else
                                    for _, part in pairs(viewangle_parts) do
                                        part.Visible = false;
                                    end;
                                    for _, belt_icon in ipairs(esp_holder:GetChildren()) do
                                        if belt_icon:IsA("ImageLabel") and belt_icon.Image ~= "" then
                                            belt_icon.Visible = false
                                        end
                                    end
                                    chams.Enabled = false;
                                    for _, v in ipairs({"name", "belt_icon_draw", "box", "box2", "flag1", "BehindHealthbar", "Healthbar", "arrow"}) do drawings[v].Visible = false end;
                                end;
                            else
                                for _, part in pairs(viewangle_parts) do
                                    part.Visible = false;
                                end;
                                for _, belt_icon in ipairs(esp_holder:GetChildren()) do
                                    if belt_icon:IsA("ImageLabel") and belt_icon.Image ~= "" then
                                        belt_icon.Visible = false
                                    end
                                end
                                chams.Enabled = false;
                                for _, v in ipairs({"name", "belt_icon_draw", "flag1", "box", "box2", "BehindHealthbar", "Healthbar", "arrow"}) do drawings[v].Visible = false end;
                            end; 
                        else
                            for _, part in pairs(viewangle_parts) do
                                part.Visible = false;
                            end;
                            for _, belt_icon in ipairs(esp_holder:GetChildren()) do
                                if belt_icon:IsA("ImageLabel") and belt_icon.Image ~= "" then
                                    belt_icon.Visible = false
                                end
                            end
                            chams.Enabled = false;
                            for _, v in ipairs({"name", "belt_icon_draw", "flag1", "box", "box2", "BehindHealthbar", "Healthbar", "arrow"}) do drawings[v].Visible = false end;
                        end;
                    end;
                end);
            end;

            local cache = esp.drawing_cache[#esp.drawing_cache];
            cache.update_conn = run_service["RenderStepped"]:Connect((esp.update_esp));
        end;

        esp.remove_player_ESP = function(player)
            for _, cache in ipairs(esp.drawing_cache) do
                if cache.player == player then
                    if cache.update_conn then
                        cache.update_conn:Disconnect();
                    end;
                    cache.esp_holder:Destroy();
                    cache.arrows_holder:Destroy();
                    table.remove(esp.drawing_cache, _);
                    break;
                end;
            end;
        end;

        esp.on_player_added = function(player)
            local connections = {};
            connections.character_added = player.CharacterAdded:Connect(function()
                esp.update_player_ESP(player);
            end);
            connections.character_removing = player.CharacterRemoving:Connect(function()
                esp.remove_player_ESP(player);
            end);

            esp.connection_cache = esp.connection_cache or {}
            table.insert(esp.connection_cache, { player = player, connections = connections });

            if player.Character then
                esp.update_player_ESP(player);
            end;
        end;

        esp.handle_existing_players = function()
            local player_list = players:GetPlayers();
            for i = 1, #player_list do
                local player = player_list[i];
                if player.Name ~= local_player.Name then
                    esp.on_player_added(player);
                end;
            end;
        end;

        players.PlayerAdded:Connect(esp.on_player_added)
        players.PlayerRemoving:Connect(function(player)
            esp.remove_player_ESP(player);
            for i, cache in ipairs(esp.connection_cache) do
                if cache.player == player then
                    for _, conn in pairs(cache.connections) do
                        conn:Disconnect();
                    end;
                    table.remove(esp.connection_cache, i);
                    break;
                end;
            end;
        end);

        esp.handle_existing_players();
    end;

    do -- ENTITY ESP
        local entity_cache = {};
        local function entity_esp(model)
            local misc_holder = framework.modules.instance_manager.new("ScreenGui", { Parent = cloneref(gethui()), Name = "misc_holder" })
            local entities_text = framework.modules.instance_manager.new("TextLabel", { BackgroundTransparency = 1, Size = UDim2.new(0, 100, 0, 20), FontFace = fonts.smallest_pixel, TextSize = 9, TextStrokeTransparency = 0, TextStrokeColor3 = color3_fromrgb(0, 0, 0), RichText = true, Parent = misc_holder })
            local entities_distance = framework.modules.instance_manager.new("TextLabel", { BackgroundTransparency = 1, Size = UDim2.new(0, 100, 0, 20), FontFace = fonts.smallest_pixel, TextSize = 9, TextStrokeTransparency = 0, TextStrokeColor3 = color3_fromrgb(0, 0, 0), RichText = true, Parent = misc_holder })
            local entities_circle = framework.modules.instance_manager.new("Frame", { BackgroundTransparency = 0, BackgroundColor3 = color3_fromrgb(255, 255, 255), Size = UDim2.new(0, 4, 0, 4), AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.new(0.5, 0, 0.5, 0), Parent = misc_holder })  
            local uicorner = framework.modules.instance_manager.new("UICorner", { CornerRadius = UDim.new(1, 1), Parent = entities_circle })  
            local uistroke = framework.modules.instance_manager.new("UIStroke", { Thickness = 1, Color = color3_fromrgb(0, 0, 0), ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual, Parent = entities_circle })
            entity_cache[model] = { model = model, misc_holder = misc_holder, entities_text = entities_text, entities_distance = entities_distance, entities_circle = entities_circle }
        end;
        --
        local function update_esp()
            for model, data in pairs(entity_cache) do
                if model and model.Parent and model:IsA("Model") then
                    if flags["Enable Misc ESP"] then
                        local cframe, size, position = functions.get_boundings2(model)
                        local pos, on_screen = camera:WorldToScreenPoint(position)
                        local height = math.tan(math.rad(camera.FieldOfView / 2)) * 2 * pos.Z
                        local max_distance = (position - camera.CFrame.Position).Magnitude / 3.57
                        local scale = Vector2.new((camera.ViewportSize.Y / height) * size.X, (camera.ViewportSize.Y / height) * size.Y)
                        local fixed_name = model.Name:gsub("_", " ")
                        local color = flags[fixed_name .. " Accent"] or color3_new(1, 1, 1)

                        if model.Parent == drops and table.find(flags["Node Type"], "Drops") then
                            fixed_name = model.Name;
                        end;

                        if (on_screen and flags["Enable Misc ESP"] and flags["Display Names"] and max_distance <= flags["Max Misc ESP Distance"]) and (model.Parent == drops and table.find(flags["Node Type"], "Drops") or table.find(flags["Node Type"], fixed_name)) then
                            data.entities_text.Visible = true
                            data.entities_text.Text = fixed_name
                            data.entities_text.TextColor3 = color
                            data.entities_text.Position = UDim2.new(0, pos.X - (data.entities_text.Size.X.Offset / 2), 0, pos.Y - (scale.Y / 2) - 20)
                        else
                            data.entities_text.Visible = false
                        end

                        if (on_screen and flags["Enable Misc ESP"] and flags["Display Icons"] and max_distance <= flags["Max Misc ESP Distance"]) and (model.Parent == drops and table.find(flags["Node Type"], "Drops") or table.find(flags["Node Type"], fixed_name)) then
                            data.entities_circle.Visible = true
                            data.entities_circle.BackgroundColor3 = color
                            data.entities_circle.Position = UDim2.new(0, pos.X, 0, pos.Y - (scale.Y / 2) - 25)
                        else
                            data.entities_circle.Visible = false
                        end

                        if (on_screen and flags["Enable Misc ESP"] and flags["Display Distance"] and max_distance <= flags["Max Misc ESP Distance"]) and (model.Parent == drops and table.find(flags["Node Type"], "Drops") or table.find(flags["Node Type"], fixed_name)) then
                            data.entities_distance.Visible = true
                            data.entities_distance.Text = string.format("%dM", math.floor(max_distance))
                            data.entities_distance.TextColor3 = flags["Display Distance Accent"]
                            data.entities_distance.Position = UDim2.new(0, pos.X - (data.entities_text.Size.X.Offset / 2), 0, pos.Y - (scale.Y / 2) - 10)
                        else
                            data.entities_distance.Visible = false
                        end
                    else
                        data.entities_text.Visible = false
                        data.entities_distance.Visible = false
                        data.entities_circle.Visible = false
                    end
                else
                    if data.misc_holder then data.misc_holder:Destroy() end
                    entity_cache[model] = nil
                end
            end
        end
        run_service.Heartbeat:Connect(update_esp);

        local function scan_entities(category)
            if not category or not category:IsA("Folder") then return end 

            for _, entity in ipairs(category:FindFirstChild("Nodes") and category.Nodes:GetChildren() or {}) do
                if entity:IsA("Model") and not entity_cache[entity] then entity_esp(entity) end
            end
        
            for _, entity in ipairs(category:FindFirstChild("Plants") and category.Plants:GetChildren() or {}) do
                if entity:IsA("Model") and not entity_cache[entity] then entity_esp(entity) end
            end
        
            for _, entity in ipairs(category:FindFirstChild("Bodybags") and category.Bodybags:GetChildren() or {}) do
                if entity:IsA("Model") and not entity_cache[entity] then entity_esp(entity) end
            end
        
            for _, entity in ipairs(category:FindFirstChild("Drops") and category.Drops:GetChildren() or {}) do
                if entity:IsA("Model") and not entity_cache[entity] then entity_esp(entity) end
            end
        
            category.ChildAdded:Connect(function(child)
                if child:IsA("Model") and not entity_cache[child] then entity_esp(child) end
            end)
        end
        
        scan_entities(nodes)
        scan_entities(plants)
        scan_entities(bodybags)
        scan_entities(drops)        
    end
end;

local fov_alpha, fov_circle, crosshair, snap_lines, mod_list, prediction_dot, on_screen, armor_bar = 1, {}, {}, {}, {}, {}, {}, {};
do -- draw 
    do -- inventory viewer
        local inventory_view = framework.modules.instance_manager.new("ScreenGui", { Parent = cloneref(gethui()), IgnoreGuiInset = true, DisplayOrder = 0 })
        local icon_holder = framework.modules.instance_manager.new("Frame", { BackgroundTransparency = 1, Size = UDim2.new(0, 900, 0, 75), BackgroundColor3 = Color3.fromRGB(9, 9, 9), AnchorPoint = Vector2.new(0.5, 0.5), BorderSizePixel = 0, ZIndex = 99, Parent = inventory_view })
        framework.modules.instance_manager.new("UIListLayout", { Parent = icon_holder, SortOrder = Enum.SortOrder.LayoutOrder, FillDirection = Enum.FillDirection.Horizontal, HorizontalAlignment = Enum.HorizontalAlignment.Center });

        -- returns
        armor_bar.inventory_view = inventory_view
        armor_bar.icon_holder = icon_holder
    end;
    -- onscreen
    do
        local onscreen = framework.modules.instance_manager.new("ScreenGui", { Parent = cloneref(gethui()), DisplayOrder = 1, IgnoreGuiInset = true, });
        local flyhack = framework.modules.instance_manager.new("TextLabel", { Visible = false, Text = "FlyHack", TextColor3 = Color3.fromRGB(255, 255, 0), BackgroundTransparency = 1, TextSize = 9, FontFace = fonts.smallest_pixel, Size = UDim2.new(0, 100, 0, 100), Position = UDim2.new(0, 40, 0, 6), TextStrokeTransparency = 0, TextStrokeColor3 = color3_fromrgb(0, 0, 0), AnchorPoint = Vector2.new(0.5, 0.5), Parent = onscreen, ZIndex = 100 })
        --local debugcamera = framework.modules.instance_manager.new("TextLabel", { Text = "Debug Camera", TextColor3 = Color3.fromRGB(0, 255, 255), BackgroundTransparency = 1, TextSize = 9, FontFace = fonts.smallest_pixel, Size = UDim2.new(0, 100, 0, 100), Position = UDim2.new(0, 40, 0, 6), TextStrokeTransparency = 0, TextStrokeColor3 = color3_fromrgb(0, 0, 0), AnchorPoint = Vector2.new(0.5, 0.5), Parent = onscreen, ZIndex = 100 })
        local speedhack = framework.modules.instance_manager.new("TextLabel", { Visible = false, Text = "Speedhack", TextColor3 = Color3.fromRGB(0, 255, 0), BackgroundTransparency = 1, TextSize = 9, FontFace = fonts.smallest_pixel, Size = UDim2.new(0, 100, 0, 100), Position = UDim2.new(0, 40, 0, 6), TextStrokeTransparency = 0, TextStrokeColor3 = color3_fromrgb(0, 0, 0), AnchorPoint = Vector2.new(0.5, 0.5), Parent = onscreen, ZIndex = 100 })
        local noclip = framework.modules.instance_manager.new("TextLabel", { Visible = false, Text = "Noclip", TextColor3 = Color3.fromRGB(255, 0, 0), BackgroundTransparency = 1, TextSize = 9, FontFace = fonts.smallest_pixel, Size = UDim2.new(0, 100, 0, 100), Position = UDim2.new(0, 40, 0, 6), TextStrokeTransparency = 0, TextStrokeColor3 = color3_fromrgb(0, 0, 0), AnchorPoint = Vector2.new(0.5, 0.5), Parent = onscreen, ZIndex = 100 })
        local debug_camera = framework.modules.instance_manager.new("TextLabel", { Visible = false, Text = "Debug Camera", TextColor3 = Color3.fromRGB(0, 255, 255), BackgroundTransparency = 1, TextSize = 9, FontFace = fonts.smallest_pixel, Size = UDim2.new(0, 100, 0, 100), Position = UDim2.new(0, 40, 0, 6), TextStrokeTransparency = 0, TextStrokeColor3 = color3_fromrgb(0, 0, 0), AnchorPoint = Vector2.new(0.5, 0.5), Parent = onscreen, ZIndex = 100 })
        -- returns
        on_screen.onscreen = onscreen;
        --on_screen.debugcamera = debugcamera;
        on_screen.flyhack = flyhack;
        on_screen.speedhack = speedhack;
        on_screen.noclip = noclip;
        on_screen.debug_camera = debug_camera;
    end
    -- prediction dot
    do
        local Dot = framework.modules.instance_manager.new("ScreenGui", { Parent = cloneref(gethui()), DisplayOrder = 1, IgnoreGuiInset = true, });
        local Circle = framework.modules.instance_manager.new("Frame", { Visible = false, Size = UDim2.new(0, 3, 0, 3), BorderSizePixel = 0, BackgroundTransparency = 0, AnchorPoint = Vector2.new(0.5, 0.5), Parent = Dot, ZIndex = 2 });
        framework.modules.instance_manager.new("UICorner", { CornerRadius = udim_new(1, 0), Parent = Circle });
        framework.modules.instance_manager.new("UIStroke", { Color = Color3.new(0, 0, 0), Thickness = 1, Transparency = 0, Parent = Circle })
        -- returns
        prediction_dot.Dot = Dot;
        prediction_dot.Circle = Circle;
    end
    -- moderator list
    do
        local ModList = framework.modules.instance_manager.new("ScreenGui", { Parent = cloneref(gethui()), DisplayOrder = 1 });
        local Frame = framework.modules.instance_manager.new("Frame", { Visible = false, Size = UDim2.new(0, 220, 0, 90), BorderSizePixel = 2, BorderColor3 = Color3.fromRGB(45, 45, 45), BackgroundTransparency = 0, BackgroundColor3 = Color3.fromRGB(36, 36, 36), AnchorPoint = Vector2.new(0.5, 0.5), Parent = ModList, ZIndex = 2 });
        local Line = framework.modules.instance_manager.new("Frame", { Visible = false, Position = UDim2.new(0, 0, 0, 40), Size = UDim2.new(1, 0, 0, 1), BorderSizePixel = 0, BackgroundTransparency = 0, BackgroundColor3 = Color3.fromRGB(45, 45, 45), Parent = Frame, ZIndex = 100 });
        local Icon = framework.modules.instance_manager.new("ImageLabel", { Visible = false, Image = "http://www.roblox.com/asset/?id=3429559843", ImageColor3 = def_color, Size = UDim2.new(0, 26, 0, 26), Position = UDim2.new(0, 8, 0, 7), ImageTransparency = 0, BackgroundTransparency = 1, Parent = Frame, ZIndex = 100 })
        local Text = framework.modules.instance_manager.new("TextLabel", { Text = "Moderators", TextColor3 = Color3.fromRGB(255, 255, 255), BackgroundTransparency = 1, TextSize = 14, FontFace = Font.new([[rbxassetid://12187365977]], Enum.FontWeight.Bold, Enum.FontStyle.Normal), Size = UDim2.new(0, 100, 0, 32), Position = UDim2.new(0, 40, 0, 6), TextStrokeColor3 = color3_fromrgb(0, 0, 0), TextXAlignment = Enum.TextXAlignment.Left, Parent = Frame, ZIndex = 100 })
        local Text2 = framework.modules.instance_manager.new("TextLabel", { Text = "0 moderators found", BackgroundTransparency = 1, TextSize = 13, FontFace = Font.new([[rbxassetid://12187365977]], Enum.FontWeight.Bold, Enum.FontStyle.Normal), Size = UDim2.new(0, 100, 0, 32), Position = UDim2.new(0, 10, 0, 46), TextStrokeColor3 = color3_fromrgb(0, 0, 0), TextXAlignment = Enum.TextXAlignment.Left, Parent = Frame, ZIndex = 100 })
        framework.modules.instance_manager.new("UICorner", { CornerRadius = udim_new(0, 8), Parent = Frame });
        -- returns
        mod_list.ModList = ModList;
        mod_list.Frame = Frame;
        mod_list.Icon = Icon;
        mod_list.Line = Line; 
        mod_list.Text = Text;
        mod_list.Text2 = Text2;
    end
    -- fov circle
    do 
        local FieldOfView = framework.modules.instance_manager.new("ScreenGui", { Parent = cloneref(gethui()), IgnoreGuiInset = true, DisplayOrder = 0 });
        local Frame = framework.modules.instance_manager.new("Frame", { Visible = false, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 0), AnchorPoint = Vector2.new(0.5, 0.5), Parent = FieldOfView, ZIndex = 2 });
        framework.modules.instance_manager.new("UICorner", { CornerRadius = udim_new(1, 0), Parent = Frame });
        local Frame2 = framework.modules.instance_manager.new("Frame", { Visible = false, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 0), AnchorPoint = Vector2.new(0.5, 0.5), Parent = FieldOfView, ZIndex = 1 });
        framework.modules.instance_manager.new("UICorner", { CornerRadius = udim_new(1, 0), Parent = Frame2 });
        local Stroke = framework.modules.instance_manager.new("UIStroke", { Color = Color3.new(1, 1, 1), Thickness = 2, Transparency = 0, Parent = Frame })
        local Stroke2 = framework.modules.instance_manager.new("UIStroke", { Color = Color3.new(0, 0, 0), Thickness = 4, Transparency = 0, Parent = Frame2 })
        local Gradient = framework.modules.instance_manager.new("UIGradient", {  Parent = Stroke });
        -- returns
        fov_circle.FieldOfView = FieldOfView;
        fov_circle.Frame = Frame;
        fov_circle.Frame2 = Frame2;
        fov_circle.Gradient = Gradient;
        fov_circle.Stroke = Stroke;
        fov_circle.Stroke2 = Stroke2;
    end;
    -- crosshair
    do
        local Crosshair = framework.modules.instance_manager.new("ScreenGui", { Parent = cloneref(gethui()), IgnoreGuiInset = true, DisplayOrder = 1 })
        local CrossContainer = framework.modules.instance_manager.new("Frame", { Size = udim2_new(0, 0, 0, 0), AnchorPoint = Vector2.new(0.5, 0.5), BackgroundTransparency = 1, Parent = Crosshair, ZIndex = 2 })        
        local CrossTop = framework.modules.instance_manager.new("Frame", { Size = udim2_new(0, 1, 0, 10), AnchorPoint = Vector2.new(0.5, 1), BackgroundColor3 = Color3.new(1, 1, 1), BackgroundTransparency = 0, Parent = CrossContainer, ZIndex = 3, Visible = true }) 
        framework.modules.instance_manager.new("UIGradient", { Parent = CrossTop, Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(1, 1)}), Rotation = -90 })
        local CrossBottom = framework.modules.instance_manager.new("Frame", { Size = udim2_new(0, 1, 0, 10), AnchorPoint = Vector2.new(0.5, 0), BackgroundColor3 = Color3.new(1, 1, 1), BackgroundTransparency = 0, Parent = CrossContainer, ZIndex = 3, Visible = true })
        framework.modules.instance_manager.new("UIGradient", { Parent = CrossBottom, Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(1, 1)}), Rotation = 90 })
        local CrossLeft = framework.modules.instance_manager.new("Frame", { Size = udim2_new(0, 10, 0, 1), AnchorPoint = Vector2.new(1, 0.5), BackgroundColor3 = Color3.new(1, 1, 1), BackgroundTransparency = 0, Parent = CrossContainer, ZIndex = 3, Visible = true })
        framework.modules.instance_manager.new("UIGradient", { Parent = CrossLeft, Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(1, 1)}), Rotation = 180 })
        local CrossRight = framework.modules.instance_manager.new("Frame", { Size = udim2_new(0, 10, 0, 1), AnchorPoint = Vector2.new(0, 0.5), BackgroundColor3 = Color3.new(1, 1, 1), BackgroundTransparency = 0, Parent = CrossContainer, ZIndex = 3, Visible = true })
        framework.modules.instance_manager.new("UIGradient", { Parent = CrossRight, Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(1, 1)}), Rotation = 0 })        
        -- returns
        crosshair.CrossContainer = CrossContainer
        crosshair.Crosshair = Crosshair
        crosshair.CrossTop = CrossTop
        crosshair.CrossBottom = CrossBottom
        crosshair.CrossLeft = CrossLeft
        crosshair.CrossRight = CrossRight
    end;
    -- snaplines
    do 
        local snaplines = framework.modules.instance_manager.new("ScreenGui", { Parent = cloneref(gethui()), IgnoreGuiInset = true, DisplayOrder = 0 });
        local line = framework.modules.instance_manager.new("Frame", { BackgroundTransparency = 0, AnchorPoint = Vector2.new(0.5, 0.5), BorderSizePixel = 0, ZIndex = 2, Parent = snaplines });
        local ui_stroke = framework.modules.instance_manager.new("UIStroke", { Parent = line, Color = Color3.fromRGB(0, 0, 0), Thickness = 1, Enabled = true, Transparency = 0, LineJoinMode = Enum.LineJoinMode.Miter });
        -- returns
        snap_lines.snaplines = snaplines;
        snap_lines.line = line;
        snap_lines.ui_stroke = ui_stroke;
    end;
end;

do -- main 🤩 
    do -- combat
        do
            local general = library.combat:section({name = "general", risky = false, side = "left"});
            --
            general:toggle({name = "Enabled", description = "Enables aim-assist", default = false, flag = "Enable Aimbot"});
            general:toggle({name = "Wall check", description = "Ignores hidden", default = false, flag = "Visible Check"});
            --general:toggle({name = "Animal check", description = "Includes animal's", default = false, flag = "Animal Check"});
            general:toggle({name = "NPC check", description = "Includes npc's", default = false, flag = "NPC Check"});
            general:dropdown({name = "Target bone", description = "Target player bone", options = {"Head", "UpperTorso", "LowerTorso"}, default = "Head", flag = "Aimbot Bone"});
            general:dropdown({name = "Method", description = "Select aim-assist mode", options = {"Aimbot", "Silent Aim"}, max = 2, flag = "Aimbot Method"}) 
            general:slider({name = "Max distance", min = 100, max = 2500, default = 500, decimals = 0.1, suffix = "studs", flag = "Aimbot Max Distance"});
            general:slider({name = "Hitchance", min = 25, max = 100, default = 100, decimals = 1, suffix = "%", flag = "Aimbot Hitchance"});
            general:slider({name = "Smoothing", min = 0.1, max = 1, default = 0.9, decimals = 10, suffix = "%", flag = "Aimbot Smoothing"});
        end

        do
            local options = library.combat:section({name = "options", risky = false, side = "center"});
            --
            options:toggle({name = "FOV circle", description = "Draw fov", default = false, flag = "Enable FOV"});
            options:slider({name = "FOV radius", min = 30, max = 750, default = 120, decimals = 1, suffix = "px", flag = "FOV Radius"});
            options:toggle({name = "Snaplines", description = "Draw target line", default = false, flag = "Enable Snaplines"});
            options:toggle({name = "Prediciton dot", description = "Visualize prediction", default = false, flag = "Prediciton Dot"});
            options:toggle({name = "Outline", description = "Outlines drawings", default = true, flag = "Enable Outlines"}); 
            options:toggle({name = "Highlight target", description = "Highlights target", default = false, flag = "Highlight Target"});
            options:colorpicker({ name = "Target color", description = "Edit highlight color", flag = "Highlight Accent", default = color3_new(1, 0, 1)});
            local fov_gradient = options:colorpicker({ name = "FOV Gradient", description = "FOV color", flag = "FOV Gradient Left", default = def_color});
            fov_gradient:colorpicker({ name = "FOV Gradient", description = "FOV color", flag = "FOV Gradient Right", default = color3_new(1, 1, 1)});
            options:colorpicker({ name = "Snaplines color", description = "Edit snapline color", flag = "Snaplines Accent", default = color3_new(1, 1, 1)});
            options:colorpicker({ name = "Dot color", description = "Edit dot color", flag = "Dot Accent", default = color3_new(1, 1, 1)});
        end
        
        do
            local misc = library.combat:section({name = "misc", risky = true, side = "right"});
            --
            misc:toggle({name = "Manipulation", risky = true, description = "Shoot around walls", default = false, flag = "Manipulation"});
            misc:toggle({name = "Wallbang", risky = true, description = "Shoot through walls", default = false, flag = "Wallbang"});
            misc:toggle({name = "Autofire", risky = false, description = "Auto kills player", default = false, flag = "Autoshoot"});
            --misc:keybind({name = "Autofire key", description = "Autofire keybind", default = Enum.KeyCode.V, usekey = true, flag = "Autofire Keybind"});
            misc:toggle({name = 'Teleport to target', description = "Teleport to target", risky = true, default = false, flag = 'TP To Bullet'});
            misc:toggle({name = "Resolve underground", risky = false, description = "Resolves underground hackers", default = false, flag = "Resolver"});
            misc:toggle({name = "Ignore raycasting", risky = false, description = "Penetrates all obstacles", default = false, flag = "Ignore Raycast"});
        end

        do
            local hit = library.combat:section({name = "hit", risky = false, side = "right"});
            --
            hit:dropdown({name = "Sounds", description = "Custom hitsound", default = "Default", options = utility.hitsounds, flag = "Hitsound Type", callback = function(state)
                if (flags["Hitsound Type"] ~= "Default") then
                    normal_hit.SoundId = utility.hit_sounds[state]
                    hit_head.SoundId = utility.hit_sounds[state]
                else
                    normal_hit.SoundId = "rbxassetid://160432334" or ""
                    hit_head.SoundId = "rbxassetid://988593556" or ""
                end
            end});
            hit:slider({name = "Volume", min = 0.6, max = 10, default = 0.6, decimals = 10, suffix = "vol", flag = "Hitsounds Volume", callback = function(state)
                if (flags["Hitsound Type"] ~= "Default") then
                    normal_hit.Volume = state
                    hit_head.Volume = state
                else
                    normal_hit.Volume = 0.6
                    hit_head.Volume = 0.6
                end
            end});
            hit:button({name = "Preview Hitsound", callback = function()
                local selected_sound = flags["Hitsound Type"];
                local sound_id = utility.hit_sounds[selected_sound];

                if (sound_id) then
                    local hitsound = Instance.new("Sound");
                    hitsound.SoundId = sound_id;
                    hitsound.Volume = flags["Hitsounds Volume"];
                    hitsound.Parent = game:GetService("SoundService");
                    hitsound:Play();
                    hitsound.Ended:Connect(function() hitsound:Destroy() end);
                end                
            end});
            hit:toggle({name = "Tracer", risky = false, description = "Draw tracer", default = false, flag = "Tracer"});
            hit:colorpicker({ name = "Tracer color", description = "Edit tracer color", flag = "Tracer Accent", default = def_color});
            hit:slider({name = "Tracer lifetime", min = 0.5, max = 3, default = 1.5, decimals = 10, suffix = "s", flag = "Tracer Hit Lifetime"}); 
            --hit:toggle({name = "Hitmarker", risky = false, description = "Draw hitmarkers", default = false, flag = "Hitmarker"});
            --hit:colorpicker({ name = "Hitmarker color", description = "Edit hitmarker color", flag = "Hitmarker Accent", default = color3_new(0, 1, 1)});
            hit:toggle({name = "Hit notifications", risky = false, description = "Notifcation on hit", default = false, flag = "Hit Notifications"});
            hit:colorpicker({ name = "Notification color", description = "Edit notification color", flag = "Notification Accent", default = def_color});
            hit:toggle({name = "Effects", description = "Hit effects", default = false, flag = "Hit Effect"});
            hit:colorpicker({ name = "Hit effects color", description = "Edit effect color", flag = "Hit Effect Accent", default = def_color});
            hit:dropdown({name = "Effects type", description = "Hit effect type", options = {"None", "Electric", "Lightning"}, default = "None", flag = "Hit Effect Type"})
        end
    end;

    do -- visuals
        do
            local esp = library.visuals:section({name = "enemies", risky = false, side = "left"});
            --
            esp:slider({name = "Max distance", min = 100, max = 2500, default = 500, decimals = 0.1   , suffix = "studs", flag = "ESP Distance"});
            esp:dropdown({name = "ESP font", description = "Edit esp font", options = {"Templeos", "Pixel"}, default = "Pixel", flag = "ESP Fonts"})
            esp:toggle({name = "Name", description = "Draw entity name", default = false, flag = "Enable Name"});
            esp:toggle({name = "Skeleton", description = "Draw entity skeleton", default = false, flag = "Enable Skeleton"});
            esp:toggle({name = "Distance", description = "Draw entity distance", default = false, flag = "Enable Distance"});
            esp:toggle({name = "Bounding box", description = "Draw entity boxes", default = false, flag = "Enable Boxes"});
            esp:toggle({name = "Fill box", description = "Draw entity filled box", default = false, flag = "Boxes Filled"});
            esp:slider({name = "Filled opacity", min = 0, max = 100, default = 85, decimals = 1, suffix = "%", flag = "Boxes Filled Opacity"});
            esp:toggle({name = "Chams", description = "Draw entity chams", default = false, flag = "Enable Chams"});
            esp:slider({name = "Chams inline opacity", min = 0, max = 100, default = 80, decimals = 1, suffix = "%", flag = "Chams Inline Opacity"});
            esp:slider({name = "Chams outline opacity", min = 0, max = 100, default = 0, decimals = 1, suffix = "%", flag = "Chams Outline Opacity"});
            esp:dropdown({name = "Chams depth", description = "Chams depth check", options = { "Visible Only", "Always Visible" }, default = "Always Visible", flag = "Chams Visible Check"});
            esp:toggle({name = "Flags", description = "Draw entity flags", default = false, flag = "Enable Flags"});
            esp:dropdown({name = "Flag types", description = "Select flag types", options = {"Weapon", "Reloading", "Healing", "Manipulated"}, max = 4, flag = "Flag Type"}) 
            esp:toggle({name = "Belt", description = "Draw entity belt", default = false, flag = "Enable Belt"});
            esp:toggle({name = "Healthbar", description = "Draw entity health", default = false, flag = "Enable Healthbar"});
            esp:toggle({name = "Lerp health color", description = "Edit healthbar color", default = true, flag = "Lerp Health"});
            esp:toggle({name = "View angle", description = "Draw entity viewangle", default = false, flag = "Enable ViewAngle"});
            esp:slider({name = "View angle length", min = 1, max = 15, default = 5, decimals = 10, suffix = "", flag = "ViewAngle Length"});
            esp:toggle({name = "OOF arrows", description = "Draw entity arrow", default = false, flag = "Enable Arrows"});
            esp:slider({Name = "Radius", min = 100, max = 750, default = 250, decimals = 1, suffix = "px", flag = "Arrow Radius" });
            esp:slider({name = "Arrow size", min = 16, max = 32, default = 24, decimals = 1, suffix = "", flag = "Arrow Size"});
            esp:dropdown({name = "Arrow sides", description = "Customize arrow type", options = { "Three", "Four" }, default = "Three", flag = "Arrow Points"});
        end

        do
            local esp_misc = library.visuals:section({name = "entity", risky = false, side = "center"});
            --
            esp_misc:toggle({name = "Enable", description = "Enable entity esp", default = false, flag = "Enable Misc ESP"});
            esp_misc:toggle({name = "Display names", description = "Draws names for objects", default = false, flag = "Display Names"});
            esp_misc:toggle({name = "Display distance", description = "Draws distance for objects", default = false, flag = "Display Distance"});
            esp_misc:toggle({name = "Display icons", description = "Draws icons for objects", default = false, flag = "Display Icons"});
            esp_misc:slider({name = "Max Distance", min = 100, max = 1000, default = 100, decimals = 0.1, suffix = "m", flag = "Max Misc ESP Distance"});
            esp_misc:dropdown({name = "Draw Entities", description = "Select entities", options = {"Wool Plant", "Raid", "Body Bag", "Timed Crate", "BTR", "Animals", "Storage Cabinet", "Large Storage Box", "Base Cabinet", "Drops", "Stone Node", "Metal Node", "Phosphate Node"}, Max = 15, Flag = "Node Type"})
        end

        do
            local misc = library.visuals:section({name = "misc", risky = false, side = "center"});
            misc:toggle({ name = "Spoof username", description = "Spoofs playerlist user", default = false, flag = "Spoof Username"});
            misc:toggle({name = "Armor bar", description = "Draw armor bar", default = false, flag = "Armor Bar"});
            misc:slider({name = "X offset", min = 0, max = 100, default = 50, decimals = 1, suffix = "", flag = "Info X-Pos"});
            misc:slider({name = "Y offset", min = 0, max = 100, default = 10, decimals = 1, suffix = "", flag = "Info Y-Pos"});
            misc:toggle({ name = "Moderator list", description = "Shows mods in server", default = false, flag = " Moderator List", callback = function(state)
                mod_list.Frame.Visible = state;
                mod_list.Icon.Visible = state;
                mod_list.Text.Visible = state;
                mod_list.Line.Visible = state;
                mod_list.Text2.Visible = state;
            end});
            local horiz = 50
            local verti = 7
            misc:slider({name = "Horizontal", min = 0, max = 100, default = 50, decimals = 1, suffix = "px", flag = "Horizontal ModList", callback = function(state) 
                mod_list.Frame.Position = UDim2.new(state / 100, 0, verti / 100, 0);
                horiz = state
            end});
            misc:slider({name = "Vertical", min = 0, max = 100, default = 7, decimals = 1, suffix = "px", flag = "Vertical ModList", callback = function(state) 
                mod_list.Frame.Position = UDim2.new(horiz / 100, 0, state / 100, 0);
                verti = state
            end});
        end

        do
            local crosshair = library.visuals:section({name = "crosshair", risky = false, side = "center"});
            --   
            crosshair:toggle({name = 'Enable crosshair', description = "Draws crosshair", default = false, flag = 'Enable Crosshair'});   
            crosshair:colorpicker({ name = "Crosshair color", description = "Crosshair color", default = def_color, flag = "Crosshair Accent"});  
            crosshair:toggle({name = 'Crosshair rotation', description = "Spins crosshair", default = false, flag = 'Spin Crosshair'});     
            crosshair:toggle({name = 'Hide on aim', description = "Crosshair fades on aim", default = false, flag = 'Crosshair Fade'});   
            crosshair:slider({name = "Crosshair length", min = 5, max = 50, default = 10, decimals = 1, suffix = "", flag = "Crosshair Length" });      
            crosshair:slider({name = "Crosshair width", min = 1, max = 4, default = 2, decimals = 1, suffix = "", flag = "Crosshair Width" });
            crosshair:slider({name = "Crosshair gap", min = 0, max = 40, default = 10, decimals = 1, suffix = "", flag = "Crosshair Gap" }); 
        end

        do
            local world = library.visuals:section({name = "world", risky = false, side = "right"});
            --
            world:toggle({name = "Ambience lighting", description = "Enables ambient color", default = false, risky = false, flag = "Ambience"});
            local world_color = world:colorpicker({ name = "Lighting color", description = "Edit ambience color", flag = "Ambience Accent", default = color3_new(1, 1, 1)});
            world_color:colorpicker({ name = "Lighting color", description = "Edit outdoor-ambience color", flag = "OutdoorAmbience Accent", default = color3_new(1, 1, 1)});
            world:toggle({name = "Ingame time", description = "Change ingame time", default = false, flag = "Ingame Time"});
            world:slider({name = "Time", min = 0, max = 24, default = 12, decimals = 1, suffix = "h", flag = "Game Time"});
            world:dropdown({name = "Skyboxes", description = "Changes default skybox", options = utility.skys, callback = function(state)
                if (utility.skyboxes[state]) then
                    sky.SkyboxBk = "rbxassetid://" .. utility.skyboxes[state][1];
                    sky.SkyboxDn = "rbxassetid://" .. utility.skyboxes[state][2];
                    sky.SkyboxFt = "rbxassetid://" .. utility.skyboxes[state][3];
                    sky.SkyboxLf = "rbxassetid://" .. utility.skyboxes[state][4];
                    sky.SkyboxRt = "rbxassetid://" .. utility.skyboxes[state][5];
                    sky.SkyboxUp = "rbxassetid://" .. utility.skyboxes[state][6];
                end;
            end});
            world:toggle({name = "Remove fog", description = "Removes ingame fog", default = false, flag = "Remove Fog"});
            world:toggle({name = 'Remove grass', description = "", default = false, callback = function(state) sethiddenproperty(workspace:FindFirstChildOfClass("Terrain"), "Decoration", not state) end});
        end

        do
            local viewmodel = library.visuals:section({name = "Viewmodel", risky = false, side = "right"});
            --
            viewmodel:toggle({name = "Customise viewmodel", description = "Changes viewmodel offset", default = false, flag = "Viewmodel Enabled" }); 
            viewmodel:slider({name = "X offset", min = -5, max = 5, default = 0, decimals = 10, suffix = "", flag = "Xpos" });
            viewmodel:slider({name = "Y offset", min = -5, max = 5, default = 0, decimals = 10, suffix = "", flag = "Ypos" });
            viewmodel:toggle({name = "Remove sway", description = "Removes viewmodel sway", risky = false, default = false, flag = "No Viewmodel Sway"});
            viewmodel:toggle({name = "Arm Chams", description = "Customise arm model", default = false, flag = "Arm Chams"});
            viewmodel:colorpicker({ name = "Arm color", description = "Edit Arm color", flag = "Arm Accent", default = color3_new(1, 1, 1)});
            viewmodel:toggle({name = "Weapon Chams", description = "Customise weapon model", default = false, flag = "Weapon Chams"});
            viewmodel:colorpicker({ name = "Weapon color", description = "Edit weapon color", flag = "Weapon Accent", default = color3_new(1, 1, 1)});
            viewmodel:dropdown({name = "Custom material", description = "Customise model material", options = {"ForceField", "Neon"}, default = "ForceField", flag = "Custom Model Material"})
            viewmodel:dropdown({name = "Custom textures", description = "Customise model textures", default = "Default", options = { "Default", "Scan", "Scanning-hexagon", "Hexagon", "Ground", "Lasers", "Player", "Stars", "Lidar", "Akatsuki", "America", "Shield Forcefield" }, flag = "TexturesIDS"})
        end
    end;

    do -- misc
        do
            local character = library.misc:section({name = "character", risky = true, side = "left"});
            --
            character:toggle({name = "Anti fling", description = "Removes player collisions", default = false, risky = false, flag = "AntiFling" });
            character:toggle({name = "Noclip", description = "Walk through collisions", default = false, risky = false, flag = "Noclip" });
            character:keybind({name = "Noclip key", description = "Noclip keybind", flag = "Noclip Key", mode = "Toggle", usekey = false });
            character:toggle({name = "Always grounded", description = "Jump and shoot", default = false, flag = "Disable Restrictions" });
            character:toggle({name = "Omnisprint", description = "Run all directions", default = false, flag = "SpeedHack" });
            character:slider({name = "Omnisprint speed", min = 18, max = 30, default = 24, decimals = 1, suffix = "", flag = "SpeedHack Speed" });
            character:toggle({name = "Fly hack (spacebar)", description = "Bypass fly restrictions", risky = false, default = false, flag = "FlyHack" });
            character:slider({name = "Fly speed", min = 5, max = 20, default = 10, decimals = 1, suffix = "", flag = "FlyHack Speed" });
            character:toggle({name = "Spinbot", description = "Harder to hit you", default = false, risky = true, flag = "Spinbot" });
            character:dropdown({name = "Method", description = "Spinbot method", options = {"Backtrack", "HvH"}, default = "Backtrack", flag = "Spinbot Mode"});
            character:slider({name = "Pitch", min = -90, max = 90, default = -90, decimals = 0.1, suffix = "", flag = "Spinbot Pitch" });
            character:toggle({name = 'Instant loot', description = "Loots instantly", default = false, flag = 'Instant Loot'});    
            character:toggle({name = "Silent walk", description = "No movement sounds", default = false, risky = false, flag = "Silent Walk" });
            character:toggle({name = "Break prediction", description = "Breaks others prediction", default = false, flag = "VelocityBreaker" });
            do -- traps
                local stored_parts = {DamagePart = {}, TouchCollision = {}}
                character:toggle({name = "Disable trap damage", description = "Disables all external damage", flag = "Disable All Damage Parts", default = false, callback = function(state)
                    for _, v in workspace:GetDescendants() do
                        if v:IsA("BasePart") and (v.Name == "DamagePart" or v.Name == "TouchCollision") then
                            if state then
                                stored_parts[v.Name][v] = v.Parent
                                v.Parent = cloneref(game:GetService("CoreGui"))
                                v.Destroying:Connect(function() stored_parts[v.Name][v] = nil end)
                            elseif stored_parts[v.Name][v] then
                                v.Parent = stored_parts[v.Name][v]
                                stored_parts[v.Name][v] = nil
                            end
                        end
                    end
                    if not state then
                        table.clear(stored_parts.DamagePart)
                        table.clear(stored_parts.TouchCollision)
                    end
                end})

                workspace.DescendantAdded:Connect(function(d)
                    if d:IsA("BasePart") and (d.Name == "DamagePart" or d.Name == "TouchCollision") and flags["Disable All Damage Parts"] then
                        stored_parts[d.Name][d] = d.Parent
                        d.Parent = cloneref(game:GetService("CoreGui"))
                        d.Destroying:Connect(function() stored_parts[d.Name][d] = nil end)
                    end
                end)
            end;
        end

        do
            local mods = library.misc:section({name = "weapon mods", risky = true, side = "center"});
            --  
            mods:toggle({name = 'Thick bullet', description = "Enables bullet expansion", risky = true, default = false, flag = 'Thick Bullet'});
            mods:slider({name = "Bullet size", min = 1, max = 10, default = 5, decimals = 10, suffix = "x", flag = "Thick Bullet Size" });
            mods:toggle({name = "Instant bullet", risky = true, description = "Bullet instantly hits", default = false, flag = "InstantBullet"});
            mods:toggle({name = "Instant bow", risky = false, description = "Instant bow pullback", default = false, flag = "InstantBow"});
            mods:toggle({name = "Instant bolt", risky = false, description = "Instant sniper pullback", default = false, flag = "InstantBolt"});
            mods:slider({name = "Recoil", min = 0, max = 100, default = 100, decimals = 1, suffix = "%", flag = "Recoil" }); 
            local old_spread = {};
            local no_spread_callback = function()
                for _, tbl in getgc(true) do
                    if type(tbl) ~= "table" then continue end
                    local spread_table = rawget(tbl, "Spread")
                    if spread_table and typeof(spread_table) == "table" then
                        for _, spread_stuff in spread_table do
                            for i, v in spread_stuff do
                                if type(v) == "number" then
                                    if not old_spread[spread_stuff] then old_spread[spread_stuff] = {} end
                                    if not old_spread[spread_stuff][i] then old_spread[spread_stuff][i] = v end
                                    spread_stuff[i] = old_spread[spread_stuff][i] * (flags["Spread"] / 100)
                                end
                            end
                        end
                    end
                end
            end
            mods:slider({ name = "Spread", decimals = 1, suffix = "%", flag = "Spread", min = 0, max = 100, default = 100, callback = no_spread_callback })  
            local old_shake = {};
            mods:toggle({name = "Remove Shake", description = "Removes weapon shake", default = false, flag = "Remove Shake", callback = function(state)
                if state then
                    for _, tbl in getgc(true) do
                        if type(tbl) ~= "table" then continue end
                        local shake_table = rawget(tbl, "Shake")

                        if shake_table and type(shake_table) == "table" then
                            if not old_shake[shake_table] then old_shake[shake_table] = shake_table.Strength end
                            shake_table.Strength = Vector3.new(0, 0, 0)
                        end
                    end
                else
                    for tbl, v in old_shake do tbl["Strength"] = v end;
                end
            end});
            local old_firerates = {}
            local fast_fire_callback = function()
                local value = flags["Unlock Firerate"]
        
                for _, tbl in getgc(true) do
                    if type(tbl) ~= "table" then continue end;
                    local current_rpm = rawget(tbl, "RPM");
        
                    if current_rpm then
                        if not old_firerates[tbl] then old_firerates[tbl] = current_rpm end;
        
                        if value then
                            tbl.RPM = old_firerates[tbl] * flags["Firerate"];
                        else
                            tbl.RPM = old_firerates[tbl];
                        end;
                    end;
                end;
            end;
            mods:toggle({name = "Unlock firerate", description = "Bypass firerate", default = false, flag = "Unlock Firerate", callback = fast_fire_callback});
            mods:slider({name = "Firerate", min = 1, max = 2, default = 1.5, decimals = 100, suffix = "x", flag = "Firerate", callback = fast_fire_callback}); 
            local old_aim_down_speeds = {}
            mods:toggle({name = "Instant aim", description = "Aim in/out instantly", default = false, flag = "Instant Aim", callback = function(state)
                if state then
                    for _, tbl in getgc(true) do
                        if type(tbl) ~= "table" then continue end;
                        local aim_down_speeds = rawget(tbl, "AimDownSpeed");

                        if aim_down_speeds and type(aim_down_speeds) == "table" then
                            for i, v in aim_down_speeds do
                                if not old_aim_down_speeds[aim_down_speeds] then old_aim_down_speeds[aim_down_speeds] = {} end;
                                if not old_aim_down_speeds[aim_down_speeds][i] then old_aim_down_speeds[aim_down_speeds][i] = v end;
                                aim_down_speeds[i] = 0;
                            end;
                        end;
                    end;
                else
                    for tbl, values in old_aim_down_speeds do
                        for i, v in values do tbl[i] = v end;
                    end;
                end;
            end});
            local old_equip_anims = {}
            mods:toggle({name = "Instant equip", description = "Equip items instantly", default = false, flag = "Instant Equip", callback = function(state)
                if state then
                    for _, tbl in getgc(true) do
                        if type(tbl) ~= "table" then continue end;
    
                        if rawget(tbl, "EquipAnimSpeed") then
                            if not old_equip_anims[tbl] then old_equip_anims[tbl] = tbl.EquipAnimSpeed end;
                            tbl.EquipAnimSpeed = 100;
                        end;
                    end;
                else
                    for tbl, v in old_equip_anims do tbl["EquipAnimSpeed"] = v end;
                end;
            end});
            local old_autos = {}
            mods:toggle({name = "Force auto", description = "Forces semi to auto", default = false, flag = "Force Auto", callback = function(state)
                if (state) then
                    for _, tbl in getgc(true) do
                        if type(tbl) ~= "table" then continue end;
                        local weapon_auto = rawget(tbl, "Auto");
    
                        if weapon_auto ~= nil then
                            if not old_autos[tbl] then old_autos[tbl] = weapon_auto end;
                            tbl.Auto = true;
                        end;
                    end;
                else
                    for tbl, v in old_autos do tbl["Auto"] = v end;
                end;
            end});       
        end

        do
            local melee_mods = library.misc:section({name = "melee mods", risky = false, side = "center"});
            --  
            --melee_mods:toggle({name = 'Kill aura', description = "Auto attack", default = false, flag = 'Kill Aura'});           
            melee_mods:toggle({name = 'Silent farm', description = "Perfect farming", default = false, flag = 'Silent Farm'});             
            local old_ranges = {};
            local melee_range_callback = function()
                local value = flags["Extend Melee"];

                for _, tbl in getgc(true) do
                    if type(tbl) ~= "table" then continue end;

                    local current_range = rawget(tbl, "Range");
                    if current_range and rawget(tbl, "Offset") then
                        if not old_ranges[tbl] then old_ranges[tbl] = current_range end;

                        if value then
                            tbl.Range = old_ranges[tbl] * 3.75;
                        else
                            tbl.Range = old_ranges[tbl];
                        end;
                    end;
                end;
            end;
            melee_mods:toggle({name = "Long melee", description = "Extended reach", default = false, flag = "Extend Melee", callback = melee_range_callback});
            local old_cooldowns = {};
            melee_mods:toggle({name = "Fast swing", description = "Swings melees faster", default = false, flag = "Fast Melee", callback = function(state)
                for _, tbl in getgc(true) do
                    if type(tbl) ~= "table" then continue end;
        
                    local current_cooldown = rawget(tbl, "Cooldown")
                    if current_cooldown then
                        if not old_cooldowns[tbl] then old_cooldowns[tbl] = current_cooldown end;
        
                        if state then
                            tbl.Cooldown = old_cooldowns[tbl] / 1.3
                        else
                            tbl.Cooldown = old_cooldowns[tbl];
                        end;
                    end;
                end;
            end}); 
            --melee_mods:toggle({name = "Instant throw", description = "Instant melee hit", default = false, flag = "Instant Throw"});
        end

        do
            local camera = library.misc:section({name = "camera", risky = false, side = "right"});
            --
            camera:toggle({name = "Debug camera", description = "Detach camera", default = false, flag = "Debug Camera" });
            camera:keybind({name = "Debug camera key", description = "Debug key", flag = "Debug Camera Key", mode = "Toggle", usekey = false, });
            camera:toggle({name = "Field of view", description = "Adjust default FOV", default = false, flag = "Field Of View" }); 
            camera:slider({name = "FOV", min = 30, max = 120, default = 70, decimals = 1, suffix = "", flag = "FOV" });
            camera:toggle({name = "Zoom", description = "Zooms camera in", default = false, flag = "Zoom" });
            camera:keybind({name = "Zoom key", description = "Zoom key", flag = "Zoom key", mode = "Toggle", usekey = false, });
            camera:slider({name = "Zoom FOV", min = 30, max = 70, default = 30, decimals = 1, suffix = "", flag = "Zoom FOV" });
            camera:toggle({name = "Third person", description = "3rd person", default = false, flag = "Third Person"});
            camera:keybind({name = "Third person key", description = "Third person key", flag = "Third Person Key", mode = "Toggle", usekey = false });
            camera:slider({name = "3D distance", min = 1, max = 15, default = 5, decimals = 10, suffix = "s", flag = "Third Person Distance" });
            camera:toggle({name = 'Viewmodel highlight', description = "Edit viewmodel highlight", default = false, flag = 'Viewmodel Highlight'});  
            local VM_color = camera:colorpicker({ name = "Fill color", description = "VM fill color", flag = "Highlight Fill Accent", default = def_color});
            VM_color:colorpicker({ name = "Outline color", description = "VM outline color", flag = "Highlight Outline Accent", default = def_color});
            camera:slider({name = "Highlight inline opacity", min = 0, max = 100, default = 50, decimals = 1, suffix = "", flag = "Viewmodel Highlight Inline Opacity" });
            camera:slider({name = "Highlight outline opacity", min = 0, max = 100, default = 50, decimals = 1, suffix = "", flag = "Viewmodel Highlight Outline Opacity" });
        end

        do
            local xray = library.misc:section({name = "xray", risky = false, side = "right"});
            --
            local bases_folder = {
                workspace.Bases.Loners:FindFirstChild("External Wooden Wall") or nil,
                workspace.Bases.Loners:FindFirstChild("External Wooden Gate") or nil,
                workspace.Bases.Loners:FindFirstChild("External Stone Wall") or nil,
                workspace.Bases.Loners:FindFirstChild("External Stone Gate") or nil,
            };
            
            for _, v in pairs(workspace.Bases:GetChildren()) do
                if v:IsA("Folder") and v.Name == "Base" then
                    for _, sub in ipairs({"Doorway", "Floor", "Triangle Floor", "Foundation", "Triangle Foundation", "Wall", "Wall Frame", "Window"}) do
                        local sub_folder = v:FindFirstChild(sub);
                        if sub_folder then table.insert(bases_folder, sub_folder) end;
                    end;
                end;
            end;
            
            getgenv().xray_toggle, getgenv().xray_enabled, getgenv().xray_opacity = false, false, 0.5;
            local function upd_xray(state)
                if not getgenv().xray_toggle then return end
                for _, v in pairs(bases_folder) do
                    for _, obj in ipairs(v:GetDescendants()) do
                        if obj:IsA("MeshPart") then obj.Transparency = state and getgenv().xray_opacity or 0 end;
                    end;
                end;
            end;

            xray:toggle({name = 'Enable', description = "Enable xray", flag = 'Enable Xray', callback = function(state) getgenv().xray_toggle = state end})
            xray:keybind({name = "Xray key", flag = "Xray Key", description = "Xray key", default = Enum.KeyCode.T, mode = "Toggle", usekey = false, callback = function() 
                if getgenv().xray_toggle then 
                    getgenv().xray_enabled = not getgenv().xray_enabled;
                    upd_xray(getgenv().xray_enabled);
                end;
            end});
            xray:slider({name = "Xray opacity", min = 0, max = 100, default = 50, decimals = 1, suffix = "%", flag = "Xray Opacity", callback = function(state)
                getgenv().xray_opacity = state / 100;
                if getgenv().xray_toggle and getgenv().xray_enabled then upd_xray(true) end;
            end});
        end
    end;

    do -- skins
        do -- guns
            local gun_skins = library.skins:section({name = "guns", risky = false, side = "left"});
            --
            gun_skins:toggle({name = "Custom skins", description = "Custom gun skins", default = false, flag = "Custom Gun Skin"});
        end

        do -- tools
            local tool_skins = library.skins:section({name = "tools", risky = false, side = "center"});
            tool_skins:toggle({name = "Custom skins", description = "Custom tool skins", default = false, flag = "Custom Tool Skin"});
        end

        do -- other
            local armor_skins = library.skins:section({name = "armor (SOON)", risky = false, side = "right"});
            armor_skins:toggle({name = "Custom skins", description = "Custom armor skins", default = false, flag = "Custom Armor Skin"});
        end
    end

    do -- colors
        do
            local esp = library.colors:section({name = "esp", risky = false, side = "left"});
            --
            esp:colorpicker({ name = "Text color", description = "Customize text color", default = color3_fromrgb(255, 255, 255), flag = "Text Color"});
            esp:colorpicker({ name = "Box color", description = "Customize box color", default = color3_fromrgb(255, 255, 255), flag = "Box Color"});
            esp:colorpicker({ name = "Filled box color", description = "Customize filled box color", default = color3_fromrgb(0, 0, 0), flag = "Filled Boxes Color"});
            esp:colorpicker({ name = "Chams inline color", description = "Customize inline chams color", flag = "Chams Inline Accent", default = def_color});
            esp:colorpicker({ name = "Chams outline color", description = "Customize outline chams color", flag = "Chams Outline Accent", default = def_color});
            esp:colorpicker({ name = "Skeleton color", description = "Customize skeleton color", default = color3_fromrgb(255, 255, 255), flag = "Skeleton Color"});
            esp:colorpicker({ name = "Healthbar top color", description = "Customize healthbar top color", default = def_color, flag = "Healthbar Top Color"});
            esp:colorpicker({ name = "Healthbar bottom color", description = "Customize healthbar bottom color", default = color3_fromrgb(255, 0, 0), flag = "Healthbar Bottom Color"});
            esp:colorpicker({ name = "View angle color", description = "Customize view angle color", default = color3_fromrgb(255, 255, 255), flag = "View Angle Color"});
            esp:colorpicker({ name = "OOF arrows color", description = "Customize arrows color", flag = "Arrows Accent", default = color3_fromrgb(255, 255, 255)});
        end

        do -- misc colors
            local misc_colors = library.colors:section({name = "misc esp", risky = false, side = "center"});
            --
            misc_colors:colorpicker({ name = "Display Name Color", description = "Display name color", flag = "Display Name Accent", default = color3_fromrgb(255, 255, 255)});
            misc_colors:colorpicker({ name = "Display Distance Color", description = "Display distance color", flag = "Display Distance Accent", default = color3_fromrgb(255, 255, 255)});
            misc_colors:colorpicker({ name = "Display Icon Color", description = "Display icon color", flag = "Display Icon Accent", default = color3_fromrgb(255, 255, 255)});
            misc_colors:colorpicker({ name = "Stone Node Color", description = "Stone node color", flag = "Stone Node Accent", default = color3_fromrgb(105, 102, 92)});
            misc_colors:colorpicker({ name = "Metal Node Color", description = "Metal node color", flag = "Metal Node Accent", default = color3_fromrgb(198, 168, 50)});
            misc_colors:colorpicker({ name = "Phosphate Node Color", description = "Phosphate node color", flag = "Phosphate Node Accent", default = color3_fromrgb(200, 200, 200)});
            misc_colors:colorpicker({ name = "AI Color", description = "AI color", flag = "AI Accent", default = color3_new(1, 1, 0)});
            misc_colors:colorpicker({ name = "Raid Color", description = "Raid color", flag = "Raid Accent", default = color3_new(1, 0, 0)});
            misc_colors:colorpicker({ name = "Wool Plants Color", description = "Wool plants color", flag = "Wool Plants Accent", default = color3_new(0, 1, 0)});
            misc_colors:colorpicker({ name = "Timed Crate Color", description = "Timed crate color", flag = "Timed Crate Accent", default = color3_new(1, 0, 0)});
            misc_colors:colorpicker({ name = "BTR Color", description = "BTR color", flag = "BTR Accent", default = color3_new(1, 1, 1)});
            misc_colors:colorpicker({ name = "BodyBag Color", description = "Body Bag color", flag = "Body Bag Accent", default = color3_new(1, 0, 0)});
        end;
    end;

    do -- settings
        do
            local menu_tab = library.settings:section({name = "menu", side = "left"});
            UI:Menu(menu_tab);
        end
        
        do 
            local extra = library.settings:section({name = "extra", side = "left"});
            UI:Extra(extra);
        end
        
        do 
            local presets = library.settings:section({name = "configs", side = "center"});
            UI:Configs(presets);
        end
        
        do 
            local themes = library.settings:section({name = "themes", side = "right"});
            UI:Themes(themes);                    
        end
    end;
end;

do -- Update Gun & Data
    LPH_NO_VIRTUALIZE(function() 
        local function setup(char)
            task.spawn(function()
                local ec = char:WaitForChild("EquipController");
                local ic = char:WaitForChild("InventoryController");
        
                local function check()
                    local f = ic.Fetch:Invoke();
                    local id = ec:GetAttribute("Equipped");
       
                    if (f and f.Toolbar and id) then
                        local tool = f.Toolbar[id]

                        if typeof(tool) == "table" and tool.ID then
                            local item = items_table[tool.ID];

                            local new_skins = {};
                            if (item and typeof(item.Image) == "table") and flags["Custom Gun Skin"] then
                                local image_data = item and item.Image;
                                if typeof(image_data) == "table" then
                                    for skin_name, _ in pairs(image_data) do
                                        if skin_name ~= "Default" then
                                            table.insert(new_skins, skin_name);
                                        end;
                                    end;
                                end;
                            
                                for _, v in getgc(true) do
                                    if typeof(v) == "table" and rawget(v, "Skin") then
                                        local last_skin = rawget(v, "Skin");
                                        local valid_skins = {};
                                        for _, s in ipairs(new_skins) do
                                            if s ~= last_skin then
                                                table.insert(valid_skins, s);
                                            end;
                                        end;
                                        if #valid_skins > 0 then
                                            local random_skin = valid_skins[math.random(1, #valid_skins)];
                                            rawset(v, "Skin", random_skin);
                                        end;
                                    end;
                                end;
                            end;                                             

                            if (item) then
                                -- No sway
                                local_char:FindFirstChild("ViewmodelController"):SetAttribute("DebugDisableScriptAnims", flags["No Viewmodel Sway"]);
                                
                                guns.weapon_name = item.Name 
                                if item.Type == "Tool" then
                                    guns.ignore_tools = true
                                else
                                    guns.ignore_tools = false
                                end

                                local data = toolinfo_table[item.Name];
                                if (data and data.Bullet) then
                                    guns.projectile_speed = data.Bullet.Speed;
                                    guns.projectile_gravity = data.Bullet.Gravity;

                                    local recoil_start = data.Recoil.Camera.RecoilStart;                           
                                    rawset(data.Recoil.Camera, "RecoilStart", function(...)
                                        local x, y = recoil_start(...);
                                        local scale = (flags["Recoil"] or 100) / 100;
                                        return x * scale, y * scale;
                                    end);
                                    
                                    local recoil_finish = data.Recoil.Camera.RecoilFinish;
                                    rawset(data.Recoil.Camera, "RecoilFinish", function(...)
                                        local x, y = recoil_finish(...);
                                        local scale = (flags["Recoil"] or 100) / 100;
                                        return x * scale, y * scale;
                                    end);     
                                end;
                            end
                        end;
                    end
                end;
                ec:GetAttributeChangedSignal("Equipped"):Connect(check);
                check()
            end)
        end
        
        if (local_char) then setup(local_char) end;
        local_player.CharacterAdded:Connect(function(c)
            local_char = c;
            setup(c);
        end);
    end)()
end;

do -- Customize Viewmodel
  local function apply_vm_highlight(model)
        if not model:IsA("Model") then return end
        local hl = model:FindFirstChildOfClass("Highlight")

        if (flags["Viewmodel Highlight"]) then
            if not hl then hl = Instance.new("Highlight", model) end
            hl.FillColor = flags["Highlight Fill Accent"]
            hl.OutlineColor = flags["Highlight Outline Accent"]
            hl.FillTransparency = flags["Viewmodel Highlight Inline Opacity"] / 100
            hl.OutlineTransparency = flags["Viewmodel Highlight Outline Opacity"] / 100
            hl.Enabled = true
        elseif hl then
            hl.Enabled = false
        end
    end;
    
    for _, model in ipairs(folder:GetChildren()) do
        apply_vm_highlight(model)
    end
    
    folder.ChildAdded:Connect(function(model)
        task.defer(function()
            apply_vm_highlight(model)
        end)
    end)   

    local old_materials, old_texture, old_colors = {}, {}, {}
    local function revert()
        for child, material in old_materials do child.Material = material end
        for child, color in old_colors do child.Color = color end
        for child, texture in old_texture do child.TextureID = texture end
        table.clear(old_materials)
        table.clear(old_texture)
        table.clear(old_colors)
    end

    local function chams(descendant)
        if descendant:IsA("BasePart") then
            local armsAncestor = descendant:FindFirstAncestor("Arms")
            local weaponAncestor = descendant:FindFirstAncestor("Weapon")
            if armsAncestor and flags["Arm Chams"] then
                local insideModel = descendant:FindFirstAncestorWhichIsA("Model")
                if insideModel and insideModel:IsDescendantOf(armsAncestor) then
                    old_materials[descendant] = descendant.Material
                    old_colors[descendant] = descendant.Color
                    if descendant:IsA("MeshPart") then
                        old_texture[descendant] = descendant.TextureID
                    end
                    descendant.Material = Enum.Material[flags["Custom Model Material"]]
                    descendant.Color = flags["Arm Accent"]
                    if descendant:IsA("MeshPart") then
                        local selectedTexture = flags["TexturesIDS"]
                        local textureID = utility.custom_textures[selectedTexture] or ""
                        descendant.TextureID = typeof(textureID) == "string" and textureID ~= "" and textureID or ""
                    end
                end
            elseif weaponAncestor and flags["Weapon Chams"] then
                old_materials[descendant] = descendant.Material
                old_colors[descendant] = descendant.Color
                if descendant:IsA("MeshPart") then
                    old_texture[descendant] = descendant.TextureID
                end
                descendant.Material = Enum.Material[flags["Custom Model Material"]]
                descendant.Color = flags["Weapon Accent"]
                if descendant:IsA("MeshPart") then
                    local selectedTexture = flags["TexturesIDS"]
                    local textureID = utility.custom_textures[selectedTexture] or ""
                    descendant.TextureID = typeof(textureID) == "string" and textureID ~= "" and textureID or ""
                end
            end
        end
    end

    local function chams_handler(model)
        revert()
        for _, folder in model:GetDescendants() do
            if folder:IsA("Folder") and ((folder.Name == "Arms" and flags["Arm Chams"]) or (folder.Name == "Weapon" and flags["Weapon Chams"])) then
                for _, part in folder:GetDescendants() do
                    chams(part)
                end
                folder.ChildAdded:Connect(function(child)
                    chams(child)
                end)
            end
        end
    end

    folder.ChildAdded:Connect(function(model)
        model.ChildAdded:Connect(function() chams_handler(model) end)
        chams_handler(model)
    end)
end;

do -- hooks
    -- Projectiles
    do
        LPH_JIT_MAX(function() 
            local create_proj_hook = require(_modules.VFXModule).CreateProjectile; require(_modules.VFXModule).CreateProjectile = function(self, tbl)
                local traceback = debug.traceback();
                if (tbl and type(tbl) == "table") then
                    if (tbl.StepFunction ~= "FakeStepFunc" and tbl.HitFunction ~= "FakeHitFunc") then

                        if (flags["Ignore Raycast"]) then
                            for _, v in workspace:GetChildren() do
                                if v:IsA("Folder") then table.insert(tbl.Filters, v) end;
                            end;
                            table.insert(tbl.Filters, workspace.Terrain);
                        end;
                        
                        if (tbl.TracerName) then
                            if (not guns.shot) then guns.shot = true end;

                            do -- Hitscan
                                if (flags["Wallbang"]) then
                                    local hitscan = functions.hit_scan(entry and entry.Character, entry and entry.Character and entry.Character:FindFirstChild("HumanoidRootPart"), closest_part)
                                    if hitscan then
                                        target.hitscan = hitscan;
                                    else
                                        target.hitscan = nil;
                                    end;
                                else
                                    target.hitscan = nil;
                                end;
                            end;

                            local old = tbl.HitFunction; tbl.HitFunction = function(...)
                                local args = {...};    

                                if (args[1] and args[1].Name and table.find(utility.r15_rig, args[1].Name) and typeof(args[2]) == "Vector3") then 

                                    if (local_player and local_player.Character and flags["TP To Bullet"]) then
                                        local_player.Character:PivotTo(CFrame.new(args[2]));
                                    end;

                                    if (flags["Tracer"]) then
                                        if (typeof(args[2]) == "Vector3") then
                                            if (flags["Manipulation"] and manipulation_pos) then
                                                functions.create_tracer(manipulation_pos, args[2]);
                                            else
                                                functions.create_tracer(functions.barrel_endpoint2(), args[2])
                                            end
                                        end;
                                    end;     
                                    
                                    if (flags["Hit Notifications"]) then
                                        task.spawn(function()
                                            setthreadidentity(3);
                                            if closest_part and entry then
                                                local player_name = entry.DisplayName;
                                                local root_part = entry.Character and entry.Character:FindFirstChild("HumanoidRootPart");
                                                local distance = nil;
                                                if root_part and local_player.Character and local_player.Character:FindFirstChild("HumanoidRootPart") then
                                                    distance = math_floor((local_player.Character.HumanoidRootPart.Position - root_part.Position).Magnitude);
                                                end;
                                                local gun_name = guns.weapon_name;
                                                if (distance and player_name and gun_name) then
                                                    UI:Notification("Hit ".. player_name.." in the " .. args[1].Name.. " from ".. distance.. " studs away using ".. gun_name, flags["Hit Lifetime"], flags["Notification Accent"]);
                                                end; 
                                            end                                                             
                                            setthreadidentity(8);                      
                                        end);
                                    end;
                                    
                                    if (flags["Hit Effect"] and flags["Hit Effect Type"] ~= "None") then
                                        functions.add_effect(args[1].Position);
                                    end;

                                end;
                                
                                if (old) then return old(unpack(args)); end;
                            end;
                        end;   
                        --
                        if flags["Manipulation"] and flags["Enable Aimbot"] and table.find(flags["Aimbot Method"], "Silent Aim") and guns.weapon_name ~= "Salvaged RPG" and not guns.ignore_tools and closest_part and entry and entry ~= local_player and traceback:find("ViewmodelController") and target.prediction_y and target.prediction_x and manipulation_pos then
                            local manip_dir = CFrame.lookAt(manipulation_pos, target.manip).LookVector

                            tbl.PositionFirst = manipulation_pos
                            tbl.Position = manipulation_pos
                            tbl.DirectionFirst = manip_dir
                            tbl.Direction = manip_dir                                                                            
                        elseif not flags["Manipulation"] and flags["Enable Aimbot"] and table.find(flags["Aimbot Method"], "Silent Aim") and guns.weapon_name ~= "Salvaged RPG" and not guns.ignore_tools and closest_part and entry and entry ~= local_player and traceback:find("ViewmodelController") and target.prediction_y and target.prediction_x then
                            local dir;
                            if flags["Wallbang"] and target.hitscan then
                                dir = CFrame.lookAt(tbl.Position, target.hitscan).LookVector
                            else
                                dir = CFrame.lookAt(tbl.Position, target.prediction_x).LookVector
                            end
                            tbl.DirectionFirst = dir;
                            tbl.Direction = dir;                            
                        end;     
                    end;
                end;
            
                return create_proj_hook(self, tbl);
            end;    
            --
            local old_fire = vector_util.FireRemote; vector_util.FireRemote = function(...)
                local args = {...};
                local trace = debug.traceback();
                local viewmodel_controller = local_char and local_char:FindFirstChild("ViewmodelController");

                --[[if (flags["Enable Aimbot"] and table.find(flags["Aimbot Method"], "Silent Melee") and viewmodel_controller and trace:find("ViewmodelController", 1, true) and closest_part and closest_part.Position and typeof(args[4][1]) == "CFrame") then                 
                    args[4][1] = CFrame.new(camera.CFrame.Position, closest_part.Position);
                end;]]

                if (#args[4] == 8 and viewmodel_controller and trace:find("ViewmodelController", 1, true) and flags["Enable Aimbot"]) then
                    local part = target.part;
                    local data = args[4];                     

                    if (part and data and target.prediction_x and guns.weapon_name ~= "Salvaged RPG" and not guns.ignore_tools) then
                        local log_position = local_player.Character.PrimaryPart.CFrame * CFrame.new(0, 1.5, 0); 
                        local new_position = log_position:PointToObjectSpace(functions.barrel_endpoint());

                        if (not flags["Manipulation"] and table.find(flags["Aimbot Method"], "Silent Aim")) then
                            data[6] = CFrame.new(data[6].Position, target.prediction_x);

                            if (guns.weapon_name == "Wooden Bow" or guns.weapon_name == "Crossbow") then
                                data[5] = Vector3.new(0.5, 0, -2.00);
                            else
                                data[5] = Vector3.new(0, 0, new_position.Z + 1);     
                            end;

                            data[4] = CFrame.new(data[4].Position, target.prediction_x)    
                        elseif (flags["Manipulation"] and table.find(flags["Aimbot Method"], "Silent Aim") and manipulation_pos) then
                            data[6] = CFrame.new(manipulation_pos, target.manip);

                            if (guns.weapon_name == "Wooden Bow" or guns.weapon_name == "Crossbow") then
                                data[5] = Vector3.new(0.5, 0, -2.00);
                            else
                                data[5] = Vector3.new(0.5, 0, new_position.Z + 1);     
                            end;    
                            
                            data[4] = CFrame.new(manipulation_pos, part.Position + Vector3.new(target.prediction_x, target.prediction_Y, new_position.Z + 1));
                        end;
                        return old_fire(unpack(args));
                    end;                    
                end;
                return old_fire(...);
            end;  
        end)();
    end;
    -- Raycasting
    do
        LPH_JIT_MAX(function() 
            if (_modules and _modules.RaycastUtil) then
                local old_raycast = raycast_util.Raycast; raycast_util.Raycast = function(self, origin, direction, filter_type, ignore_list, debug_ray, filter_function, ignore_water, depth)
                    local trace_back = debug.traceback();
                    local check = flags["Enable Aimbot"] and table.find(flags["Aimbot Method"], "Silent Aim") and math.random(1, 100) <= flags["Aimbot Hitchance"] and guns.weapon_name ~= "Salvaged RPG";

                    if check and target.part and target.prediction_x and trace_back:find("MouseRaycast") then
                        local target_pos = (flags["Wallbang"] and target.hitscan or target.prediction_x);
                        return target.part, target_pos, target.part.CFrame.UpVector, target.part.Material;
                    end;

                    if (trace_back:find("VFXModule", 1, true)) then
                        local result = { old_raycast(self, origin, direction, filter_type, ignore_list, debug_ray, filter_function, ignore_water, depth) };

                        if (flags["Thick Bullet"] and target.part) then
                            local params = RaycastParams.new()
                            params.FilterType = Enum.RaycastFilterType.Include
                            params.FilterDescendantsInstances = { target.part }
                    
                            if typeof(result[2]) == "Vector3" then
                                local size = Vector3.new(flags["Thick Bullet Size"], flags["Thick Bullet Size"], flags["Thick Bullet Size"]);
                                local block_result = block_cast(workspace, CFrame.new(origin), size, direction, params);
                
                                if (block_result) then
                                    local position = origin + direction.Unit * math.min(block_result.Distance, 1000);
                                    if target.hair then
                                        return target.hair, position, block_result.Normal, block_result.Material
                                    else
                                        return target.part, position, block_result.Normal, block_result.Material
                                    end
                                end;
    
                                --[[if block_result then
                                    local distance_between = Vector3.new(-0.26287078857421875, 0.144287109375, 0.584716796875);
                                    if target.hair then
                                        return target.hair, target.hair.Position + distance_between, block_result.Normal, block_result.Material;
                                    end
                                end;]]
                            end;
                        end

                        if ((flags["Wallbang"] and target.hitscan) or (not flags["Wallbang"] and flags["InstantBullet"] and manipulation_pos)) and typeof(result[2]) == "Vector3" and target.part then
                            local offset = Vector3.new(-0.26287078857421875, 0.144287109375, 0.584716796875)
                            if target.hair then
                                return target.hair, target.hair.Position + offset, Vector3.new(0, 0, 1), target.hair.Material;
                            else
                                return target.part, target.part.Position + offset, Vector3.new(0, 0, 1), target.part.Material;
                            end;
                        end
                    end;

                    local output = { old_raycast(self, origin, direction, filter_type, ignore_list, debug_ray, filter_function, ignore_water, depth) };
                    local hit_instance, hit_pos = output[1], output[2];
                    local model = hit_instance and hit_instance.Parent;
                
                    if (hit_instance and typeof(hit_instance) == "Instance" and hit_pos and typeof(hit_pos) == "Vector3" and model and model:IsA("Model")) then
                        local folder = model.Parent;
                        if folder and folder:IsA("Folder") and (folder.Name == "Trees" or folder.Name == "Nodes") and flags["Silent Farm"] then
                            local perfect = model:FindFirstChild("NodeSpark") or model:FindFirstChild("TreeX");
                            if perfect and perfect:IsA("Model") and perfect.PrimaryPart then
                                output[1] = perfect.PrimaryPart;
                            end;
                        end;
                    end;

                    return unpack(output);
                end                 
            end;
        end)();
    end;
    LPH_NO_VIRTUALIZE(function() 
        -- Server
        do 
            local old_namecall = _G.old_namecall or getrawmetatable(game).__namecall;
            local mt = getrawmetatable(game);
            setreadonly(mt, false);
            
            mt.__namecall = newcclosure(function(self, ...)
                local args = {...};
                local method = getnamecallmethod();
            
                if (method == "FireServer") then
                    do -- Spinbot
                        if (self.Name == "Look" and flags["Spinbot"]) then
                            args[1] = (-flags["Spinbot Pitch"] / 90) * 0.79;
                            args[2] = 0;
                            return old_namecall(self, unpack(args));
                        end;
                    end;
                end;
            
                return old_namecall(self, ...);
            end);
            
            setreadonly(mt, true);        
        end;
        -- Indexing
        do 
            local mt = getrawmetatable(game);
            local old, old2 = mt.__newindex, mt.__index;
            setreadonly(mt, false);

            mt.__index = function(self, prop)
                if checkcaller() then return old2(self, prop) end;
                local cframe_new = old2(self, prop);

                if (flags["Third Person"] and flags["Third Person Key"] and self == camera and prop == "CFrame") then
                    if local_char and local_char.ViewmodelController and not local_char.ViewmodelController:GetAttribute("Aiming") then
                        local look_vector = cframe_new.LookVector
                        return cframe_new + look_vector * flags["Third Person Distance"]
                    end
                elseif (flags["Viewmodel Enabled"] and (prop == "CFrame" or prop == "Position") and (getfenv(2).script.Name == "VFXModule" or getfenv(2).script.Name == "ViewmodelController")) then
                    if (folder and (folder:FindFirstChild(self.Name) or (self.Parent and folder:FindFirstChild(self.Parent.Name)))) then
                        local right, up = camera.CFrame.RightVector * flags["Xpos"], camera.CFrame.UpVector * flags["Ypos"]
                        return cframe_new + right + up
                    end;
                end;           
            
                return old2(self, prop);
            end;
            
            mt.__newindex = function(self, prop, value)
                if checkcaller() then return old(self, prop, value) end;
            
                if self == camera and prop == "CFrame" and flags["Third Person"] and flags["Third Person Key"] then
                    if local_char and local_char.ViewmodelController and not local_char.ViewmodelController:GetAttribute("Aiming") then
                        return old(self, prop, value + camera.CFrame.LookVector * -flags["Third Person Distance"]);
                    end
                end;
            
                return old(self, prop, value);
            end;
            
            setreadonly(mt, true);
        end;
        -- Other
        do
            -- Disable Restrictions
            do
                local disable_restrictions = function(humanoid)
                    for _, v in getconnections(humanoid.StateChanged) do
                        if v.Function then
                            local data = debug.info(v.Function, "s");
                            if data:find("ViewmodelController", 1, true) then
                                local old; old = hookfunction(v.Function, function(...)
                                    if flags["Disable Restrictions"] then return end;
                                    return old(...);
                                end);
                            end;
                        end;
                    end;
                end;
                if (local_char and local_char:FindFirstChild("Humanoid")) then disable_restrictions(local_char.Humanoid) end
                local_player.CharacterAdded:Connect(function(v)
                    local humanoid, viewmodel_controller = v:WaitForChild("Humanoid"), v:WaitForChild("ViewmodelController");
                    if humanoid and viewmodel_controller then disable_restrictions(humanoid) end;
                end);
            end
            -- FieldOfView
            do
                if (_modules and _modules.SettingsModule) then
                    local adjust_speed, current_fov = 0.05, flags["FOV"];
                    local old_setting = settings_table.GetSetting; settings_table.GetSetting = function(cat, set, ...)
                        if (set == "Field Of View") then
                            local target_fov = flags["FOV"];
                    
                            if flags["Zoom"] and flags["Zoom key"] then target_fov = flags["Zoom FOV"] end;
                            if flags["Field Of View"] then
                                current_fov = current_fov + (target_fov - current_fov) * adjust_speed;
                            else
                                return 70;
                            end;
                    
                            return current_fov;
                        end
                        return old_setting(cat, set, ...);
                    end;  
                end; 
            end           
        end;
    end)();
end;

-- get gc / searching
local hit_function
local quick_stack_funcs = setmetatable({}, { __mode = "v" });
do
    if identifyexecutor() ~= "Swift" then
        local get_gc = LPH_NO_VIRTUALIZE(function()
            local stuff = getgc(false);
        
            for _, v in getreg() do 
                if type(v) == "function" then 
                    table.insert(stuff, v);
                end 
            end;
        
            for _, func in stuff do
                if type(func) ~= "function" or isexecutorclosure(func) or iscclosure(func) or isfunctionhooked(func) then continue end;
        
                local info = debug.getinfo(func);
                local func_name = info.name;

                if func_name == "LocalHitFunction" then
                    hit_function = func
                end;

                if (func_name == "PlayAnimation") then
                    local old_play_animation old_play_animation = hookfunction(func, function(animation_name, ...)
                        local args = {...};

                        if (animation_name == "Bolt") and flags["InstantBolt"] then
                            return {Length = 0.02};
                        end;

                        if (animation_name == "AimStart") and flags["InstantBow"] then
                            args[1] = 10;
                        end

                        local output = { old_play_animation(animation_name, unpack(args)) };
                        return unpack(output);  
                    end);
                    continue;
                end;

                if func_name == "QuickStackItem" then
                    table.insert(quick_stack_funcs, func);
                    continue;
                end;
            end;
        end);

        do -- Update Gc
            local check_child = LPH_NO_VIRTUALIZE(function(child)
                if not child:IsA("LocalScript") then return end

                if child.Name == "InventoryController" then
                    local initated = child:GetAttribute("Initiated")
            
                    if not initated then
                        child:GetAttributeChangedSignal("Initiated"):Wait()
                    end
            
                    task.delay(1, get_gc)
                end                 
            end);

            local_player.CharacterAdded:Connect(function(character)
                for _, child in character:GetChildren() do
                    check_child(child);
                end;
                character.ChildAdded:Connect(check_child);
            end);

            task.spawn(function()
                local character = local_player.Character;
                if character then
                    for _, child in character:GetChildren() do
                        check_child(child);
                    end;
                end;
            end);
        end;

        --[[task.spawn(function()
            while task.wait(0.1) do
                if hit_function and closest_part and table.find(utility.r15_rig, closest_part.Name) and local_char then
                    local player_root = local_char:FindFirstChild("HumanoidRootPart")
                    if player_root then
                        local distance = (closest_part.Position - player_root.Position).Magnitude
                        if distance <= 10 then
                            local distance_between = Vector3.new(-0.26287078857421875, 0.144287109375, 0.584716796875)
                            local hit_data = {
                                do a better distance between
                                [1] = closest_part,
                                [2] = closest_part.Position + distance_between,
                                [3] = Vector3.new(0, 0, 0),
                                [4] = closest_part.Material,
                                [5] = 0,
                                [6] = 0,
                                [8] = closest_part.CFrame + distance_between,
                                [9] = 1
                            }
                            hit_function(hit_data)
                        end
                    end
                end
            end
        end)]]
    end
    
    do -- Silent Walk
        local old_toggle_footstep = sound_table.ToggleFootstep;
        sound_table.ToggleFootstep = function(_, character, sound, playback_speed)
            if flags["Silent Walk"] and sound then
                return sound_table:StopSound(sound);
            end;
            return old_toggle_footstep(_, character, sound, playback_speed);
        end;
        local old_play_sound = sound_table.PlaySound;
        sound_table.PlaySound = function(_, sound, is_duplicate, playback_speed)
            if sound and sound.Name == "WalkWater" and flags["Silent Walk"] then
                return sound_table:StopSound(sound);
            end;
            return old_play_sound(_, sound, is_duplicate, playback_speed);
        end;
    end;
end;

do -- loops & checks
    local original_transparency = {}; --- third peron
    local original = nil
    local fov_tick, fov_rotation = tick(), 0;
    local shooting = false;
    local last_targeted_player_name = nil
    local last_shot_time = 0;
    local shot_delay = 0.15;

    do -- heartbeat
        framework.modules.signals.connection(run_service["Heartbeat"], LPH_NO_VIRTUALIZE(function(delta)
            local hrp = local_char and local_char:FindFirstChild("HumanoidRootPart");
            local human = local_char and local_char:FindFirstChildOfClass("Humanoid");

            do -- FlyHack
                if (flags["FlyHack"] and hrp) then
                    local space = uis:IsKeyDown(Enum.KeyCode.Space)
                    local climb_speed = flags["FlyHack Speed"]
                    local old_sigma = hrp.AssemblyLinearVelocity

                    if space then
                        on_screen.flyhack.Visible = true;
                        hrp.CFrame = hrp.CFrame * CFrame.new(0, climb_speed * delta, 0)
                        hrp.AssemblyLinearVelocity = Vector3.new(0, -9e9, 0)
                        run_service.RenderStepped:Wait()
                        hrp.AssemblyLinearVelocity = Vector3.new(old_sigma.X, climb_speed, old_sigma.Z)
                    elseif human:GetState() == Enum.HumanoidStateType.Freefall and not space then
                        on_screen.flyhack.Visible = false;
                        local current_velocity = hrp.AssemblyLinearVelocity
                        hrp.AssemblyLinearVelocity = Vector3.new(0, -9e9, 0)
                        run_service.RenderStepped:Wait()
                        hrp.AssemblyLinearVelocity = Vector3.new(current_velocity.X, math.clamp(current_velocity.Y, -7.5, 0), current_velocity.Z)
                    end
                end       
            end;
                        
            do -- Spinbot
                if (flags["Spinbot"] and flags["Spinbot Mode"] ~= "None" and hrp and human) then
                    human.AutoRotate = false
                    local current_time = tick()
                
                    if guns.shot then
                        if closest_part and closest_part.Position then
                            local closest_part_pos = closest_part.Position
                            local look_dir = (closest_part_pos - hrp.Position).unit
                            hrp.CFrame = CFrame.new(hrp.Position, hrp.Position + Vector3.new(look_dir.X, 0, look_dir.Z))
                            last_shot_time = current_time
                        end
                        guns.shot = false
                    elseif not guns.shot and current_time - last_shot_time >= shot_delay then
                        if flags["Spinbot Mode"] == "Backtrack" then
                            local look = camera.CFrame.LookVector
                            hrp.CFrame = CFrame.new(hrp.Position, hrp.Position + Vector3.new(look.X, 0, look.Z))
                            hrp.CFrame = CFrame.new(hrp.Position, hrp.Position - hrp.CFrame.LookVector)
                        elseif flags["Spinbot Mode"] == "HvH" then
                            local random_yaw = math.rad(math.random(0, 360))
                            local jitter_x = math.random(-1, 1) * 0.1
                            local jitter_z = math.random(-1, 1) * 0.1
                            local look = camera.CFrame.LookVector
                            local jittered_look = Vector3.new(look.X + jitter_x, 0, look.Z + jitter_z)
                            hrp.CFrame = CFrame.new(hrp.Position, hrp.Position + jittered_look) * CFrame.Angles(0, random_yaw, 0)
                        end                            
                    end
                elseif human then
                    human.AutoRotate = true
                end                                                
            end; 

            do -- SpeedHack
                if (flags["SpeedHack"]) then
                    if uis:IsKeyDown(Enum.KeyCode.W) or uis:IsKeyDown(Enum.KeyCode.A) or uis:IsKeyDown(Enum.KeyCode.S) or uis:IsKeyDown(Enum.KeyCode.D) then
                        if hrp and human then
                            local dir = human.MoveDirection.Unit;
                            if dir.Magnitude > 0 then
                                local speed = flags["SpeedHack Speed"];
                                if human:GetState() == Enum.HumanoidStateType.Jumping or human:GetState() == Enum.HumanoidStateType.Freefall then
                                    speed = speed * 0.75;
                                end;
                                on_screen.speedhack.Visible = true;
                                hrp.Velocity = Vector3.new(dir.X * speed, hrp.Velocity.Y, dir.Z * speed);
                            end;
                        end;
                    else
                        on_screen.speedhack.Visible = false;
                    end;
                end;
            end;

            do -- Resolver
                if flags["AntiFling"] or flags["Resolver"] or flags["Noclip"] then
                    for _, p in pairs(players:GetPlayers()) do
                        if p ~= local_player and p.Character then
                            if flags["AntiFling"] then
                                for _, part in ipairs(p.Character:GetChildren()) do
                                    if part:IsA("BasePart") then part.CanCollide = false end
                                end
                            end
                            if flags["Resolver"] then
                                local h = p.Character:FindFirstChildWhichIsA("Humanoid")
                                local a = h and h:FindFirstChildOfClass("Animator")
                                if a then
                                    for _, t in pairs(a:GetPlayingAnimationTracks()) do
                                        if t.Animation and t.Animation.AnimationId == "rbxassetid://13435049596" then t:Stop() end
                                    end
                                end
                            end
                        end
                    end

                    if (flags["Noclip"] and flags["Noclip Key"]) then
                        on_screen.noclip.Visible = true
                        for _, v in pairs(local_char:GetDescendants()) do
                            if v:IsA("BasePart") then
                                v.CanCollide = false
                            end
                        end
                    else
                        on_screen.noclip.Visible = false
                    end;
                end
            end;

            do -- Third Person
                if (flags["Third Person"] and flags["Third Person Key"] and not local_char.ViewmodelController:GetAttribute("Aiming")) then
                    for _, v in ipairs(folder:GetDescendants()) do
                        if v:IsA("BasePart") and not original_transparency[v] then
                            original_transparency[v], v.Transparency = v.Transparency, 1
                        end
                    end
                else
                    for v, t in pairs(original_transparency) do
                        if v and v.Parent then v.Transparency = t end
                    end
                    table.clear(original_transparency)
                end 
            end;

            do -- Spoofing
                if (flags["Spoof Username"]) then
                    local gui = local_player:FindFirstChild("PlayerGui");
                    local list = gui and gui:FindFirstChild("Main") and gui.Main:FindFirstChild("Team") and gui.Main.Team:FindFirstChild("TeamList");
                    if list then
                        for _, v in ipairs(list:GetDescendants()) do
                            if v:IsA("TextLabel") and v.Text == local_player.Name then
                                v.Text = "discord.gg/synapsewtf";
                            end;
                        end;
                    end;
                end;
            end;

            do -- Fast Loot
                if flags["Instant Loot"] and quick_stack_funcs and #quick_stack_funcs > 0 then
                    for _, func in quick_stack_funcs do
                        debug.setconstant(func, 18, flags["Instant Loot"] and 0 or 0.3);
                        debug.setconstant(func, 19, flags["Instant Loot"] and 0 or 0.1);
                    end;
                end;
            end;
        end)) 
    end

    do -- Renderstepped
        framework.modules.signals.connection(run_service["RenderStepped"], LPH_NO_VIRTUALIZE(function()
            local hrp = local_char and local_char:FindFirstChild("HumanoidRootPart");
    
            do -- Targetting
                entry, closest_part, closest_distance, entry_model = functions.find_target();
                if (closest_part ~= target.part) then
                    target.part = closest_part
                    target.entry = entry
                    target.entry_model = entry_model
                    target.distance = closest_distance
                end
                target.highlight_player = entry;
            end; 

            do -- Prediction
                target.prediction_x, target.prediction_y, target.manip = functions.prediction(closest_part, entry and closest_part and entry_model:FindFirstChild("Humanoid"), guns.projectile_gravity, guns.projectile_speed, true);
            end

            do -- Debug Camera
                if flags["Debug Camera"] and flags["Debug Camera Key"] and hrp then
                    on_screen.debug_camera.Visible = true;
                    if original == nil then
                        original = camera.CFrame
                        local pos = camera.CFrame.Position
                        local look = camera.CFrame.LookVector
                        camera.CameraType = Enum.CameraType.Scriptable
                        camera.CFrame = CFrame.lookAt(pos, pos + look)
                        hrp.Anchored = true
                    end

                    local delta = uis:GetMouseDelta()
                    local cf = camera.CFrame
                    cf *= CFrame.Angles(-math.rad(delta.Y), 0, 0)
                    cf = CFrame.Angles(0, -math.rad(delta.X), 0) * (cf - cf.Position) + cf.Position
                    camera.CFrame = camera.CFrame:Lerp(CFrame.lookAt(cf.Position, cf.Position + cf.LookVector), 0.3)

                    local move = Vector3.new((uis:IsKeyDown(Enum.KeyCode.A) and -1 or 0) + (uis:IsKeyDown(Enum.KeyCode.D) and 1 or 0), 0, (uis:IsKeyDown(Enum.KeyCode.W) and -1 or 0) + (uis:IsKeyDown(Enum.KeyCode.S) and 1 or 0))
                    if move.Magnitude > 0 then
                        camera.CFrame *= CFrame.new(move.Unit * 0.5)
                    end
                else
                    on_screen.debug_camera.Visible = false;
                    if original ~= nil then
                        camera.CameraType = Enum.CameraType.Custom
                        camera.CFrame = original
                        hrp.Anchored = false
                        original = nil
                    end
                end
            end;
    
            do -- HairPart
                if (entry and entry_model and closest_part and entry_model:FindFirstChild("Hair")) then
                    local hair = entry_model:FindFirstChild("Hair");
                    if hair then
                        target.hair = hair:FindFirstChild("HairPart");
                    else
                        target.hair = nil;
                    end
                else
                    target.hair = nil;
                end
            end;
    
            do -- Manipulation
                if (flags["Manipulation"] and closest_part) then
                    manipulation_pos = functions.manipulated_pos(functions.barrel_endpoint2(), entry.Character, closest_part, flags["Manipulation"]);
                else
                    manipulation_pos = nil;
                end;        
            end;
    
            do -- Autoshoot
                -- old
            end;
    
            do -- World Lighting
                lighting.FogEnd = (flags["Remove Fog"]) and 100000 or utility.game.FogEnd;
        
                if (atmosphere) then
                    if (flags["Remove Fog"]) then
                        atmosphere.Density, atmosphere.Offset, atmosphere.Glare, atmosphere.Haze = 0, 0, 0, 0;
                    else
                        atmosphere.Density = utility.game.Density;
                        atmosphere.Offset = utility.game.Offset;
                        atmosphere.Glare = utility.game.Glare;
                        atmosphere.Haze = utility.game.Haze;
                    end;
                end;
        
                lighting.ClockTime = (flags["Ingame Time"]) and flags["Game Time"] or utility.game.ClockTime;
                lighting.Ambient = (flags["Ambience"]) and flags["Ambience Accent"] or utility.game.Ambient;
                lighting.OutdoorAmbient = (flags["Ambience"]) and flags["OutdoorAmbience Accent"] or utility.game.OutdoorAmbient;
            end;    
            
            do -- Prediction Dot
                if flags["Prediciton Dot"] and target.prediction_x then
                    local pos, on_screen = camera:WorldToViewportPoint(target.prediction_x)
                    if on_screen then
                        prediction_dot.Circle.Position = UDim2.fromOffset(pos.X, pos.Y)
                        prediction_dot.Circle.BackgroundColor3 = flags["Dot Accent"]
                        prediction_dot.Circle.Visible = true
                    else
                        prediction_dot.Circle.Visible = false
                    end
                else
                    prediction_dot.Circle.Visible = false
                end
            end;
            --
            do -- Armor Bar
                if (flags["Armor Bar"]) then
                    if closest_part then
                        armor_bar.icon_holder.Visible = true
                        armor_bar.icon_holder.Position = UDim2.new(flags["Info X-Pos"] / 100, 0, flags["Info Y-Pos"] / 100, 45)

                        if last_targeted_player_name ~= entry.Name then
                            for _, child in ipairs(armor_bar.icon_holder:GetChildren()) do
                                if child:IsA("ImageLabel") then
                                    child:Destroy()
                                end
                            end
                            last_targeted_player_name = entry.Name
                        end

                        local armorIcons = functions.get_armor_icon(entry.Character)
                        if armorIcons and #armorIcons > 0 then
                            local index = 0
                            for _, armorIcon in ipairs(armorIcons) do
                                local exists = false
                                for _, child in ipairs(armor_bar.icon_holder:GetChildren()) do
                                    if child:IsA("ImageLabel") and child.Image == armorIcon then
                                        exists = true
                                        break
                                    end
                                end
                                if not exists then
                                    local newIcon = Instance.new("ImageLabel")
                                    newIcon.Parent = armor_bar.icon_holder
                                    newIcon.Size = UDim2.new(0, 85, 0, 85)
                                    newIcon.Position = UDim2.new(0, index * (80 + 10), 0, 0)
                                    newIcon.Image = armorIcon
                                    newIcon.Visible = true
                                    newIcon.BackgroundTransparency = 0.8
                                    newIcon.BackgroundColor3 = Color3.new(0, 0, 0)

                                    local corner = Instance.new("UICorner")
                                    corner.CornerRadius = UDim.new(0, 10)
                                    corner.Parent = newIcon

                                    index += 1
                                end
                            end
                        end
                    else
                        armor_bar.icon_holder.Visible = false
                    end
                else
                    for _, child in ipairs(armor_bar.icon_holder:GetChildren()) do
                        if child:IsA("ImageLabel") then
                            child:Destroy()
                        end
                    end
                    armor_bar.icon_holder.Visible = false
                end;
            end

            do -- Onscreen
                -- Positions
                local baseY = camera.ViewportSize.Y / 2 + 30
                local spacing = 10
                local index = 0

                if on_screen.debug_camera.Visible then
                    on_screen.debug_camera.Position = UDim2.new(0.5, 0, 0, baseY + spacing * index)
                    index += 1 
                end
                if on_screen.speedhack.Visible then
                    on_screen.speedhack.Position = UDim2.new(0.5, 0, 0, baseY + spacing * index)
                    index += 1
                end
                if on_screen.flyhack.Visible then
                    on_screen.flyhack.Position = UDim2.new(0.5, 0, 0, baseY + spacing * index)
                    index += 1
                end
                if on_screen.noclip.Visible then
                    on_screen.noclip.Position = UDim2.new(0.5, 0, 0, baseY + spacing * index)
                end
            end
    
            do -- Crosshair
                if (flags["Enable Crosshair"]) then
                    local gap, length, width = flags["Crosshair Gap"], flags["Crosshair Length"], flags["Crosshair Width"];
    
                    crosshair.CrossTop.Size = udim2_new(0, width, 0, length)
                    crosshair.CrossBottom.Size = udim2_new(0, width, 0, length)
                    crosshair.CrossLeft.Size = udim2_new(0, length, 0, width)
                    crosshair.CrossRight.Size = udim2_new(0, length, 0, width)
                
                    crosshair.CrossTop.Position = udim2_new(0.5, 0, 0.5, -gap)
                    crosshair.CrossBottom.Position = udim2_new(0.5, 0, 0.5, gap)
                    crosshair.CrossLeft.Position = udim2_new(0.5, -gap, 0.5, 0)
                    crosshair.CrossRight.Position = udim2_new(0.5, gap, 0.5, 0)
                
                    local target = (closest_part and flags["Highlight Target"]) and flags["Highlight Accent"] or flags["Crosshair Accent"];
                    if typeof(target) == "Color3" then
                        local lerp_color = crosshair.CrossTop.BackgroundColor3:Lerp(target, 0.01);
                        crosshair.CrossTop.BackgroundColor3 = lerp_color;
                        crosshair.CrossBottom.BackgroundColor3 = lerp_color;
                        crosshair.CrossLeft.BackgroundColor3 = lerp_color;
                        crosshair.CrossRight.BackgroundColor3 = lerp_color;
                    end;
                    
                    local target_position = uis:GetMouseLocation();
                    local container = crosshair.CrossContainer;
                    container.Position = UDim2.new(0, target_position.X, 0, target_position.Y)
                
                    container.Rotation = flags["Spin Crosshair"] and (tick() * 120 % 360) or 0;
                    local target_alpha = (local_char and local_char.ViewmodelController:GetAttribute("Aiming") and flags["Crosshair Fade"]) and 0 or 1
                    fov_alpha = fov_alpha + (target_alpha - fov_alpha) * 0.10
                
                    local transparency = 1 - fov_alpha
                    crosshair.CrossTop.BackgroundTransparency = transparency
                    crosshair.CrossBottom.BackgroundTransparency = transparency
                    crosshair.CrossLeft.BackgroundTransparency = transparency
                    crosshair.CrossRight.BackgroundTransparency = transparency
                
                    container.Visible = true
                    crosshair.CrossTop.Visible = true
                    crosshair.CrossBottom.Visible = true
                    crosshair.CrossLeft.Visible = true
                    crosshair.CrossRight.Visible = true
                else
                    crosshair.CrossContainer.Visible = false
                end;                                                    
            end;           
    
            do -- FOV Circle
                if (flags["Enable FOV"]) then
                    fov_circle.Frame.Visible = true;
                    local size = flags["FOV Radius"] * 2 / math.tan(math.rad(camera.FieldOfView / 2));
                    fov_circle.Frame.Size = UDim2.new(0, size, 0, size);
                    fov_circle.Frame.Position = UDim2.new(0, uis:GetMouseLocation().X, 0, uis:GetMouseLocation().Y);

                    if (flags["Enable Outlines"]) then
                        fov_circle.Frame2.Visible = true;
                        fov_circle.Frame2.Size = UDim2.new(0, size - 2, 0, size - 2);
                        fov_circle.Frame2.Position = UDim2.new(0, uis:GetMouseLocation().X, 0, uis:GetMouseLocation().Y);
                    else
                        fov_circle.Frame2.Visible = false;
                    end;

                    fov_circle.Gradient.Color = ColorSequence.new{ ColorSequenceKeypoint.new(0, flags["FOV Gradient Left"]), ColorSequenceKeypoint.new(1, flags["FOV Gradient Right"]) };
                    
                    local spin_speed = 300 / 2;
                    fov_rotation = fov_rotation + (tick() - fov_tick) * spin_speed * math.cos(math.pi / 4 * tick() - math.pi / 2);
                    fov_tick = tick();
                    fov_circle.Gradient.Rotation = fov_rotation;
                else
                    fov_circle.Frame.Visible = false;
                    fov_circle.Frame2.Visible = false;
                end;       
            end; 
    
            do -- Snaplines
                if (flags["Enable Aimbot"] and flags["Enable Snaplines"]) then
                    snap_lines.ui_stroke.Enabled = flags["Enable Outlines"]
                    local line = snap_lines.line
                    if (closest_part) then
                        local from = Vector2.new(camera:WorldToViewportPoint(closest_part.Position).X, camera:WorldToViewportPoint(closest_part.Position).Y)
                        local to
                        if (folder and #folder:GetChildren() > 0) then
                            local flash_part = folder:GetChildren()[1]:FindFirstChild("Weapon"):FindFirstChild("FlashPart")
                            if (flash_part) then
                                to = (flags["Third Person"] and flags["Third Person Key"]) and uis:GetMouseLocation() or Vector2.new(camera:WorldToViewportPoint(flash_part.Position).X, camera:WorldToViewportPoint(flash_part.Position).Y)
                            end
                        end
                        to = to or uis:GetMouseLocation()
                        if (to) then
                            local offset = to - from
                            line.Position = UDim2.new(0, from.X + offset.X * 0.5, 0, from.Y + offset.Y * 0.5)
                            line.Rotation = math.deg(math.atan2(offset.Y, offset.X))
                            line.Size = UDim2.new(0, math_floor(offset.Magnitude + 0.5), 0, 1)
                            line.BackgroundColor3 = flags["Snaplines Accent"]
                            line.Visible = true
                        else
                            line.Visible = false
                        end
                    else
                        line.Visible = false
                    end
                else
                    snap_lines.line.Visible = false
                end            
            end;
            
            do -- Aimbot
                if (entry and closest_part and entry ~= local_player and functions.has_item()) then
                    if (flags["Enable Aimbot"] and table.find(flags["Aimbot Method"], "Aimbot") and uis:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)) then
                        if (target.prediction_x) then
                            camera.CFrame = camera.CFrame:Lerp(CFrame.lookAt(camera.CFrame.p, target.prediction_x), flags["Aimbot Smoothing"]);   
                        end;          
                    end;
                end;
            end;
        end));
    end
end;

-- Loaded
UI:Notification("Welcome, "..LRM_LinkedDiscordID.."!", 6, def_color);
UI:Notification("and you executed this script "..LRM_TotalExecutions.." in total", 5, def_color);
UI:Notification("Your access will end in ".. LRM_SecondsLeft / 86400 .." days", 4, color3_fromrgb(255, 0, 0));
task.delay(os.clock() - end_time, function() end);
UI:Notification(string.format("(%.2f ms) took to load.", os.clock() - end_time), 10, color3_fromrgb(0, 255, 0));

do -- Mod Detector
    local high_roles = {["Game Moderator"]=true,["Developer"]=true,["Lead Developer"]=true,["Co-Founder"]=true,["Founder"]=true};
    local detected = {};

    local function update()
        local count = 0 for _ in pairs(detected) do count += 1 end
        mod_list.Text2.Text = count.." moderator"..(count==1 and "" or "s").." found"
        mod_list.Text2.TextColor3 = count > 0 and Color3.fromRGB(255,0,0) or Color3.fromRGB(0,255,0)
    end;

    local function check(p)
        if p == local_player then return end
        local s,r=pcall(p.GetRoleInGroup,p,1154360)
        if s and high_roles[r] then
            UI:Notification("⚠️ Mod detected: "..p.DisplayName.." is in the game.",3,Color3.fromRGB(255,0,0))
            detected[p]=true 
            update();
        end
    end;

    for _,p in ipairs(players:GetPlayers()) do check(p) end
    players.PlayerAdded:Connect(check)
    players.PlayerRemoving:Connect(function(p)
        if detected[p] then
            UI:Notification("✅ Mod left: "..p.DisplayName.." has left the game.",5,Color3.fromRGB(0,255,0))
            detected[p]=nil 
            update();
        end
    end);
    update();
end;

do -- Detections
    -- game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(Check)
    --     if Check.Name == "ErrorPrompt" then
    --         wait(0.5)
    --         local url = "https://discord.com/api/webhooks/1375380791126654987/5MmPLFMcia2grDO9QGyndIfoHDxOgVC2D0lyzg3bfWMLObyqk1nSxoGEgFpYrj3enmiv"
    --         local data = {
    --             ["embeds"] = {{
    --                 ["title"] = "**Detection**",
    --                 ["description"] = "\n**User:** <@"..LRM_LinkedDiscordID..">\n **Message:** "..Check.MessageArea.ErrorFrame.ErrorMessage.Text,
    --                 ["type"] = "rich", 
    --                 ["color"] = tonumber(0xA60842),
    --                 ["footer"] = {
    --                     ["icon_url"] = "https://i.imgur.com/hW2n9kB.png",
    --                     ["text"] = "Fallen Survival"
    --                 }
    --             }}
    --         }
    --         local newdata = game:GetService("HttpService"):JSONEncode(data)
    --         local headers = {["content-type"] = "application/json"}
    --         local request = http_request or request or HttpPost or syn.request
    --         if request then
    --             request({Url = url, Body = newdata, Method = "POST", Headers = headers})
    --         end
    --     end
    -- end);
end;

for i = 1, 3 do
    for _, v in getconnections(local_player.PlayerScripts.ChatController.System.Event) do
        local text = [[<font color="rgb(128, 128, 242)">[SOL</font><font color="rgb(255, 0, 0)">AHUB]</font><font color="rgb(255, 0, 0)"></font>]]
        local message = {
            Channel = "System",
            DisplayName = text,
            Message = "LOADED - FallenGuard bypassed 😯🙀!",
            Time = tick()
        };
        local connection_function = v.Function
        local connection_upvalues = getupvalues(connection_function)
        
        table.insert(connection_upvalues[2], message)
        connection_upvalues[3]()
    end;
end;