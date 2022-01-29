//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */
// Start
// Backround
canvas.fillColor = .orange
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// Draw Triangles
canvas.fillColor = .yellow
for xPostion in stride(from: 0, through: 400, by: 40) {
    for yPosition in stride (from: 200, through: 600, by: 40) {
        var figureVertices: [Point] = []
        figureVertices.append(Point(x: xPostion + 0, y: yPosition + 0))
        figureVertices.append(Point(x: xPostion + 40, y: yPosition + 40))
        figureVertices.append(Point(x: xPostion + 40, y: yPosition + 0))
        canvas.drawCustomShape(with: figureVertices)
        
        if yPosition <= xPostion + 160{
            canvas.fillColor = .yellow
        } else if yPosition >= 600 {
            canvas.fillColor = .yellow
        } else {
            canvas.fillColor = .white
        }
    }
}

//Draw the text
canvas.drawText(message: "Talking Heads", at: Point(x: 25, y: 140), size: 40, kerning: 0)

