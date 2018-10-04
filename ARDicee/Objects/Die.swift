//
//  Die.swift
//  ARDicee
//
//  Created by Helen Vasconcelos on 10/4/18.
//  Copyright © 2018 Helen. All rights reserved.
//

import Foundation
import SceneKit
import ARKit

class Die : SCNNode {
    
    convenience init(node : SCNNode){
        self.init()
        self.geometry = node.geometry
    }
    
    func roll() {
        let spinCount : Float = 5
        let randomX = getRandomDieFaceRotationAngle() * spinCount
        let randomZ = getRandomDieFaceRotationAngle() * spinCount
        self.runAction(SCNAction.rotateBy(x: CGFloat(randomX), y: 0, z: CGFloat(randomZ), duration: 0.8))
    }
    
    func getRandomDieFaceRotationAngle() -> Float {
        return (Float(arc4random_uniform(4)) + 1) * (Float.pi/2)
    }
}
