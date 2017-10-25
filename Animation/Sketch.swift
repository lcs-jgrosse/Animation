import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    // Change in position
    var dx : Int // Difference in x
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 25
        
        // Set the diference for x
        dx = 2
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // clear background
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        
        // Change position
        x += dx
        
        // Check the position and reverse couse if we go off the right edge off screen
        if x > 475 {
            dx = -2
        }
        
        // Check the position and reverse couse if we go off the left edge off screen
        if x < 25 {
            dx = 2
        }
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.black
        canvas.drawRectangle(centreX: x, centreY: 250, width: 50, height: 50)
        
    }
    
}
