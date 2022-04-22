//
//  GameProgressView.swift
//  RockPaperScissors
//
//  Created by Mustafa on 22.04.2022.
//

import SwiftUI

struct GameProgressView: View {
    @EnvironmentObject private var gameViewModel: GameViewModel
    
    var body: some View {
        HStack {
            Text("Score: \(gameViewModel.score)")
                .frame(width: 140, height: 55)
                .background(.green)
                .clipShape(RoundedCorner(cornerRadius: 25, corners: [.topRight, .bottomRight]))
                .shadow(radius: 10)
            Spacer()
            Text("Round: \(gameViewModel.round)")
                .frame(width: 190, height: 55)
                .background(.blue)
                .clipShape(RoundedCorner(cornerRadius: 25, corners: [.topLeft, .bottomLeft]))
                .shadow(radius: 10)
        }
        .font(.system(size: 25).bold())
    }
}

struct GameProgressView_Previews: PreviewProvider {
    static var previews: some View {
        GameProgressView()
            .environmentObject(GameViewModel())
            .foregroundColor(.white)
            .previewLayout(.fixed(width: 420, height: 50))
    }
}
