--- STEAMODDED HEADER
--- MOD_NAME: iOS adaptation
--- MOD_ID: IOSAdaptation
--- MOD_AUTHOR: [Xioxin]
--- MOD_DESCRIPTION: Adapt to iOS resolution

----------------------------------------------
------------MOD CODE -------------------------

function SMODS.INIT.IOSAdaptation()
    sendDebugMessage("IOS Adaptation!")
    if love.system.getOS() == 'iOS' then
        G.F_SAVE_TIMER = 5
        G.F_DISCORD = false
        G.F_CRASH_REPORTS = false
        G.F_BASIC_CREDITS = true
        G.F_NO_ERROR_HAND = true
        G.F_QUIT_BUTTON = false
        G.F_ENABLE_PERF_OVERLAY = false
        G.F_NO_SAVING = false
        G.F_MUTE = false
        G.F_SOUND_THREAD = true
        G.F_VIDEO_SETTINGS = false
        G.F_RUMBLE = 0.7
        G.F_CTA = false
        G.F_VERBOSE = true
        G.F_ENGLISH_ONLY = false
        love.window.updateMode(
            love.graphics.getWidth(),
            love.graphics.getHeight(),
            {
                fullscreen = true,
                vsync = G.SETTINGS.WINDOW.vsync,
                resizable = true,
                display = G.SETTINGS.WINDOW.selected_display,
                highdpi = true
        })
        love.resize(love.graphics.getWidth(),love.graphics.getHeight())
    end
end


----------------------------------------------
------------MOD CODE END----------------------
