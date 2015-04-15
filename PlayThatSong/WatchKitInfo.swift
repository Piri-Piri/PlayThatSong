//
//  WatchKitInfo.swift
//  PlayThatSong
//
//  Created by David Pirih on 15.04.15.
//  Copyright (c) 2015 Piri-Piri. All rights reserved.
//

import Foundation

let kKey = "FunctionRequestKey"

class WatchKitInfo {
    var replyBlock: ([NSObject : AnyObject]!) -> Void
    var playerRequest: String?
    
    init(playerDictionary: [NSObject : AnyObject], reply: ([NSObject : AnyObject]!) -> Void) {
        if let playerDictionary = playerDictionary as? [String : String] {
            playerRequest = playerDictionary[kKey]
        }
        else {
            println("Error: No Reply Information")
        }
        
        replyBlock = reply
    }
}