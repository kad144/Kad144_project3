//
//  SecondViewController.swift
//  pre Project 3
//
//  Created by kenean dukamo on 4/8/18.
//  Copyright © 2018 kenean dukamo. All rights reserved.
//

import UIKit
import CloudKit



class SecondViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
   let orderClass =  Order()
    var custemerInfos = [CKRecord]()
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func check(_ sender: UIButton) {
         readfromDB()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return custemerInfos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let custemerInfo = custemerInfos[indexPath.row].value(forKey: "data") as! String
        cell.textLabel?.text = custemerInfo
        return cell
    }
    //reading the orders from the database
     func readfromDB()
    {
        let myQuery = CKQuery(recordType: "custemerInfo", predicate: NSPredicate(value: true))
        orderClass.database.perform(myQuery, inZoneWith: nil) { (records, _) in
            guard let records = records else {return}
            let sortedRecords = records.sorted(by: { $0.creationDate! > $1.creationDate! })
            self.custemerInfos = sortedRecords
            DispatchQueue.main.async {
                self.tableView.refreshControl?.endRefreshing()
                self.tableView.reloadData()
            }
            for custemerInfo in self.custemerInfos {
                print(custemerInfo)
            }
            
        }
    }
}



