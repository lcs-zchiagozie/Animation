import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var dx : Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        // set dx (change in x) value
        dx = 2
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        canvas.fillColor = Color.white
        canvas.drawRectangle(centreX: 0, centreY: 0, width: 5000, height: 5000
    )
        
        // Change position
        x += dx
        if x >= 500 {
            dx = -2
        }
        if x <= 0 {
            dx = 2
        }
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50)
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50)
    }
    
}
