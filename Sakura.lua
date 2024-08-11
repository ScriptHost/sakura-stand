---------------------------   Sakura.lua | Made by Akolpa | Version : 0.0.3   --------------------------
--     ++=====-=====:.:=+====++++====+==-=====--=-::::: .===::------------:...:........::.:+-.-*+     --
--     =======+=====-:.:=+++==+========---------=-:::::: .---:::::::::------:::.........:.:::::**     --
--     +====+=========-.:=++==========-::-------=-::::::..::--.:::::::::::::::--:........:++:::=*     --
--     ++++=+==========:.-==========---::-------=::::::::..::::.:::::::::::.. ...:.......:+*+:--*     --
--     ++==++=======:==--=======--=---:.:-------=::::::.:..::::::::::::::::::::.  ........-**+--+     --
--     +++++========-===========-=----::---::::-=::::::.:...::-=::::::::::::::::::.  .....:=**--+     --
--     ++++===================--=-:::::-=-:::::--:::....::...::.::::::::::::::::::--:......:+*--=     --
--     ++++=====----==--====-----::::::-==-::::-:........:...::::  .:--:::::::::::-----:....:=--=     --
--     ++++==============-------::::::-===-:::--.........:...::::     .:-=--:::::::-----::....:-+     --
--     ++++==++++=======------:::::::-------:--..........:.....::.       ::-::::::::-------::-..-     --
--     ++++++++========-----::::::::---. .::--:..........:.....:::         .-:::::::......:::::..     --
--     ++++++========-----:::::::::---: ..  .::................:::  ..       .:::::::::::::....::     --
--     ++++======-==-----:::::::::---: .      .::..............:::..           .-::::-:::--=+=---     --
--     +++=====----------:::::::::::-..          .............:.::.       ...:   :-:::-:::::-+===     --
--     ++====--------::::::::::::.::.. .......    .............:...   ..:-=-=::-:..-:::-:::::==::     --
--     +========-=--::::::::::::.::....            ................ .::---- ....   .:-::-::::-=::     --
--     ====-----==--:::::::::-:.::                  ................::::..:   .     ..--:-:::::--     --
--     ==------==--::::::::-:..:.                   ...... ................   . ..   ..:-::::::::     --
--     =====---=-------::-:..:-.         .          ..... .............. ..     ----: ...--::::::     --
--     ====--==-----:::--...--.   ....::::.::.       ............. ...   ..  .  -=====::..:-:::::     --
--     =======----::---...:-::....:::::::::. ...     .......... .   ..  .:      -=======:..::::::     --
--     ====--------::.:.:--::..:-:...:::..:.         ...........               .-========:..:::::     --
--     ======----::::::-=:.:.:-:::..........        ..........                 .--========:..::::     --
--     ===-----::::::-=-:.::::.::::.....  :.       .   ...                     .--========+-:::::     --
--     =-----::::::-==--::::-. .......   ..           ...                      .-=======++++=.:::     --
--     ------::::-=--:-:-::.:.  ...     ..            .                        .-==++==+++++=..::     --
--     -------::-=-::-.-:::. ... ....               .                          :-=++++++++++=.:::     --
--     =-----=--=---::--:::..                                                  --==+++++++++::::.     --
--     --===--::---::---:::..                                                 :-=+++++++++=.::.       --
--     ==-::::::--::----:::..                                                :-====+++==-. .  :-      --
--     ::....::----==--::::..                                               :-===-:::..   .:-==+      --
--     =:::.:-----=+=-:::::.:..                                           .-======-:.  .:=++**+-      --
--     ++=---------++=:-::::.:::.                                       .:-====-:::::-=++****+-.      --
--     ++==----===-=++---::: ....:..                                   :-===++++====++***++=-:. -     --
--     +----========++=----:.........                                .-===+++++++++++**+=-::--:=*     --
--     -===++++=====-=+=----:............                          .-====+++++++++******+**+=-+*#     --
--     +***###**+===--=+=----:..................                  .------===+++++*******+====**##     --
--     ***#####*+===----===----::...................:......     ...       ..:=+*************#####     --
--     ***##**+++++==------=-:..--::...............:.. ........:.           .==+*********########     --
--     ##**+++++++===---=------:..::--:::::::-....-... .....                 ==+******###########     --
--     ++++++++++======--====-----::..::::---:...:::::........              .=+*******###########     --
--     ++****##*+==========+++===------==-:......-::::.........             :++******####**######     --
--     ########*+===========++++===----:::::....-:.:::.........:.          .===******####*++#####     --
--     #######*+==============+*++=:...:::::::..-:..::. ......::::        .==..+*****#####*++####     --
--     #####**+====++===========++*+=:..::::::::....:..   .... .:-:      .=+:..+******####****###     --
--------------------------------------------------------------------------------------------------------

