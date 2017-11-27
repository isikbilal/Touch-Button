//
//  SonucController.swift
//  touchButton
//
//  Created by Konuk Kullanıcı on 23.05.2017.
//  Copyright © 2017 bilal. All rights reserved.
//

import UIKit

class SonucController: UIViewController {

    var sonuc:String = ""
    
    @IBOutlet weak var sonucLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sonucLabel.text = sonuc

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
