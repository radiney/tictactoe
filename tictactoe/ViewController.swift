//
//  ViewController.swift
//  tictactoe
//
//  Created by user217360 on 5/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    enum Turn {
            case Circle
            case Ex
        }
    
    @IBOutlet weak var lblTurn: UILabel!
    @IBOutlet weak var btnA1: UIButton!
    @IBOutlet weak var btnA2: UIButton!
    @IBOutlet weak var btnB1: UIButton!
    @IBOutlet weak var btnC3: UIButton!
    @IBOutlet weak var btnC2: UIButton!
    @IBOutlet weak var btnC1: UIButton!
    @IBOutlet weak var btnB3: UIButton!
    @IBOutlet weak var btnB2: UIButton!
    @IBOutlet weak var btnA3: UIButton!
    
    
    var firstTurn = Turn.Circle
    var currentTurn = Turn.Circle
    
    var Circle = "O"
    var Ex = "X"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapped(_ sender: UIButton) {
    }
    
    func addToBoard(_ sender: UIButton){
        
    }
    
}

