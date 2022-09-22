//
//  InterfaceController.swift
//  CoinFlip WatchKit Extension
//
//  Created by student on 9/21/22.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var FlipLabel: WKInterfaceLabel!
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
    }
    
    @IBAction func FlipBtnPressed() {
        
        FlipLabel.setText("Flipping the coins")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            
            self.FlipLabel.setText("Flipping the coin..")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.FlipLabel.setText("Flipping the coin...")
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    
                    let randomFlip = Bool.random()
                    
                    if (randomFlip) { //if true
                        self.FlipLabel.setText("It's Heads")
                    } else { //if False
                        self.FlipLabel.setText("It's Tails")
                    }
            }
       }
       
    }
        
}
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }

}
