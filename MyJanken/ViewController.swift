//
//  ViewController.swift
//  MyJanken
//
//  Created by 工藤千寛 on 2019/11/07.
//  Copyright © 2019 工藤千寛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var answerImageView: UIImageView!
    
    
    @IBOutlet weak var answerLabel: UILabel!
    
    var answerNumber = 0
    
    
    @IBAction func shuffleAction(_ sender: Any) {
        
        answerNumber = Int.random(in: 0..<3)
        
        if answerNumber == 0 {
            
            //グー
            answerLabel.text = "グー"
            answerImageView.image = UIImage(named: "gu")
        
        } else if answerNumber == 1 {
            
            //チョキ
            answerLabel.text = "チョキ"
            answerImageView.image = UIImage(named: "choki")
            
        } else if answerNumber == 2 {
            
            //パー
            answerLabel.text = "パー"
            answerImageView.image = UIImage(named:"pa")
        }
    
        /*
        //次のジャンケンへ
        answerNumber = answerNumber + 1
        */
        
    }
    
}

