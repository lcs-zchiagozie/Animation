import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 200
        y = 400
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        y += -1
        // Draw an ellipse in the middle of the canvas
       canvas.fillColor = Color.purple
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50)
    
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color.green
        canvas.drawEllipse(centreX: y, centreY: 300, width: 50, height: 50)
    }
    

}
