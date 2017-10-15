//
//  Player.swift
//  FallingFruits
//
//  Created by Vinson Wang &  Ayush Jaiswal on 10/14/17.
//  Copyright © 2017 Ayush&Vinson. All rights reserved.
//


import SpriteKit

class Player: SKSpriteNode {
    
    private var minX = CGFloat(-200), maxX = CGFloat(200);
    
    
    //This function will give info to the controller about the collison
    func initializePlayer() {
        name = "Player";
        
        physicsBody = SKPhysicsBody(circleOfRadius: size.height / 2);
        physicsBody?.affectedByGravity = false;
        physicsBody?.isDynamic = false;
        physicsBody?.categoryBitMask = ColliderType.PLAYER;
        physicsBody?.contactTestBitMask = ColliderType.FRUIT_AND_BOMB;
        
    }
    
    func move(left: Bool) {
        
        if left {
            
            position.x -= 15;
            
            if position.x < minX {
                position.x = minX;
            }
            
        } else {
            position.x += 15;
            
            if position.x > maxX {
                position.x = maxX;
            }
        }
    }
    
}//class

