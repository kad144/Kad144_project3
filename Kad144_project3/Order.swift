//
//  Order.swift
//  pre Project 3
//
//  Created by kenean dukamo on 4/9/18.
//  Copyright © 2018 kenean dukamo. All rights reserved.
//

import UIKit
import CloudKit
class Order: UIViewController {

let database = CKContainer.default().publicCloudDatabase
    
    @IBOutlet weak var output: UILabel!
    @IBOutlet var input: UITextField!
    @IBAction func action(_ sender: UIButton) {
        
        let currentOrder = sender.currentTitle!
        let currentName = input.text!
        output.text = "Name: \(currentName)    Order: \(currentOrder)"
        let Info = output.text!
        self.saveToCloud(custemerInfo:  Info)
        UserDefaults.standard.set(output.text, forKey: "my name")
        
    }

    //saving the order information to cloud 
    func saveToCloud(custemerInfo: String){
        let newCustemerInfo = CKRecord(recordType:"custemerInfo")
        newCustemerInfo.setValue(custemerInfo, forKey: "data")
        database.save(newCustemerInfo) { (record, error) in
            print(error as Any)
            guard record != nil  else {return}
            print("save record")
        }
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let x = UserDefaults.standard.object(forKey: "my name") as? String
        {
            output.text = x
        }
    }

   

}
