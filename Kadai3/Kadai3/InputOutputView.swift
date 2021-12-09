//
//  InputOutputView.swift
//  Kadai3
//
//  Created by mana on 2021/12/08.
//

import SwiftUI

struct InputView: View {
    @Binding  var inputNumber: Int?
    @Binding  var isSign: Bool

    var body: some View {
        VStack {
            TextField("", value: $inputNumber, format: .number)
                .frame(width: 120.0, height: 50.0)
                .border(.secondary)
                .keyboardType(/*@START_MENU_TOKEN@*/.numberPad/*@END_MENU_TOKEN@*/)
            HStack(spacing: 20) {
                Text("+")
                Toggle("+", isOn: $isSign)
                    .labelsHidden()
                Text("-")
            }
        }
    }
}

struct OutputView: View {
    @Binding var outputLeftNumber: Int
    @Binding var outputRightNumber: Int
    @Binding var displayAnswer: Int

    var body: some View {
        VStack {
            HStack {
                Text(String(outputLeftNumber))
                    .padding(/*@START_MENU_TOKEN@*/.horizontal, 30.0/*@END_MENU_TOKEN@*/)
                Text("+")
                    .padding()
                Text(String(outputRightNumber))
                    .padding(.horizontal, 30.0)
            }
            Text(String(displayAnswer))
        }
    }
}
