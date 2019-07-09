//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Jordan on 27/05/2019.
//  Copyright © 2019 Jordan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLblTxt: UILabel!
    @IBOutlet weak var ballImgView: UIImageView!
    @IBOutlet weak var askBtn: UIButton!
    
    let ballArray: Array = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomBallNumber = Int.random(in: 0 ... 4)
        ballImgView.image = UIImage.init(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    
    @IBAction func askBtnPessed(_ sender: Any) {
       newBallImage()
    }
    
    func newBallImage() {
        randomBallNumber = Int.random(in: 0 ... 4)
        ballImgView.image = UIImage.init(named: ballArray[randomBallNumber])
    }
    
}

