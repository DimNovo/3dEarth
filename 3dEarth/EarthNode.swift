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
        self.geometry = SCNSphere(radius: 1)
        self.geometry?.firstMaterial?.diffuse.contents = UIColor.blue
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
}
