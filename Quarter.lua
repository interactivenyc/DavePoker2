Quarter = class(Chips)

function Quarter:init(x,y,r,n,v)
    -- you can accept and set parameters here
    self:setup(x,y,r,n,v)
    self.image = readImage("Project:"..n)
    self.size = 100
end
