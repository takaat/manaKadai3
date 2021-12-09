//
//  ContentView.swift
//  Kadai3
//
//  Created by mana on 2021/12/08.
//

import SwiftUI

struct ContentView: View {
    @State private var inputLeftNumber: Int?
    @State private var isLeftSign: Bool = false
    @State private var inputRightNumber: Int?
    @State private var isRightSign: Bool = false
    @State private var outputLeftNumber: Int = 0
    @State private var outputRightNumber: Int = 0
    @State private var displayAnswer: Int = 0

    var body: some View {
        VStack(spacing: 10) {
            HStack {
                InputLeftView(inputLeftNumber: $inputLeftNumber, isLeftSign: $isLeftSign)
                InputRightView(inputRightNumber: $inputRightNumber, isRightSign: $isRightSign)
            }
            Button(action: {
                calculation()
            }, label: {Text("Button")})
            OutputView(outputLeftNumber: $outputLeftNumber,
                       outputRightNumber: $outputRightNumber,
                       displayAnswer: $displayAnswer)
        }
    }
    private func calculation() {
        let inputLeftNumber = inputLeftNumber ?? 0
        let inputRightNumber = inputRightNumber ?? 0

        if isLeftSign {
            outputLeftNumber = -inputLeftNumber
        } else {
            outputLeftNumber = inputLeftNumber
        }
        if isRightSign {
            outputRightNumber = -inputRightNumber
        } else {
            outputRightNumber = inputRightNumber
        }
        displayAnswer = outputLeftNumber + outputRightNumber
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
