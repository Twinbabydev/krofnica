//
//  ViewController.swift
//  KrofnicaSveznalica
//
//  Created by Dunja Maksimovic on 4/24/20.
//  Copyright © 2020 Dunja Maksimovic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var krofnicaImage: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var askMeOutlet: UIButton!
    @IBOutlet weak var krofnicaLabel: UILabel!
    
    var answerArray = [answers.da, answers.ne, answers.smisliPosleUzine, answers.pitajMePonovo, answers.pitajMamu]
    var krofnicaArray = [ #imageLiteral(resourceName: "da"), #imageLiteral(resourceName: "ne"), #imageLiteral(resourceName: "gricni"), #imageLiteral(resourceName: "pitaj me ponovo"), #imageLiteral(resourceName: "pitaj mamu"), #imageLiteral(resourceName: "krofnica") ]
    
    enum answers:String {
        case da = "da"
        case ne = "ne"
        case smisliPosleUzine = "gricni nesto da bolje razmisljas"
        case pitajMePonovo = "pitaj me ponovo"
        case pitajMamu = "ne znam, pitaj mamu"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        askMeOutlet.layer.cornerRadius = 12
        krofnicaLabel.layer.cornerRadius = 12
        krofnicaLabel.layer.masksToBounds = true
        krofnicaImage.image = #imageLiteral(resourceName: "krofnica")
        answerLabel.alpha = 0
    }

    @IBAction func askMeButton(_ sender: Any) {
        
        answerLabel.alpha = 0.95
        var index = Int.random(in: 0...4)
        krofnicaImage.image = krofnicaArray[index]
        answerLabel.text = answerArray[index].rawValue
        
    }
    
}

