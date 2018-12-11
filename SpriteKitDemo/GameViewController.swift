//
//  ViewController.swift
//  SpriteKitDemo
//
//  Created by Amr Omran on 11/20/2018.
//  Copyright © 2018 Amr Omran. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let skView = self.view as? SKView {
            if let scene = SKScene(fileNamed: "GameScene") {
                scene.scaleMode = .aspectFill
                skView.showsPhysics = true
                skView.showsNodeCount = true
                skView.showsQuadCount = true
                skView.showsFPS = true
                skView.ignoresSiblingOrder = true
                skView.presentScene(scene)
            }
        }
    }
    
    


}

