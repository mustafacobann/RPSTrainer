//
//  ItemSelectorView.swift
//  RockPaperScissors
//
//  Created by Mustafa on 22.04.2022.
//

import SwiftUI

struct ItemSelectorView: View {
    @EnvironmentObject private var gameViewModel: GameViewModel
    @Binding var showingGameOverAlert: Bool
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Select an item")
            
            HStack(spacing: 20) {
                ForEach(Option.allCases) { option in
                    CircleButton(title: option.rawValue, width: 100, height: 100) {
                        gameViewModel.select(option: option)
                        showingGameOverAlert = gameViewModel.isGameOver
                    }
                }
            }
        }
    }
}

struct ItemSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ItemSelectorView(showingGameOverAlert: .constant(false))
            .foregroundColor(.white)
            .background(Color(white: 0.3))
            .previewLayout(.sizeThatFits)
    }
}
