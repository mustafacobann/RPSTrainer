//
//  GameModel.swift
//  RockPaperScissors
//
//  Created by Mustafa on 22.04.2022.
//

import Foundation

struct Game {
    private(set) var currentRound: Int
    private(set) var score: Int
    private(set) var computerAnswer: Option
    private(set) var shouldWin: Bool
    
    init() {
        self.currentRound = 1
        self.score = 0
        self.computerAnswer = Option.allCases.randomElement() ?? Option.paper
        self.shouldWin = Bool.random()
    }
    
    mutating func updateComputerAnswer() {
        computerAnswer = Option.allCases.randomElement() ?? Option.paper
        shouldWin = Bool.random()
    }

    mutating func resetGame() {
        score = 0
        currentRound = 1
        updateComputerAnswer()
    }

    mutating func select(option playerAnswer: Option) {
        let playerWins = (computerAnswer == .rock && playerAnswer == .paper) ||
                         (computerAnswer == .paper && playerAnswer == .scissors) ||
                         (computerAnswer == .scissors && playerAnswer == .rock)
        
        score += (playerWins && shouldWin) || (!playerWins && !shouldWin) ? 1 : -1
        currentRound += 1
        if currentRound != 10 {
            updateComputerAnswer()
        }
    }
}

enum Option: String, CaseIterable, Identifiable {
    case rock = "🪨", paper = "📃", scissors = "✂️"
    var id: Option { self }
}
