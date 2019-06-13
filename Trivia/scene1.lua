-------------
--splash screen
------------------
print("okk")
----composer
local composer = require( "composer" )
 
local scene = composer.newScene()


-----forwards to screen 2

local function showScene2()
	
	local options = {
		effect = "fade",
		time = 500
	}
	composer.gotoScene( "scene2", options)
end

------------event functions
function scene:create( event )
 
    local sceneGroup = self.view
    --creates the scene
end
 
 
-- show screen
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- about to come on screen

        local background = display.newRect( 0, 0, 100000, 10000)
        background:setFillColor( 255, 0, 0)
        sceneGroup:insert(background)

        local deer = display.newImageRect("assets/splash.png", 300, 300)
        deer.x = display.contentCenterX
        deer.y = display.contentCenterY
        deer.id = "splash bg"
        sceneGroup:insert(deer)

        local splashText = display.newText( "splash", display.contentCenterX, display.contentCenterY - 200, native.labelFont, 20 )
		splashText.id = "splash text"
		splashText:setFillColor( 0, 0, 0 )
		sceneGroup:insert(splashText)

 
    elseif ( phase == "did" ) then
        -- on screen
        timer.performWithDelay(1000, showScene2)
 
    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- about to go off screen 
    elseif ( phase == "did" ) then
        -- entirely off screen
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- removes scene
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene
