------------------------------
----category selection screen
-------------------------------------
print("oh")

local composer = require( "composer" )
 
local scene = composer.newScene()

-- create()
function scene:create( event )
 
  local sceneGroup = self.view
end

----------buttons for categories

--show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        
      local background = display.newRect( 0, 0, 10000, 10000)
      background:setFillColor( 0, 255, 0)
      sceneGroup:insert(background)

      --sports button
      local sportsButton = display.newImageRect("assets/sports.png", 150, 100)
      sportsButton.x = display.contentCenterX - 200
      sportsButton.y = display.contentCenterY - 75
      sportsButton.id = "sports button"
      sceneGroup:insert(sportsButton)

      --history button
      local historyButton = display.newImageRect("assets/history.png", 150, 100)
      historyButton.x = display.contentCenterX 
      historyButton.y = display.contentCenterY - 75
      historyButton.id = "history button"
      sceneGroup:insert(historyButton)

      --myth button
      local mythButton = display.newImageRect("assets/myth.png", 150, 100)
      mythButton.x = display.contentCenterX + 200
      mythButton.y = display.contentCenterY - 75
      mythButton.id = "myth button"
      sceneGroup:insert(mythButton)

      --pop culture button
      local popCultureButton = display.newImageRect("assets/popCulture.png", 150, 100)
      popCultureButton.x = display.contentCenterX - 200
      popCultureButton.y = display.contentCenterY + 75
      popCultureButton.id = "pop culture button"
      sceneGroup:insert(popCultureButton)

      --science button
      local scienceButton = display.newImageRect("assets/science.png", 150, 100)
      scienceButton.x = display.contentCenterX 
      scienceButton.y = display.contentCenterY + 75
      scienceButton.id = "science button"
      sceneGroup:insert(scienceButton)

       
      local MyText = display.newText( "Scene 2", 200, 200, native.systemFont, 20)
      MyText:setFillColor(1, 1, 1)
      sceneGroup:insert(MyText)

    elseif ( phase == "did" ) then
        --runs when off screen
 
    end
end

-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        
 
    elseif ( phase == "did" ) then
      
      timer.performWithDelay(3000, showScene1)
    end
end

-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end
 
----------if sports button is touched

-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene

--------------other event listeners

