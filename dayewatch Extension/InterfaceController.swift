//
//  InterfaceController.swift
//  dayewatch Extension
//
//  Created by kenean dukamo on 5/3/18.
//  Copyright © 2018 kenean dukamo. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
 
    @IBOutlet var orderTimer: WKInterfaceTimer!
    func wkTimerReset(timer:WKInterfaceTimer,interval:TimeInterval){
        timer.stop()
        let time  = NSDate(timeIntervalSinceNow: interval)
        timer.setDate(time as Date)
        timer.start()
    }
    
    func timingOrder(){

        wkTimerReset(timer: orderTimer,interval: 0.0)
        wkTimerReset(timer: orderTimer,interval:300.0) // counts down
        
        }

    override func animate(withDuration duration: TimeInterval, animations: @escaping () -> Void) {
 
        
    }
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        timingOrder()
        
        
    }
    
    override func willActivate() {
       
        super.willActivate()
    }
    
    override func didDeactivate() {
       
        super.didDeactivate()
    }

}
