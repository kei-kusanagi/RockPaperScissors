//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Juan Carlos Robledo Morales on 30/08/24.
//

import SwiftUI

struct ContentView: View {
    
    let moves = ["Rock", "Paper", "Scissors"]
    
    
    @State private var appChoice = "Rock"
    @State private var shouldWin = true
    
    
    @State private var playerScore = 0
    
    
    @State private var turnCount = 0
    
    var body: some View {
        VStack {
            Text("Score: \(playerScore)")
                .font(.largeTitle)
                .padding()
            
            Text("App chose: \(appChoice)")
                .font(.title)
                .padding()
            
            Text(shouldWin ? "You need to win" : "You need to lose")
                .font(.headline)
                .padding()
            
            HStack {
                Button("Rock") {
                    self.playerTapped(move: "Rock")
                }
                .font(.largeTitle)
                .padding()
                
                Button("Paper") {
                    self.playerTapped(move: "Paper")
                }
                .font(.largeTitle)
                .padding()
                
                Button("Scissors") {
                    self.playerTapped(move: "Scissors")
                }
                .font(.largeTitle)
                .padding()
            }
        }
    }
    
    
    func playerTapped(move: String) {
    
        let winningMove: String
        let losingMove: String

        switch appChoice {
        case "Rock":
            winningMove = "Paper"
            losingMove = "Scissors"
        case "Paper":
            winningMove = "Scissors"
            losingMove = "Rock"
        default: // Scissors
            winningMove = "Rock"
            losingMove = "Paper"
        }
        
    
        if (shouldWin && move == winningMove) || (!shouldWin && move == losingMove) {
            playerScore += 1
        } else {
            playerScore -= 1
        }
        
            nextTurn()
    }
    
    func nextTurn() {
    
        appChoice = moves.randomElement()!
        
    
        shouldWin.toggle()
        
    
        turnCount += 1
        
    
        if turnCount == 10 {
    
            showFinalScore()
        }
    }
    func showFinalScore() {
    
        guard let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return
        }
        
    
        guard let window = scene.windows.first else {
            return
        }
        
    
        let alert = UIAlertController(title: "Game Over", message: "Your final score is \(playerScore)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
    
            self.resetGame()
        }))
        
    
        window.rootViewController?.present(alert, animated: true, completion: nil)
    }


    func resetGame() {
        playerScore = 0
        turnCount = 0
        nextTurn()
    }

}


#Preview {
    ContentView()
}
