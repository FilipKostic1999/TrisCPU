//
//  ViewController.swift
//  TrisCPU
//
//  Created by Filip Kostic on 2022-12-12.
//

import UIKit

class ViewController: UIViewController {
    
    
   
    @IBOutlet weak var A1buttonOutlet: UIButton!
    
    
    @IBOutlet weak var A2buttonOutlet: UIButton!
    
  
    @IBOutlet weak var A3buttonOutlet: UIButton!
    
    
    @IBOutlet weak var B1buttonOutlet: UIButton!
    
      
    @IBOutlet weak var B2buttonOutlet: UIButton!
    
    
    @IBOutlet weak var B3buttonOutlet: UIButton!
    
    
    @IBOutlet weak var C1buttonOutlet: UIButton!
    
    
    @IBOutlet weak var C2buttonOutlet: UIButton!
    
    
    
    @IBOutlet weak var C3buttonOutlet: UIButton!
    
    
    
    @IBOutlet weak var anouncment: UITextField!
    
    
    @IBOutlet weak var player1WinsCalculated: UITextField!
    
    
    
    @IBOutlet weak var player2WinsCalculated: UITextField!
    
    
    

    
    
    
    
    
    
    
    var isNextX : Bool = true
    var isNextO : Bool = false
    
    var isButtonA1Active : Bool = true
    var isButtonA2Active : Bool = true
    var isButtonA3Active : Bool = true
    
    var isButtonB1Active : Bool = true
    var isButtonB2Active : Bool = true
    var isButtonB3Active : Bool = true
    
    var isButtonC1Active : Bool = true
    var isButtonC2Active : Bool = true
    var isButtonC3Active : Bool = true
    
    // X = 1, O = 2
    
    var valueA1 : Int = 0
    var valueA2 : Int = 0
    var valueA3 : Int = 0
    
    var valueB1 : Int = 0
    var valueB2 : Int = 0
    var valueB3 : Int = 0
    
    var valueC1 : Int = 0
    var valueC2 : Int = 0
    var valueC3 : Int = 0
    
    var player1Wins : Int = 0
    var player2Wins : Int = 0
    
    var nextToBeginRematch : Int = 1
    
