//
//  EarthNode.swift
//  3dEarth
//
//  Created by Dmitry Novosyolov on 30/01/2019.
//  Copyright © 2019 Dmitry Novosyolov. All rights reserved.
//

import SceneKit

class EarthNode: SCNNode {
    
    override init() {
        super.init()
        self.geometry = SCNSphere(radius: 1.5)
        self.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "diffuse")
        self.geometry?.firstMaterial?.specular.contents = UIImage(named: "specular")
        self.geometry?.firstMaterial?.emission.contents = UIImage(named: "emission")
        self.geometry?.firstMaterial?.normal.contents = UIImage(named: "normal")
        
        self.geometry?.firstMaterial?.shininess = 50
        
        let action = SCNAction.rotate(by: 360 * CGFloat(Double.pi / 180)
           ,around: SCNVector3(x: 0, y: 1, z: 0), duration: 10)
        let repeataction = SCNAction.repeatForever(action)
        self.runAction(repeataction)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
