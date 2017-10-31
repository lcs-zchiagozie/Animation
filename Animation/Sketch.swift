import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var offset : Int
    
   
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        offset = 250
    
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        offset += 1
       
        // Draw an ell\ipse in the middle of the canvas
      canvas.fillColor = Color .blue
        canvas.drawShapesWithBorders = false
        canvas.drawEllipse(centreX: offset, centreY:offset, width: 50, height: 50)
        
        canvas.fillColor = Color.green
        canvas.drawEllipse(centreX: offset, centreY: 500-offset, width: 50, height: 50)
        
        canvas.fillColor = Color.red
        canvas.drawEllipse(centreX: 500-offset, centreY: offset, width: 50, height: 50)
        
        canvas.fillColor = Color.orange
        canvas.drawEllipse(centreX: 500-offset, centreY: 500-offset, width: 50, height: 50)
        
    }
    
}