-------------------
-- Various Requirements
-------------------
util.require_natives("3095a", "g", "1663599433", "1672190175", "1640181023", "2944a", "1681379138", "1676318796")
local json = require("json")

-------------------
-- Shorthands
-------------------
    -- Menu
        root = menu.my_root()
        li = menu.list
        act = menu.action
        tog = menu.toggle
        togl = menu.toggle_loop
        txt_inp = menu.text_input
        co = menu.trigger_commands
        path = menu.ref_by_path
        rpath = menu.ref_by_rel_path
        slider = menu.slider
        cslider = menu.click_slider
        foc = menu.focus
        div = menu.divider
        gval = menu.get_value
        vis = menu.set_visible
        vrepl = menu.add_value_replacement
    -- Players
        user = players.user
        name = players.get_name
        rid = players.get_rockstar_id
    -- Players - User
        uname = players.get_name(user())
        urid = players.get_rockstar_id(user())
        usrrid = players.get_rockstar_id(user())
    -- Chat
        msg = chat.send_message
    -- Util
        ru = util.keep_running
        tst = util.toast
        htst = util.show_corner_help
        dbgtxt = util.draw_debug_text
        ctrtxt = util.draw_centred_text
        rss = util.restart_script
        sss = util.stop_script
        copy = util.copy_to_clipboard
        yi = util.yield
        joaat = util.joaat
        stop = util.stop_thread
        tickhandler = util.create_tick_handler
    -- Other Shorthands
        -- Script Info Shorthands
            sver = "0.0.3"
            sbre = "release"
            nsver = "0.0.4"
        -- Credits Shorthands
            jinx = path("Stand>Lua Scripts>Repository>JinxScript")
        -- Staff RIDs
            ako = "252617333"
-------------------
-- Startup Stuff
-------------------
    htst($"Welcome to ~r~Sakura~w~, {uname} !\nCurrent Script Version : {sver}")
    co("clearnotif;clearstand")

-------------------
-- Fonctions
-------------------

    -- Ctrl + C et Ctrl + V

        -- Jinx
            local function isDetectionPresent(playerID, detection)
                if players.exists(playerID) and menu.player_root(playerID):isValid() then
                    for menu.player_root(playerID):getChildren() as cmd do
                        if cmd:getType() == COMMAND_LIST_CUSTOM_SPECIAL_MEANING and cmd:refByRelPath(detection):isValid() and players.exists(playerID) then
                            return true
                        end
                    end
                end
                return false
            end

            local function isPlayerInCutscene(playerID)
                return NETWORK_IS_PLAYER_IN_MP_CUTSCENE(playerID) or IS_PLAYER_IN_CUTSCENE(playerID)
            end
    
            local function isPlayerRidingRollerCoaster(playerID)
                return bitTest(memory.read_int(memory.script_global(GlobalplayerBD_FM + 1 + (playerID * 877) + 873)), 15) -- Global_1845263[PLAYER::PLAYER_ID() /*877*/].f_873
            end
    
            local function isFreemodeActive(playerID)
                return NETWORK_IS_PLAYER_A_PARTICIPANT_ON_SCRIPT(playerID, "freemode", -1)
            end
    
            local function getPlayerCurrentInterior(playerID)
                if not isNetPlayerOk(playerID) then return end -- to prevent random access violations
                return memory.read_int(memory.script_global(GlobalplayerBD + 1 + (playerID * 463) + 245)) -- Global_2657921[bVar0 /*463*/].f_245
            end
                
            local function isPlayerInInterior(playerID)
                if not isNetPlayerOk(playerID) then return end
                return GET_INTERIOR_GROUP_ID(getPlayerCurrentInterior(playerID)) == 0 and getPlayerCurrentInterior(playerID) != 0 or players.is_in_interior(playerID)
            end

            local function isNetPlayerOk(playerID, assert_playing = false, assert_done_transition = true)
                if not NETWORK_IS_PLAYER_ACTIVE(playerID) then return false end
                if assert_playing and not IS_PLAYER_PLAYING(playerID) then return false end
                if assert_done_transition then
                    if playerID == memory.read_int(memory.script_global(2672741 + 3)) then
                        return memory.read_int(memory.script_global(2672741 + 2)) != 0
                    elseif memory.read_int(memory.script_global(GlobalplayerBD + 1 + (playerID * 463))) != 4 then -- Global_2657921[iVar0 /*463*/] != 4
                        return false
                    end
                end
                return true
            end

            local function getPlayerJobPoints(playerID)
                return memory.read_int(memory.script_global(GlobalplayerBD_FM + 1 + (playerID * 877) + 9))  -- Global_1845263[PLAYER::PLAYER_ID() /*877*/].f_9
            end
    
            local function isPlayerInAnyVehicle(playerID)
                local ped = GET_PLAYER_PED_SCRIPT_INDEX(playerID)
                return IS_PED_IN_ANY_VEHICLE(ped) and not IS_REMOTE_PLAYER_IN_NON_CLONED_VEHICLE(playerID)
            end
    
            local function bitTest(bits, place)
                return (bits & (1 << place)) != 0
            end
            
            local function setBit(addr: number, bit: number)
                memory.write_int(addr, memory.read_int(addr) | 1 << bit)
            end
            
            local function clearBit(addr: number, bit: number)
                memory.write_int(addr, memory.read_int(addr) ~ 1 << bit)
            end
        -- Autre Scripts

    -- Propres fonctions


