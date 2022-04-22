//
//  RoundedButton.swift
//  RockPaperScissors
//
//  Created by Mustafa on 22.12.2021.
//

import SwiftUI

struct CircleButton: View {
    let title: String
    let width: CGFloat
    let height: CGFloat
    let action: () -> ()
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .frame(width: width, height: height)
                .background(.black)
                .clipShape(Circle())
                .shadow(color: .black, radius: 3)
                .font(.title.weight(.semibold))
                .foregroundColor(.white)
        }
    }
}

struct RoundedButton_Previews: PreviewProvider {
    static var previews: some View {
        CircleButton(title: "Rock", width: 100, height: 100) {}
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
