import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var dx : Int
    var ndx : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        dx = 250
        ndx = 250
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        dx += 1
        ndx -= 1
        
        // Draw an ellipse in the middle of the canvas
        canvas.borderColor = Color.purple
        canvas.fillColor = Color.purple
        canvas.drawEllipse(centreX: dx, centreY: 475, width: 50, height: 50)
        canvas.borderColor = Color.orange
        canvas.fillColor = Color.orange
        canvas.drawEllipse(centreX: ndx, centreY: Int(362.5), width: 50, height: 50)
        canvas.borderColor = Color.green
        canvas.fillColor = Color.green
        canvas.drawEllipse(centreX: dx, centreY: 250, width: 50, height: 50)
        canvas.borderColor = Color.blue
        canvas.fillColor = Color.blue
        canvas.drawEllipse(centreX: ndx, centreY: Int(112.5), width: 50, height: 50)
        canvas.borderColor = Color.black
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: dx, centreY: 25, width: 50, height: 50)
        
    }
    
}
