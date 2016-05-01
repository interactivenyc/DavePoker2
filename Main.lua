--displayMode(FULLSCREEN)

function setup()
    rectMode(CENTER)
    tab={}    
    table.insert(tab,Penny(-150,-250,0,"penny",1))
    table.insert(tab,Nickel(-50,-250,0,"nickel",5))
    table.insert(tab,Dime(50,-250,0,"dime",10))
    table.insert(tab,Quarter(150,-250,0,"quarter",25))
    
    sprite("Documents:dime")
end

function draw()
    background(255, 255, 255, 255)
     
    pushStyle()
    tint(57, 255, 0, 255)
    sprite("Documents:poker background 2",WIDTH/2,HEIGHT/2,1500)
    popStyle()
    
    fill(255, 255, 255, 255)
    rect(WIDTH/2,HEIGHT/2,450,450,100)
    translate(WIDTH/2,HEIGHT/2)
    for z=1,4 do
        rotate(90)
        for a,b in pairs(tab) do
            b:draw()
        end
    end
end

function touched(touch)
    for z=1,4 do
        for a,b in pairs(tab) do
            if b:touched(touch,z) then
                b:clicked()
            end
        end
    end
end



