//: [Previous](@previous) / [Next](@next)

let preferredWidth = 400
let preferredHeight = 600


import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)


// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

// draw box at the top
canvas.fillColor = .init(hue: 34, saturation: 39, brightness: 87, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 455), width: 400, height: 150)

// Write Text in box
//  Write Drake/Kanye
canvas.drawText(message: "Drake/Kanye West", at: Point(x: 25, y: 550), size: 30, kerning: 0)
// write the date
canvas.drawText(message: "Dec/09/2021", at: Point(x: 25, y: 510), size: 30, kerning: 0)
// write the location


// Show a grid
canvas.drawAxes(withScale: true, by: 25, color: .black)

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
    canvas.drawEllipse(at: Point(x: endX, y: endY), width: 5, height: 5)
    
    canvas.drawEllipse(at: Point(x: endX, y: 450 - endY), width: 5, height: 5)
    
    canvas.drawEllipse(at: Point(x: 400 - endX, y: endY), width: 5, height: 5)
    
    canvas.drawEllipse(at: Point(x: 400 - endX, y: 450 - endY), width: 5, height: 5)
    
    //set thickness of lines
    canvas.defaultLineWidth = Int(9 - x)
    // Draw the lines conneting the dots on the rigt side
    canvas.drawLine(from: Point(x: endX, y: endY), to: Point(x: endX, y: 450 - endY))
    //draw the lines connecting the dots on the left side
    canvas.drawLine(from: Point(x: 400 - endX, y: endY), to: Point(x: 400 - endX, y: 450 - endY))
}

