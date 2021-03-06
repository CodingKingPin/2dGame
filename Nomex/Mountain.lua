Mountain = Class{}

local MOUNTAIN_IMAGE = love.graphics.newImage('asset/pipe.png')

local MOUNTAIN_SCROLLING = -60

MOUNTAIN_HEIGHT = 288
MOUNTAIN_WIDTH = 70

function Mountain:init()
	self.x = VIRTUAL_WIDTH
	self.y = math.random(VIRTUAL_HEIGHT / 4, VIRTUAL_HEIGHT - 40)
	self.width = MOUNTAIN_IMAGE:getWidth()
end

function Mountain:update(dt)
	self.x = self.x + MOUNTAIN_SCROLLING * dt
end

function Mountain:render()
	love.graphics.draw(MOUNTAIN_IMAGE, self.x, self.y)
end