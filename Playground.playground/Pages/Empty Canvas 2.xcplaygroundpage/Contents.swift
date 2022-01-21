// Canvas Size
let preferredWidth = 400
let preferredHeight = 600

// Requierd Code
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

// Draw green Backround
canvas.fillColor = .green
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// Black Rectangle
canvas.fillColor = .black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 400)

//Draw region C
canvas.fillColor = .green

for xvalue in stride(from: 0, through: 400, by: 40) {
    
    canvas.drawEllipse(at: Point(x: xvalue, y: 0), width: 0, height: 20)
}








//Draw grid
canvas.drawAxes(withScale: true, by: 50, color: .white)

canvas.highPerformance = false


































