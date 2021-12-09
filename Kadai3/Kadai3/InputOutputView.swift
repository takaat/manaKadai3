//
//  InputOutputView.swift
//  Kadai3
//
//  Created by mana on 2021/12/08.
//

import SwiftUI

struct InputLeftView: View {
    @Binding  var inputLeftNumber: Int?
    @Binding  var isLeftSign: Bool

    var body: some View {
        VStack {
            TextField("", value: $inputLeftNumber, format: .number)
                .frame(width: 120.0, height: 50.0)
                .border(.secondary)
                .keyboardType(/*@START_MENU_TOKEN@*/.numberPad/*@END_MENU_TOKEN@*/)
            HStack(spacing: 20) {
                Text("+")
                Toggle("+", isOn: $isLeftSign)
                    .labelsHidden()
                Text("-")
            }
        }
    }
}

struct InputRightView: View {
    @Binding  var inputRightNumber: Int?
    @Binding  var isRightSign: Bool

    var body: some View {
        VStack {
            TextField("", value: $inputRightNumber, format: .number)
                .frame(width: 120.0, height: 50.0)
                .border(.secondary)
                .keyboardType(/*@START_MENU_TOKEN@*/.numberPad/*@END_MENU_TOKEN@*/)
            HStack(spacing: 20) {
                Text("+")
                Toggle("+", isOn: $isRightSign)
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
