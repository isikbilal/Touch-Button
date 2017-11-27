//
//  ViewController.swift
//  touchButton
//
//  Created by Konuk Kullanıcı on 23.05.2017.
//  Copyright © 2017 bilal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var player1: UIButton!
    @IBOutlet weak var player2: UIButton!
    
    var player1score:Int = 0
    var player2score:Int = 0
    var sonuc:String = ""
    var toplamScore:Int = 10
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        player1.frame.size.height = view.frame.size.height/2
        player2.frame.size.height = view.frame.size.height/2
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func player1action(_ sender: Any) {
        player1score = player1score + 1
        player2score = player2score - 1
        
        if(player1score == toplamScore){
            self.sonuc = "Player 1 Kazandı"
            
            performSegue(withIdentifier: "sonuc", sender: self)
        }
    }
    @IBAction func player2action(_ sender: Any) {
        
        
        player1score = player1score - 1
        player2score = player2score + 1
        
        if(player2score == toplamScore){
            self.sonuc = "Player 2 Kazandı"
            
            performSegue(withIdentifier: "sonuc", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewcontroller = segue.destination as! SonucController
        
        viewcontroller.sonuc = sonuc
    }

}

