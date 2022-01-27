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



canvas.drawShapesWithBorders = false

// Draw green Backround
canvas.fillColor = Color(hue: 107, saturation: 63, brightness: 73, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// Black Rectangle
canvas.fillColor = .black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 400)

//Draw ther circle grid
canvas.fillColor = Color(hue: 107, saturation: 63, brightness: 73, alpha: 100)

for xvalue in stride(from: 0, through: 400, by: 40) {
    
    for yvalue in stride(from: 0, through: 400, by: 40) {
    
        if xvalue + yvalue > 400 {
            canvas.fillColor = Color(hue: 107, saturation: 63, brightness: 73, alpha: 100)
        } else if xvalue == 0{
            canvas.fillColor = Color(hue: 107, saturation: 63, brightness: 73, alpha: 100)
        } else if xvalue == 400 {
            canvas.fillColor = Color(hue: 107, saturation: 63, brightness: 73, alpha: 100)
        } else if yvalue == 400 {
            canvas.fillColor = Color(hue: 107, saturation: 63, brightness: 73, alpha: 100)
        } else if yvalue == 0 {
            canvas.fillColor = Color(hue: 107, saturation: 63, brightness: 73, alpha: 100)
        } else {
            canvas.fillColor = .white
        }

        
        
        

        
canvas.drawEllipse(at: Point(x: xvalue, y: yvalue), width: 35, height: 35)

        
    }
}
 
// Write Pixies
canvas.drawText(message: "Pixies", at: Point(x: 50, y: 425))


