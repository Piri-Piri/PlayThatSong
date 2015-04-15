//
//  InterfaceController.swift
//  PlayThatSong WatchKit Extension
//
//  Created by David Pirih on 15.04.15.
//  Copyright (c) 2015 Piri-Piri. All rights reserved.
//

import WatchKit
import Foundation

let kKey = "FunctionRequestKey"

class InterfaceController: WKInterfaceController {

    @IBOutlet weak var songTitleLabel: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }


    @IBAction func previousSongButtonPressed() {
        var info = [kKey : "prev"]
        
        WKInterfaceController.openParentApplication(info, reply: { (reply, error) -> Void in
            println("reply: \(reply)")
            if reply != nil {
                self.updateLabel(reply as! [String : String])
            }
        })
    }
    
    @IBAction func nextSongButtonPressed() {
        var info = [kKey : "next"]
        
        WKInterfaceController.openParentApplication(info, reply: { (reply, error) -> Void in
            println("reply: \(reply)")
            if reply != nil {
                self.updateLabel(reply as! [String : String])
            }
        })
    }

    @IBAction func playSongButtonPressed() {
        var info = [kKey : "play"]
        
        WKInterfaceController.openParentApplication(info, reply: { (reply, error) -> Void in
            println("reply: \(reply)")
            if reply != nil {
                self.updateLabel(reply as! [String : String])
            }
            
        })
        
    }
    
    func updateLabel(songDictionary: [String : String]) {
        self.songTitleLabel.setText(songDictionary["currentSong"])
    }
    
    
}
