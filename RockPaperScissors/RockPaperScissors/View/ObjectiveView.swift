//
//  ObjectiveView.swift
//  RockPaperScissors
//
//  Created by Mustafa on 22.04.2022.
//

import SwiftUI

struct ObjectiveView: View {
    @EnvironmentObject private var gameViewModel: GameViewModel
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Opponent: \(gameViewModel.opponentMove)")
            Divider()
                .frame(minWidth: 0, maxWidth: 250)
            Text("Your Objective: \(gameViewModel.objective)")
        }
        .font(.title3.bold())
        .padding()
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(radius: 10)
    }
}

struct ObjectiveView_Previews: PreviewProvider {
    static var previews: some View {
        ObjectiveView()
            .environmentObject(GameViewModel())
            .foregroundColor(.white)
            .background(.black)
            .previewLayout(.sizeThatFits)
    }
}
