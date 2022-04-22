//
//  GameViewModel.swift
//  RockPaperScissors
//
//  Created by Mustafa on 22.04.2022.
//

import Foundation

class GameViewModel: ObservableObject {
    @Published private var game: Game
    var opponentMove: String { game.computerAnswer.rawValue }
    var objective: String { game.shouldWin ? "WIN" : "LOSE" }
    var isGameOver: Bool { game.currentRound > 10 }
    var score: Int { game.score }
    var round: String { "\(min(game.currentRound, 10)) / 10" }
    
    init() {
        game = Game()
    }
    
    func select(option: Option) {
        game.select(option: option)
    }
    
    func resetGame() {
        game.resetGame()
    }
}
