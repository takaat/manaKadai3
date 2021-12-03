//
//  ContentView.swift
//  kadai
//
//  Created by 上田学 on 2021/11/26.
//

import SwiftUI

struct ContentView: View {
    @State private var sum = 0
    var body: some View {
        VStack {
            Text(String(sum))
                .padding()
            Button("+1") {
                sum += 1
            }
            .padding()
            Button("Clear") {
                sum = 0
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
