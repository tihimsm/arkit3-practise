//
//  ViewController.swift
//  arkit3-practise
//
//  Created by t-mishima on 2019/10/10.
//  Copyright © 2019 tihimsm. All rights reserved.
//

import UIKit
import RealityKit

class ARViewController: UIViewController {
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let anchor = try? DemoObject.loadSample() else {
            return
        }
        arView.scene.anchors.append(anchor)
    }
}

