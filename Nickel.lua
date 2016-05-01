Nickel = class(Chips)

function Nickel:init(x,y,r,n,v)
    -- you can accept and set parameters here
    self:setup(x,y,r,n,v)
    self.image = readImage("Project:"..n)
    self.size = 85
end
