//
//  FirstViewController.swift
//  pre Project 3
//
//  Created by kenean dukamo on 4/8/18.
//  Copyright © 2018 kenean dukamo. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBAction func pinch(_ sender: UIPinchGestureRecognizer) {
        if let view = sender.view
        {
           view.transform = view.transform.scaledBy(x: sender.scale, y: sender.scale)
            sender.scale = 1
        }
    }
    
    @IBAction func rotation(_ sender: UIRotationGestureRecognizer) {
        if let view = sender.view
        {
            view.transform = view.transform.rotated(by: sender.rotation)
            sender.rotation = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

