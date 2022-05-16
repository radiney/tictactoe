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
    var board = [UIButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initBoard()
    }
    
    func initBoard(){
        board.append(btnA1)
        board.append(btnA2)
        board.append(btnA3)
        board.append(btnB1)
        board.append(btnB2)
        board.append(btnB3)
        board.append(btnC1)
        board.append(btnC2)
        board.append(btnC3)
    }

    @IBAction func tapped(_ sender: UIButton) {
        addToBoard(sender)
        
    }
    
    func resultAlert(title: String)
        {
            
        }
    
    func fullBoard() -> Bool
        {
            for button in board
            {
                if button.title(for: .normal) == nil
                {
                    return false
                }
            }
            return true
        }
    
    func addToBoard(_ sender: UIButton){
        if (sender.title(for: .normal) == nil)
        {
            if(currentTurn == Turn.Circle)
            {
                sender.setTitle(Circle, for: .normal)
                currentTurn = Turn.Ex
                lblTurn.text = Ex
            } else if(currentTurn == Turn.Ex)
                {
                sender.setTitle(Ex, for: .normal)
                currentTurn = Turn.Circle
                lblTurn.text = Ex
                }
                sender.isEnabled = false
        }
    
    }
    
}

