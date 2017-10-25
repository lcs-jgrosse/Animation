import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    
    // Change in position
    var dx : Int // Difference in x
    var dy : Int // Difference in y
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 960, height: 540)
        
        // Set starting position
        x = random(from: 60, toButNotIncluding: 900)
        y = random(from: 40, toButNotIncluding: 500)
        
        // Set the diference for x
        dx = 1
        
        // Set the diference for y
        dy = 1
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // clear background
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 960, height: 540)
        
        // Change position
        x += dx
        y += dy
        
        // Check the position and reverse couse if we go off the right edge off screen
        if x > Int(858.5) {
            dx = -1
        }
        
        // Check the position and reverse couse if we go off the left edge off screen
        if x < Int(101.5) {
            dx = 1
        }
        
        // Check the position and reverse couse if we go off the top edge off screen
        if y > 490 {
            dy = -1
        }
        
        // Check the position and reverse couse if we go off the bottom edge off screen
        if y < 50 {
            dy = 1
        }
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: y, width: 203, height: 100)
        
    }
    
}
