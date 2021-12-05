//
//  ContentView.swift
//  Kadai#2
//
//  Created by mana on 2021/12/05.
//

import SwiftUI

struct ContentView: View {
    private let operators = ["+", "-", "×", "÷"]
    @State private var displayAnswer = ""
    @State private var selectedOperator: String = "+"
    @State private var number1: Float?
    @State private var number2: Float?

    var body: some View {
        VStack(spacing: 20.0) {
            NumberField(number: $number1)
            NumberField(number: $number2)
            Picker("", selection: $selectedOperator, content: {
                ForEach(operators, id: \.self) { operatorsElement in Text(operatorsElement)}
            })
                .pickerStyle(.segmented)
                .padding(.horizontal)
            Button(action: {
                displayAnswer = calculation(selectedOperator: selectedOperator, number1: number1, number2: number2)
            }, label: {Text("Button")})
            Text(displayAnswer)
        }
    }
}

struct NumberField: View {
    @Binding var number: Float?

    var body: some View {
        TextField("", value: $number, format: .number)
            .frame(width: 150, height: 50)
            .border(.secondary)
    }
}

func calculation(selectedOperator: String, number1: Float?, number2: Float?) -> String {
    var answer: String = ""
    let number1 = number1 ?? 0
    let number2 = number2 ?? 0

    switch selectedOperator {
    case "+":
        answer = String(number1 + number2)
    case "-":
        answer = String(number1 - number2)
    case "×":
        answer = String(number1 * number2)
    case "÷":
        if number2 == 0 {
            answer = "割る数には0以外を入力してください"
        } else {
            answer = String(number1 / number2)
        }
    default:
        break
    }
    return answer
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
