//
//  MainMenuScene.swift
//  FallingFruits
//
//  Created by Vinson Wang &  Ayush Jaiswal on 10/14/17.
//  Copyright © 2017 Ayush&Vinson. All rights reserved.
//


import SpriteKit

class MainMenuScene: SKScene {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches{
            let location = touch.location(in: self);
            if atPoint(location).name == "Start"{
                
                // Load the SKScene from 'GameScene.sks'
                if let scene = GameplaySceneClass(fileNamed: "GameplayScene") {
                    // Set the scale mode to scale to fit the window
                    scene.scaleMode = .aspectFill
                    
                    // Present the scene
                    view!.presentScene(scene, transition: SKTransition.doorsCloseVertical(withDuration: TimeInterval(1)));
                    //doorsOpenHorizontal(withDuration:TimeInterval(1)));
                    
                }
            }
        }
    }
} //class





