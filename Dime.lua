Dime = class(Chips)

function Dime:init(x,y,r,n,v)
    -- you can accept and set parameters here
    self:setup(x,y,r,n,v)
    self.image = readImage("Project:"..n)
    self.size = 70
end