    var isThisADraw : Bool = true
    
    
 

   
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func rematchButton(_ sender: UIButton) {
        
        isButtonA1Active = true
        isButtonA2Active = true
        isButtonA3Active = true
        
        isButtonB1Active = true
        isButtonB2Active = true
        isButtonB3Active = true
        
        isButtonC1Active = true
        isButtonC2Active = true
        isButtonC3Active = true
        
        
        
        
        valueA1 = 0
        valueA2 = 0
        valueA3 = 0
        
        valueB1 = 0
        valueB2 = 0
        valueB3 = 0
        
        valueC1 = 0
        valueC2 = 0
        valueC3 = 0
        
        
        
        
        A1buttonOutlet.setTitle("", for: .normal)
        
        A2buttonOutlet.setTitle("", for: .normal)
        
        A3buttonOutlet.setTitle("", for: .normal)
        
        B1buttonOutlet.setTitle("", for: .normal)
        
        B2buttonOutlet.setTitle("", for: .normal)
        
        B3buttonOutlet.setTitle("", for: .normal)
        
        C1buttonOutlet.setTitle("", for: .normal)
        
        C2buttonOutlet.setTitle("", for: .normal)
        
        C3buttonOutlet.setTitle("", for: .normal)
        
        anouncment.text = ""
        
        
        
        if (nextToBeginRematch == 1) {
            
            isNextX = false
            isNextO = true
            
            nextToBeginRematch = nextToBeginRematch + 1
            
        } else if (nextToBeginRematch == 2) {
            
            isNextX = true
            isNextO = false
            
            nextToBeginRematch = nextToBeginRematch - 1
            
        }
        
        
        isThisADraw = true
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    @IBAction func A1buttonAction(_ sender: UIButton) {
        
        if (isButtonA1Active == true && isNextX == true) {
            
            A1buttonOutlet.setTitle("X", for: .normal)
            valueA1 = 1
           // isButtonA1Active = false
            isNextX = false
            isNextO = true
            
        } else if (isButtonA1Active == true && isNextO == true) {
            
            A1buttonOutlet.setTitle("O", for: .normal)
            valueA1 = 2
           // isButtonA1Active = false
            isNextX = true
            isNextO = false
            
        }
        
        
        // Check if player 1 wins
        
        
        
        if (isButtonA1Active == true) {
            
            
            if (valueA1 == 1 && valueA2 == 1 && valueA3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueB1 == 1 && valueB2 == 1 && valueB3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 1 && valueC2 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 1 && valueB2 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 1 && valueB2 == 1 && valueA3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 1 && valueB1 == 1 && valueC1 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA2 == 1 && valueB2 == 1 && valueC2 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA3 == 1 && valueB3 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            
            
            
            
            
            
            // Check if player 2 wins
            
            
            if (valueA1 == 2 && valueA2 == 2 && valueA3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueB1 == 2 && valueB2 == 2 && valueB3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 2 && valueC2 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 2 && valueB2 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 2 && valueB2 == 2 && valueA3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 2 && valueB1 == 2 && valueC1 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA2 == 2 && valueB2 == 2 && valueC2 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA3 == 2 && valueB3 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            isButtonA1Active = false
            
            
        }
        
        
        if (isButtonA1Active == false && isButtonA2Active == false && isButtonA3Active == false && isButtonB1Active == false && isButtonB2Active == false && isButtonB3Active == false && isButtonC1Active == false && isButtonC2Active == false && isButtonC3Active == false && isThisADraw == true) {
            
            anouncment.text = "Draw"
            
        }
        
        
        
        
    }
    
    
    
    
    @IBAction func A2buttonAction(_ sender: UIButton) {
        
        if (isButtonA2Active == true && isNextX == true) {
            
            A2buttonOutlet.setTitle("X", for: .normal)
            valueA2 = 1
           // isButtonA2Active = false
            isNextX = false
            isNextO = true
            
        } else if (isButtonA2Active == true && isNextO == true) {
            
            A2buttonOutlet.setTitle("O", for: .normal)
            valueA2 = 2
          //  isButtonA2Active = false
            isNextX = true
            isNextO = false
            
        }
        
        
        
        // Check if player 1 wins
        
        
        
        if (isButtonA2Active == true) {
            
            
            if (valueA1 == 1 && valueA2 == 1 && valueA3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueB1 == 1 && valueB2 == 1 && valueB3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 1 && valueC2 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 1 && valueB2 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 1 && valueB2 == 1 && valueA3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 1 && valueB1 == 1 && valueC1 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA2 == 1 && valueB2 == 1 && valueC2 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA3 == 1 && valueB3 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            
            
            
            
            
            
            // Check if player 2 wins
            
            
            if (valueA1 == 2 && valueA2 == 2 && valueA3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueB1 == 2 && valueB2 == 2 && valueB3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 2 && valueC2 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 2 && valueB2 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 2 && valueB2 == 2 && valueA3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 2 && valueB1 == 2 && valueC1 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA2 == 2 && valueB2 == 2 && valueC2 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA3 == 2 && valueB3 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            isButtonA2Active = false
            
            
        }
        
        
        
        if (isButtonA1Active == false && isButtonA2Active == false && isButtonA3Active == false && isButtonB1Active == false && isButtonB2Active == false && isButtonB3Active == false && isButtonC1Active == false && isButtonC2Active == false && isButtonC3Active == false && isThisADraw == true) {
            
            anouncment.text = "Draw"
            
        }
        
        
        
        
        
        
        
        
    }
    
    
    
    @IBAction func A3buttonAction(_ sender: UIButton) {
        
        if (isButtonA3Active == true && isNextX == true) {
            
            A3buttonOutlet.setTitle("X", for: .normal)
            valueA3 = 1
          //  isButtonA3Active = false
            isNextX = false
            isNextO = true
            
        } else if (isButtonA3Active == true && isNextO == true) {
            
            A3buttonOutlet.setTitle("O", for: .normal)
            valueA3 = 2
         //   isButtonA3Active = false
            isNextX = true
            isNextO = false
            
        }
        
        
        
        // Check if player 1 wins
        
        
        
        if (isButtonA3Active == true) {
            
            
            if (valueA1 == 1 && valueA2 == 1 && valueA3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueB1 == 1 && valueB2 == 1 && valueB3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 1 && valueC2 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 1 && valueB2 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 1 && valueB2 == 1 && valueA3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 1 && valueB1 == 1 && valueC1 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA2 == 1 && valueB2 == 1 && valueC2 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA3 == 1 && valueB3 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            
            
            
            
            
            
            // Check if player 2 wins
            
            
            if (valueA1 == 2 && valueA2 == 2 && valueA3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueB1 == 2 && valueB2 == 2 && valueB3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 2 && valueC2 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 2 && valueB2 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 2 && valueB2 == 2 && valueA3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 2 && valueB1 == 2 && valueC1 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA2 == 2 && valueB2 == 2 && valueC2 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA3 == 2 && valueB3 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            isButtonA3Active = false
            
            
        }
        
        
        if (isButtonA1Active == false && isButtonA2Active == false && isButtonA3Active == false && isButtonB1Active == false && isButtonB2Active == false && isButtonB3Active == false && isButtonC1Active == false && isButtonC2Active == false && isButtonC3Active == false && isThisADraw == true) {
            
            anouncment.text = "Draw"
            
        }
        
        
        
        
        
        
        
        
    }
    
    
    
    @IBAction func B1buttonAction(_ sender: UIButton) {
        
        if (isButtonB1Active == true && isNextX == true) {
            
            B1buttonOutlet.setTitle("X", for: .normal)
            valueB1 = 1
           // isButtonB1Active = false
            isNextX = false
            isNextO = true
            
        } else if (isButtonB1Active == true && isNextO == true) {
            
            B1buttonOutlet.setTitle("O", for: .normal)
            valueB1 = 2
           // isButtonB1Active = false
            isNextX = true
            isNextO = false
            
        }
        
        
        
        // Check if player 1 wins
        
        
        
        if (isButtonB1Active == true) {
            
            
            if (valueA1 == 1 && valueA2 == 1 && valueA3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueB1 == 1 && valueB2 == 1 && valueB3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 1 && valueC2 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 1 && valueB2 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 1 && valueB2 == 1 && valueA3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 1 && valueB1 == 1 && valueC1 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA2 == 1 && valueB2 == 1 && valueC2 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA3 == 1 && valueB3 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            
            
            
            
            
            
            // Check if player 2 wins
            
            
            if (valueA1 == 2 && valueA2 == 2 && valueA3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueB1 == 2 && valueB2 == 2 && valueB3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 2 && valueC2 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 2 && valueB2 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 2 && valueB2 == 2 && valueA3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 2 && valueB1 == 2 && valueC1 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA2 == 2 && valueB2 == 2 && valueC2 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA3 == 2 && valueB3 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            isButtonB1Active = false
            
            
        }
        
        
        if (isButtonA1Active == false && isButtonA2Active == false && isButtonA3Active == false && isButtonB1Active == false && isButtonB2Active == false && isButtonB3Active == false && isButtonC1Active == false && isButtonC2Active == false && isButtonC3Active == false && isThisADraw == true) {
            
            anouncment.text = "Draw"
            
        }
        
        
        
        
        
    }
    
    
    
    @IBAction func B2buttonAction(_ sender: UIButton) {
        
        if (isButtonB2Active == true && isNextX == true) {
            
            B2buttonOutlet.setTitle("X", for: .normal)
            valueB2 = 1
           // isButtonB2Active = false
            isNextX = false
            isNextO = true
            
        } else if (isButtonB2Active == true && isNextO == true) {
            
            B2buttonOutlet.setTitle("O", for: .normal)
            valueB2 = 2
          //  isButtonB2Active = false
            isNextX = true
            isNextO = false
            
        }
        
        
        
        // Check if player 1 wins
        
        
        
        if (isButtonB2Active == true) {
            
            
            if (valueA1 == 1 && valueA2 == 1 && valueA3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueB1 == 1 && valueB2 == 1 && valueB3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 1 && valueC2 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 1 && valueB2 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 1 && valueB2 == 1 && valueA3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 1 && valueB1 == 1 && valueC1 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA2 == 1 && valueB2 == 1 && valueC2 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA3 == 1 && valueB3 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            
            
            
            
            
            
            // Check if player 2 wins
            
            
            if (valueA1 == 2 && valueA2 == 2 && valueA3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueB1 == 2 && valueB2 == 2 && valueB3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 2 && valueC2 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 2 && valueB2 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 2 && valueB2 == 2 && valueA3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 2 && valueB1 == 2 && valueC1 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA2 == 2 && valueB2 == 2 && valueC2 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA3 == 2 && valueB3 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            isButtonB2Active = false
            
            
        }
        
        
        
        if (isButtonA1Active == false && isButtonA2Active == false && isButtonA3Active == false && isButtonB1Active == false && isButtonB2Active == false && isButtonB3Active == false && isButtonC1Active == false && isButtonC2Active == false && isButtonC3Active == false && isThisADraw == true) {
            
            anouncment.text = "Draw"
            
        }
        
        
        
        
        
        
        
    }
    

    
    @IBAction func B3buttonAction(_ sender: UIButton) {
        
        if (isButtonB3Active == true && isNextX == true) {
            
            B3buttonOutlet.setTitle("X", for: .normal)
            valueB3 = 1
          //  isButtonB3Active = false
            isNextX = false
            isNextO = true
            
        } else if (isButtonB3Active == true && isNextO == true) {
            
            B3buttonOutlet.setTitle("O", for: .normal)
            valueB3 = 2
          //  isButtonB3Active = false
            isNextX = true
            isNextO = false
            
        }
        
        
        
        
        // Check if player 1 wins
        
        
        
        if (isButtonB3Active == true) {
            
            
            if (valueA1 == 1 && valueA2 == 1 && valueA3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueB1 == 1 && valueB2 == 1 && valueB3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 1 && valueC2 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 1 && valueB2 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 1 && valueB2 == 1 && valueA3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 1 && valueB1 == 1 && valueC1 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA2 == 1 && valueB2 == 1 && valueC2 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA3 == 1 && valueB3 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            
            
            
            
            
            
            // Check if player 2 wins
            
            
            if (valueA1 == 2 && valueA2 == 2 && valueA3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueB1 == 2 && valueB2 == 2 && valueB3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 2 && valueC2 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 2 && valueB2 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 2 && valueB2 == 2 && valueA3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 2 && valueB1 == 2 && valueC1 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA2 == 2 && valueB2 == 2 && valueC2 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA3 == 2 && valueB3 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            isButtonB3Active = false
            
            
        }
        
        
        
        if (isButtonA1Active == false && isButtonA2Active == false && isButtonA3Active == false && isButtonB1Active == false && isButtonB2Active == false && isButtonB3Active == false && isButtonC1Active == false && isButtonC2Active == false && isButtonC3Active == false && isThisADraw == true) {
            
            anouncment.text = "Draw"
            
        }
        
        
        
        
        
    }
    
    
    
    @IBAction func C1buttonAction(_ sender: UIButton) {
        
        if (isButtonC1Active == true && isNextX == true) {
            
            C1buttonOutlet.setTitle("X", for: .normal)
            valueC1 = 1
          //  isButtonC1Active = false
            isNextX = false
            isNextO = true
            
        } else if (isButtonC1Active == true && isNextO == true) {
            
            C1buttonOutlet.setTitle("O", for: .normal)
            valueC1 = 2
         //   isButtonC1Active = false
            isNextX = true
            isNextO = false
            
        }
        
        
        
        // Check if player 1 wins
        
        
        
        if (isButtonC1Active == true) {
            
            
            if (valueA1 == 1 && valueA2 == 1 && valueA3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueB1 == 1 && valueB2 == 1 && valueB3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 1 && valueC2 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 1 && valueB2 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 1 && valueB2 == 1 && valueA3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 1 && valueB1 == 1 && valueC1 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA2 == 1 && valueB2 == 1 && valueC2 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA3 == 1 && valueB3 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            
            
            
            
            
            
            // Check if player 2 wins
            
            
            if (valueA1 == 2 && valueA2 == 2 && valueA3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueB1 == 2 && valueB2 == 2 && valueB3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 2 && valueC2 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 2 && valueB2 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 2 && valueB2 == 2 && valueA3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 2 && valueB1 == 2 && valueC1 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA2 == 2 && valueB2 == 2 && valueC2 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA3 == 2 && valueB3 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            isButtonC1Active = false
            
            
        }
        
        
        
        if (isButtonA1Active == false && isButtonA2Active == false && isButtonA3Active == false && isButtonB1Active == false && isButtonB2Active == false && isButtonB3Active == false && isButtonC1Active == false && isButtonC2Active == false && isButtonC3Active == false && isThisADraw == true) {
            
            anouncment.text = "Draw"
            
        }
        
        
        
        
    }
    
    
    
    @IBAction func C2buttonAction(_ sender: UIButton) {
        
        if (isButtonC2Active == true && isNextX == true) {
            
            C2buttonOutlet.setTitle("X", for: .normal)
            valueC2 = 1
          //  isButtonC2Active = false
            isNextX = false
            isNextO = true
            
        } else if (isButtonC2Active == true && isNextO == true) {
            
            C2buttonOutlet.setTitle("O", for: .normal)
            valueC2 = 2
           // isButtonC2Active = false
            isNextX = true
            isNextO = false
            
        }
        
        
        
        // Check if player 1 wins
        
        
        
        if (isButtonC2Active == true) {
            
            
            if (valueA1 == 1 && valueA2 == 1 && valueA3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueB1 == 1 && valueB2 == 1 && valueB3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 1 && valueC2 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 1 && valueB2 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 1 && valueB2 == 1 && valueA3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 1 && valueB1 == 1 && valueC1 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA2 == 1 && valueB2 == 1 && valueC2 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA3 == 1 && valueB3 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            
            
            
            
            
            
            // Check if player 2 wins
            
            
            if (valueA1 == 2 && valueA2 == 2 && valueA3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueB1 == 2 && valueB2 == 2 && valueB3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 2 && valueC2 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 2 && valueB2 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 2 && valueB2 == 2 && valueA3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 2 && valueB1 == 2 && valueC1 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA2 == 2 && valueB2 == 2 && valueC2 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA3 == 2 && valueB3 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            isButtonC2Active = false
            
            
        }
        
        
        
        if (isButtonA1Active == false && isButtonA2Active == false && isButtonA3Active == false && isButtonB1Active == false && isButtonB2Active == false && isButtonB3Active == false && isButtonC1Active == false && isButtonC2Active == false && isButtonC3Active == false && isThisADraw == true) {
            
            anouncment.text = "Draw"
            
        }
        
        
        
        
        
    }
    
    
    
    @IBAction func C3buttonAction(_ sender: UIButton) {
        
        if (isButtonC3Active == true && isNextX == true) {
            
            C3buttonOutlet.setTitle("X", for: .normal)
            valueC3 = 1
           // isButtonC3Active = false
            isNextX = false
            isNextO = true
            
        } else if (isButtonC3Active == true && isNextO == true) {
            
            C3buttonOutlet.setTitle("O", for: .normal)
            valueC3 = 2
           // isButtonC3Active = false
            isNextX = true
            isNextO = false
            
        }
        
        
        
        // Check if player 1 wins
        
        
        
        if (isButtonC3Active == true) {
            
            
            if (valueA1 == 1 && valueA2 == 1 && valueA3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueB1 == 1 && valueB2 == 1 && valueB3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 1 && valueC2 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 1 && valueB2 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 1 && valueB2 == 1 && valueA3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 1 && valueB1 == 1 && valueC1 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA2 == 1 && valueB2 == 1 && valueC2 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA3 == 1 && valueB3 == 1 && valueC3 == 1) {
                anouncment.text = "Player 1 has won"
                player1Wins = player1Wins + 1
                player1WinsCalculated.text = "Player 1 wins: \(player1Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            
            
            
            
            
            
            // Check if player 2 wins
            
            
            if (valueA1 == 2 && valueA2 == 2 && valueA3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueB1 == 2 && valueB2 == 2 && valueB3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 2 && valueC2 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 2 && valueB2 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueC1 == 2 && valueB2 == 2 && valueA3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA1 == 2 && valueB1 == 2 && valueC1 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA2 == 2 && valueB2 == 2 && valueC2 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            if (valueA3 == 2 && valueB3 == 2 && valueC3 == 2) {
                anouncment.text = "Player 2 has won"
                player2Wins = player2Wins + 1
                player2WinsCalculated.text = "Player 2 wins: \(player2Wins)"
                isButtonA1Active = false
                isButtonA2Active = false
                isButtonA3Active = false
                isButtonB1Active = false
                isButtonB2Active = false
                isButtonB3Active = false
                isButtonC1Active = false
                isButtonC2Active = false
                isButtonC3Active = false
                
                isThisADraw = false
            }
            
            isButtonC3Active = false
            
            
        }
        
        
        
        if (isButtonA1Active == false && isButtonA2Active == false && isButtonA3Active == false && isButtonB1Active == false && isButtonB2Active == false && isButtonB3Active == false && isButtonC1Active == false && isButtonC2Active == false && isButtonC3Active == false && isThisADraw == true) {
            
            anouncment.text = "Draw"
            
        }
        
        
        
        
    }
    
    
    
    
    
    


}