-------------------
-- Root - Lists
-------------------
    ma = root:list("Sakura - Main")
        se = ma:list("Self")
        ve = ma:list("Vehicle")
        onl = ma:list("Online")
    credits = root:list("Credits")
        credits:action("Akolpa", {}, "", function() end)
        credits:action("im_too_strong", {}, "", function() end)
            mcreds = credits:list("More Credits")
            mcreds:action("Prizuhm", {}, "JinxScript, also stole some stuff from him.", function()
                foc(jinx)
            end)
    info = root:list("Script Information")
        info:action("Restart Script - Sakura", {"srestart"}, "", function()
            rss()
        end)
        info:action("Stop Script - Sakura", {"sstop"}, "", function()
            sss()
        end)
        infod = info:list("Others")
            div(infod, $"Script Version : {sver}")
            div(infod, $"Script Brench : {sbre}")
            div(infod, $"Next (Planned) Version : {nsver}")
            infodp = infod:list("Playground", {}, "Anything that is experimental / I wanna try out stuff, I'll put it here.")
                infodpn = infodp:list("Notification Playground")
                    txt_inp(infodpn, "Text", {"sdev-notiftxt"}, "", function()
                    end)
                    act(infodpn, "Stand Notify", {}, "", function()
                        tst(gval(rpath(infodpn, "Text")))
                    end)
                    act(infodpn, "GTA Notify", {}, "", function()
                        htst(gval(rpath(infodpn, "Text")))
                    end)
                    togl(infodpn, "Stand Notify", {}, "", function()
                        tst(gval(rpath(infodpn, "Text")))
                    end)
                    togl(infodpn, "GTA Notify", {}, "", function()
                        htst(gval(rpath(infodpn, "Text")))
                    end)
                    togl(infodpn, "Stand Notify Loop", {}, "", function(on)
                        local count = 0
                        tickhandler(function()
                            count = count + 1
                            tst($"Notification Count : {count}")
                        end)
                    end)
                infodpoth = infodp:list("Others")

-------------------
-- Self
-------------------

-------------------
-- Vehicle
-------------------
    ve_rh = ve:list("Rainbow Headlights")
        local rhdel = 100
        ve_rh:slider("Delay", {}, "", 0, 1000, 100, 50, function(rhdel2)
            rhdel = rhdel2
        end)

        togl(ve_rh, "Rainbow Headlights", {}, "", function()
            for p = 0, 14 do
                yi(rhdel)
                co($"headlights {p}")
            end
        end)

    ve_ran = ve:list("Tune Randomiser")
        local randel = 50
        ve_ran:slider("Delay", {}, "", 0, 500, 50, 50, function(randel2)
            randel = randel2
        end)

        togl(ve_ran, "Tune", {}, "", function()
            yi(randel)
            co("randomtune")
        end)


-------------------
-- Online
-------------------
recoveries = onl:list("Recovery")
    reco_bounty = recoveries:list("Bounty Method")
        local btyamt = 1000
        reco_bounty:slider("Amount : ", {"recobountyamt"}, "", 0, 10000, 1000, 1000, function(btyamt2)
            btyamt = btyamt2
        end)
        togl(reco_bounty, "Loop Bounties", {}, "", function()
            co($"bounty {uname} {btyamt}")
            tst($"Bounty of {btyamt}$ set on {uname}. ;)")
            if players.get_bounty(user()) then
                tst($"Bounty of {players.get_bounty(user())}$ on {uname} found!\nProceeding to remove it... ;)")
                co("removebounty")
            end
        end)
        togl(reco_bounty, "Remove Bounty", {}, "", function()
            co("removebounty")
        end)

