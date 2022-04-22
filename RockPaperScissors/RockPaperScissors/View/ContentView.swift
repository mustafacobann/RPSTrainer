//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Mustafa on 21.12.2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var gameViewModel = GameViewModel()
    @State private var showingGameOverAlert = false
        
    var body: some View {
        VStack {
            Text("RPS Trainer")
                .font(.largeTitle.bold())
                .padding()
            GameProgressView()
            Spacer()
            ObjectiveView()
            Spacer()
            ItemSelectorView(showingGameOverAlert: $showingGameOverAlert)
            Spacer()
        }
        .environmentObject(gameViewModel)
        .background(Color(red: 0.2, green: 0.2, blue: 0.5))
        .foregroundColor(.white)
        .alert("Game Over", isPresented: $showingGameOverAlert) {
            Button("Restart") { gameViewModel.resetGame() }
        } message: {
            Text("Your score: \(gameViewModel.score)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let previewDevices = ["iPhone 13 Pro Max",
                              "iPhone 13",
                              "iPhone SE (3rd generation)"
                             ]
        ForEach(previewDevices, id: \.self) { deviceName in
            ContentView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
