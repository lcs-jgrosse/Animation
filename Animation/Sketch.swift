import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var xtr : Int
    var ytr : Int
    var xbl : Int
    var ybl : Int
    var xtl : Int
    var ytl : Int
    var xbr : Int
    var ybr : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        xtr = 250
        ytr = 250
        xbl = 250
        ybl = 250
        xtl = 250
        ytl = 250
        xbr = 250
        ybr = 250
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        xtr += 1
        ytr += 1
        xbl += -1
        ybl += -1
        xtl += -1
        ytr += 1
        xbr += 1
        ybr += -1
        
        // Draw an ellipse in the middle of the canvas
        canvas.borderColor = Color.red
        canvas.fillColor = Color.red
        canvas.drawEllipse(centreX: xtr, centreY: ytr, width: 50, height: 50)
        canvas.borderColor = Color.green
        canvas.fillColor = Color.green
        canvas.drawEllipse(centreX: xtl, centreY: ytl, width: 50, height: 50)
        canvas.borderColor = Color.yellow
        canvas.fillColor = Color.yellow
        canvas.drawEllipse(centreX: xbl, centreY: ybl, width: 50, height: 50)
        canvas.borderColor = Color.blue
        canvas.fillColor = Color.blue
        canvas.drawEllipse(centreX: xbr, centreY: ybr, width: 50, height: 50)
        
    }
    
}