-------------------
-- Miscs
-------------------

local function player(playerID)

    -- Shorthands 
        local pid = playerID
        local pro = menu.player_root(pid)
        local isMod = players.is_marked_as_modder(pid)
        local isVpnUser = players.is_using_vpn(pid)
        local isController = players.is_using_controller(pid)
        local wal = players.get_wallet(pid)
        local bank = players.get_bank(pid)
        local ttl = players.get_money(pid)
        local rank = players.get_rank(pid)
        local iname = players.get_name(pid)
        local irid = players.get_rockstar_id(pid)
        local detec = players.add_detection
            -- Informations
            local ip = gval(rpath(pro, "Information>Connection>IP Address"))
            local port = gval(rpath(pro, "Information>Connection>Port"))
            local city = gval(rpath(pro, "Information>Connection>City"))
            local regi = gval(rpath(pro, "Information>Connection>Region"))
            local coun = gval(rpath(pro, "Information>Connection>Country"))
            local isp = gval(rpath(pro, "Information>Connection>ISP"))
            local cotype = gval(rpath(pro, "Information>Connection>Connected Via"))
            local gamelang = gval(rpath(pro, "Information>Status>Language"))
            -- Default Lists
            local tplist = rpath(pro, "Teleport")
            local frilist = rpath(pro, "Friendly")
            local chatlist = rpath(pro, "Chat")
            local wpnslist = rpath(pro, "Weapons")
            local trolllist = rpath(pro, "Trolling")
            local replist = rpath(pro, "Increment Commend/Report Stats")
            local kicklist = rpath(pro, "Kick")
            local crashlist = rpath(pro, "Crash")
    

    -- Lists
        div(pro, "Sakura")
        plymain = pro:list("Player Options")
            copier = plymain:list("Information Copier")
            detections = plymain:list("Add Detections")

    -- Ply Root
        pro:action($"Crash {iname} ({irid} / {ip})", {}, "", function()
            co($"crash{iname}")
        end)
        prokslid = cslider(pro, $"Kick {iname} ({irid} / {ip}) using...", {}, "", 0, 1, 0, 1, function(value, on_click)
            if value == 0 then
                co($"kick{iname}")
            end
            if value == 1 then
                co($"blacklist{iname}")
            end
        end)
        vrepl(prokslid, 0, "Smart")
        vrepl(prokslid, 1, "Blacklist")
        prockslid = cslider(pro, $"Crash + Kick {iname} ({irid} / {ip})", {}, "", 0, 2, 0, 1, function(value, on_click)
            if value == 0 then
                co($"crash{iname}")
                yi(3000)
                co($"kick{iname}")
            end
            if value == 1 then
                co($"crash{iname}")
                yi(1500)
                co($"kick{iname}")
            end
            if value == 2 then
                co($"crash{iname}")
                yi(50)
                co($"kick{iname}")
            end
        end)
        vrepl(prockslid, 0, "3s Delay")
        vrepl(prockslid, 1, "1.5s Delay")
        vrepl(prockslid, 2, "Instant")

    -- Copier (in Ply Root) 
        tog(copier, "Copying Reason Toggle", {}, "", function()
        end)
        copier:text_input("Reason", {"copyingrsn"}, "", function()
        end)
        copier:action($"Copy {iname}", {}, "", function()
            coptog = gval(rpath(pro, "Player Options>Information Copier>Copying Reason Toggle")) -- Optimiser dans une fonction?
            coprsn = gval(rpath(pro, "Player Options>Information Copier>Reason"))
            if coptog == true then
                copy($"Player Name : {iname}\nReason : {coprsn}")
                tst($"Player Name : {iname}\nReason : {coprsn}")
            else
                copy($"Player Name : {iname}")
                tst($"Player Name : {iname}")
            end
        end)
        copier:action($"Copy {irid}", {}, "", function()
            coptog = gval(rpath(pro, "Player Options>Information Copier>Copying Reason Toggle"))
            coprsn = gval(rpath(pro, "Player Options>Information Copier>Reason"))
            if coptog == true then
                copy($"Player RID : {irid}\nReason : {coprsn}")
                tst($"Player RID : {irid}\nReason : {coprsn}")
            else
                copy($"Player RID : {irid}")
                tst($"Player RID : {irid}")
            end
        end)
        copier:action($"Copy {ip}", {}, "", function()
            coptog = gval(rpath(pro, "Player Options>Information Copier>Copying Reason Toggle"))
            coprsn = gval(rpath(pro, "Player Options>Information Copier>Reason"))
            if coptog == true then
                copy($"Player IP : {ip}\nReason : {coprsn}")
                tst($"Player IP : {ip}\nReason : {coprsn}")
            else
                copy($"Player IP : {ip}")
                tst($"Player IP : {ip}")
            end
        end)
        copier:action($"Copy {iname} ({irid})", {}, "", function()
            coptog = gval(rpath(pro, "Player Options>Information Copier>Copying Reason Toggle"))
            coprsn = gval(rpath(pro, "Player Options>Information Copier>Reason"))
            if coptog == true then
                copy($"Player Name (RID) : {iname} ({irid})\nReason : {coprsn}")
                tst($"Player Name (RID) : {iname} ({irid})\nReason : {coprsn}")
            else
                copy($"Player Name (RID) : {iname} ({irid})")
                tst($"Player Name (RID) : {iname} ({irid})")
            end
        end)
        copier:action($"Copy {iname} ({irid} / {ip})", {}, "", function()
            coptog = gval(rpath(pro, "Player Options>Information Copier>Copying Reason Toggle"))
            coprsn = gval(rpath(pro, "Player Options>Information Copier>Reason"))
            if coptog == true then
                copy($"Player Name (RID / IP) : {iname} ({irid} / {ip})\nReason : {coprsn}")
                tst($"Player Name (RID / IP) : {iname} ({irid} / {ip})\nReason : {coprsn}")
            else
                copy($"Player Name (RID / IP) : {iname} ({irid} / {ip})")
                tst($"Player Name (RID / IP) : {iname} ({irid} / {ip})")
            end
        end)
        copier:action($"Copy {iname} ({ip})", {}, "", function() 
            coptog = gval(rpath(pro, "Player Options>Information Copier>Copying Reason Toggle"))
            coprsn = gval(rpath(pro, "Player Options>Information Copier>Reason"))
            if coptog == true then
                copy($"Player Name : {iname} ({ip})\nReason : {coprsn}")
                tst($"Player Name : {iname} ({ip})\nReason : {coprsn}")
            else
                copy($"Player Name : {iname} ({ip})")
                tst($"Player Name : {iname} ({ip})")
            end
        end)
    -- Detections (in Ply Root)
        mandetecas = cslider(detections, "Manually detect as...", {}, "", 0, 1, 0, 1, function(value, on_click)
            if value == 0 then
                tst($"Manually marked {iname} as a Modder.")
                detec(pid, "Manually marked as Modder.", TOAST_ABOVE_MAP, 100)
            end
            if value == 1 then
                tst($"Manually marked {iname} as a Likely Modder.")
                detec(pid, "Manually marked as Likely Modder.", TOAST_ABOVE_MAP, 50)
            end
        end)
        vrepl(mandetecas, 0, "Modder")
        vrepl(mandetecas, 1, "Likely Modder")
        cstmdet = detections:list("Custom Detections")
            txt_inp(cstmdet, "Detection Name", {"detectionname"}, "", function()
            end)
            local danger = 1
            slider(cstmdet, "Dangerousity", {"detectiondanger"}, "0-49 = No classification\n50-80 = Likely Modder\n80-100 = Modder", 0, 100, 0, 1, function(danger2)
                danger = danger2
            end)
            act(cstmdet, "Add Detection", {}, "", function()
                local detecname = gval(rpath(pro, "Player Options>Add Detections>Custom Detections>Detection Name"))
                local detecdanger = gval(rpath(pro, "Player Options>Add Detections>Custom Detections>Dangerousity"))
                detec(pid, $"{detecname}", TOAST_ABOVE_MAP, $"{detecdanger}")
            end)
    -- Crash
        div(crashlist, "Sakura")
        crashlist:action("Crash + Kick", {"crakick"}, "", function()
            co($"crash{iname}")
            yi(50)
            co($"kick{iname}")
        end)
        act(crashlist, "2Take1 Crash (Fragment)", {}, "", function(on_toggle) -- à fix (problème L 396)
            local object = entities.create_object(joaat("prop_fragtest_cnst_04"), GET_ENTITY_COORDS(GET_PLAYER_PED_SCRIPT_INDEX(pid)))
            BREAK_OBJECT_FRAGMENT_CHILD(object, 1, false)
            yi(1000)
            entities.delete_by_handle(object)
        end)

        

end
    players.add_command_hook(player)

ru()