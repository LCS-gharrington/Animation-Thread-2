

let preferredWidth = 400
let preferredHeight = 600


import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)


// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

//backround
canvas.fillColor = .init(hue: 40, saturation: 6, brightness: 100, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 455)
                    
// draw box at the top
canvas.fillColor = .init(hue: 0, saturation: 0, brightness: 97, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 455), width: 400, height: 150)
          
// Write Text in box
//  Write Drake/Kanye
canvas.textColor = .black
canvas.drawText(message: "Drake/Kanye West", at: Point(x: 25, y: 460), size: 40, kerning: 0)

// write the date
canvas.textColor = .black
canvas.drawText(message: "Dec/09/2021", at: Point(x: 312, y: 560), size: 10, kerning: 0)

// write the location
canvas.textColor = .black
canvas.drawText(message: "Los Angeles Memorial Coliseum", at: Point(x: 215, y: 575), size: 10, kerning: 0)

// write More Life in backround
canvas.textColor = .init(hue: 203, saturation: 46, brightness: 98, alpha: 60)
canvas.drawText(message: "More Life", at: Point(x: 25, y: 192.5), size: 77, kerning: 0)

//Write some album names
canvas.textColor = .black
canvas.drawText(message: "Donda", at: Point.init(x: 25, y: 575), size: 10, kerning: 0)
canvas.drawText(message: "CLB", at: Point(x: 25, y: 560), size: 10, kerning: 0)
canvas.drawText(message: "Dark Lane Demo Tapes", at: Point(x: 25, y: 545), size: 10, kerning: 0)



// Loop from 1 to 8
let m = -25.0
let b = 450.0
let initialShift = 100.0
var endX = 0.0
let ratio = 0.66
for x in stride(from: 0.0, through: 8.0, by: 1.0) {
    
    let endY = m * x + b
    
    let change = Double(100.0 * powl(Float80(ratio), Float80(x)))
 
    if x == 0.0 {
        endX = change + initialShift
    } else {
        endX += change
    }
    
    // Draw a dot at these points
    //canvas.drawEllipse(at: Point(x: endX, y: endY), width: 5, height: 5)
    
    //draw the uper left
    //canvas.drawEllipse(at: Point(x: endX, y: 450 - endY), width: 5, height: 5)
    
    //draw bottom right
    //canvas.drawEllipse(at: Point(x: 400 - endX, y: endY), width: 5, height: 5)
    
    //draw bottom left
    //canvas.drawEllipse(at: Point(x: 400 - endX, y: 450 - endY), width: 5, height: 5)
    
    //set thickness of lines
    canvas.defaultLineWidth = Int(9 - x)
    
    // Draw the lines conneting the dots on the rigt side
    canvas.drawLine(from: Point(x: endX, y: endY), to: Point(x: endX, y: 450 - endY))
    
    //draw the lines connecting the dots on the left side
    canvas.drawLine(from: Point(x: 400 - endX, y: endY), to: Point(x: 400 - endX, y: 450 - endY))
}
