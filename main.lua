function love.load()
	circleX = 300
	circleY = 400
	bong = love.audio.newSource("bong.mp3", stream)
end

function love.keypressed(key)
	if key == " " then
		love.audio.play(bong)
	elseif key == "up" then
		circleY = circleY - 5
	elseif key == "down" then
		circleY = circleY + 5
	elseif key == "right" then
		circleX = circleX + 5
	elseif key == "left" then
		circleX = circleX - 5
	end
end

function love.draw()
	love.graphics.circle("fill", circleX, circleY, 10, 10)
	love.graphics.print("Hello Worlds!", 400, 300)
end

