Chips=class()

function Chips:setup(x,y,r,n,v)
    self.x=x
    self.y=y
    self.r=r    -- rotate angle
    self.n=n    -- name
    self.cnt=10 -- number of chips
    self.value=v*self.cnt   -- value of chips
end

function Chips:draw()
    if self.image ~= nil then
       sprite(self.image,self.x,self.y,self.size) 
    else
        fill(255)
        ellipse(self.x,self.y,80)
        fill(0, 119, 255, 255)
    end
    
    text(self.cnt,self.x,self.y-60)
    text(self.value,self.x,self.y-90)
end

function Chips:touched(touch,playerIndex)
    self.dragging = false
    if touch.state == BEGAN then
        
        translate(WIDTH/2,HEIGHT/2)

        local rotation = 90*(playerIndex-1)
        rotate(rotation)
        
        --local v1 = vec2(touch.x-WIDTH/2,touch.y-HEIGHT/2)
        --local v1 = vec2(WIDTH/2-touch.x,HEIGHT/2-touch.y)
        local v1 = vec2(touch.x,touch.y)
        
        
        v1 = v1:rotate(math.rad(rotation))
        
        if self.n == "penny" then
            print(self.n..":" ..playerIndex.." rotation: "..rotation)
            print("   x values: ("..v1[1]..":"..self.x..")")
            print("   y values: ("..v1[2]..":"..self.y..")")
                
        end
        
        if touch.x > v1[1] and touch.x < v1[1]+self.size and
            touch.y > v1[2] and touch.y < v1[2]+self.size then
            
            --If I can get the hit test to work, then set
            self.dragging = true
            
        end
        
    end
    
    return self.dragging
    
end

function Chips:clicked()
    print("clicked "..self.name)
end

