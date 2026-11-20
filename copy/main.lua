function love.load()
    love.window.setMode(500, 500)
    mainFont = love.graphics.newFont("comic.ttf", 20, "normal", 40)
end

text = ""
x = love.mouse.getX()
y = love.mouse.getY()

function love.textinput(t)
    text = text .. t
end

function love.mousepressed(x, y, button)
    if x >= 50 and x <= 450 and y >= 300 and y <= 450 and button == 1 then
        love.system.setClipboardText(text)
    end
end

function love.draw()
	love.graphics.setFont(mainFont)
    love.graphics.setColor(1, 0, 0)
    love.graphics.rectangle("fill", 50, 300, 400, 150)
    love.graphics.setColor(1, 1, 1)
    love.graphics.print("COPY", 100, 290, 0, 6, 6)
    love.graphics.printf(text, 25, 25, 235, "left", 0, 2, 3)
end