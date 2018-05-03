//
//  sharingViewController.swift
//  Kad144_project3
//
//  Created by kenean dukamo on 5/2/18.
//  Copyright © 2018 kenean dukamo. All rights reserved.
//

import UIKit

class sharingViewController: UIViewController {

    @IBAction func sharingtap()
    {
        
        let contolloer = UIActivityViewController(activityItems: ["www.dayebensacoffee.org"], applicationActivities: nil)
        present(contolloer, animated: true, completion: nil)
    }


}
