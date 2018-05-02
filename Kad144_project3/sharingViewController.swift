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
        let invitingText = """
click the link to get our app https://www.google.com/search?safe=active&source=hp&ei=9zTqWvz9CNKJggeZiJeICQ&q=daya+bensa+app&oq=daya+bensa+app&gs_l=psy-ab.3...752.4191.0.4443.15.9.0.0.0.0.1072.1072.7-1.1.0....0...1c.1.64.psy-ab..14.0.0.0...0.0U0Tqwm9IDI
"""
        let contolloer = UIActivityViewController(activityItems: [invitingText], applicationActivities: nil)
        present(contolloer, animated: true, completion: nil)
    }


}
