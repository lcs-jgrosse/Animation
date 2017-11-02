import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    var dx : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 25
        y = 25
        
        dx = 1
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        
        if x > 475 {
            dx += -1
        }
        
        if x < 25 {
            dx += 1
        }
            
        x += dx
        
        let a : Double = -45/4750
        
        // y = -a(x+h)^2 +k
        y = Int(a*(Double(x)-250)*(Double(x)-250)+475)
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.white
        canvas.drawRectangle(centreX: 250, centreY: 250, width: 500, height: 500)
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        
    }
    
}
