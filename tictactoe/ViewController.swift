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
    
    
    var firstTurn = Turn.Ex
    var currentTurn = Turn.Ex
    
    var CIRCLE = "O"
    var EX = "X"
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
        if (fullBoard()) {
            resultAlert(title: "Draw")
        }
        
    }
    
    func resultAlert(title: String) {
        let ac = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Reset", style: .default, handler: { _ in
            self.resetBoard()
        }))
        self.present(ac, animated: true)
    }
    
    func resetBoard() {
        for button in board {
            button.setTitle(nil, for: .normal)
            button.isEnabled = true
            if (firstTurn == Turn.Circle) {
                firstTurn = Turn.Ex
                lblTurn.text = EX
            } else if (firstTurn == Turn.Ex) {
                firstTurn = Turn.Circle
                lblTurn.text = CIRCLE
            }
            currentTurn = firstTurn
        }
    }
    
    func fullBoard() -> Bool {
        for button in board {
            if button.title(for: .normal) == nil {
                return false
            }
        }
        return true
    }
    
    func addToBoard(_ sender: UIButton){
        if (sender.title(for: .normal) == nil){
            if(currentTurn == Turn.Circle){
                sender.setTitle(CIRCLE, for: .normal)
                //sender.setBackgroundImage(UIImage(named: "spiderman"), for: .normal)
                currentTurn = Turn.Ex
                lblTurn.text = EX
            } else if (currentTurn == Turn.Ex) {
                sender.setTitle(EX, for: .normal)
                currentTurn = Turn.Circle
                lblTurn.text = CIRCLE
            }
            sender.isEnabled = false
        }
        
    }
    
}
