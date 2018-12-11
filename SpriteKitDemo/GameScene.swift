//
//  HelloScene.swift
//  SpriteKitDemo
//
//  Created by Amr Omran on 11/20/2018.
//  Copyright © 2018 Amr Omran. All rights reserved.
//

import UIKit
import SpriteKit


class GameScene: SKScene {

    
    var xo: [SKSpriteNode] = []
    var player: Int = 0
    var cross: SKTexture!
    var nought: SKTexture!
    
    
    override func didMove(to view: SKView) {
        xoSetup()
        self.cross = SKTexture(imageNamed: "x")
        self.nought = SKTexture(imageNamed: "o")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
            for i in 0...xo.count-1 {
                
                let location = touch.location(in: self)
                
                if xo[i].contains(location) {
                    
                    if self.player == 0 {
                        xo[i].texture = cross
                        self.player = 1
                    } else {
                        xo[i].texture = nought
                        self.player = 0
                    }
                }
                
            }
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }
    
    
}


extension GameScene {
    
    func xoSetup() {
        
        for i in 1...9 {
            self.xo.append(self.childNode(withName: i.description) as! SKSpriteNode)
        }
    }
    
}
