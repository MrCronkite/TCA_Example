//
//  ContentView.swift
//  TCA
//
//  Created by Влад Шимченко on 6.05.26.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {

    let store: StoreOf<CounterReducer>

    var body: some View {
        VStack(spacing: 20) {

            Text("\(store.counter)")
                .font(.largeTitle)
                .bold()

            HStack(spacing: 40) {

                Button("-") {
                    store.send(.decrement)
                }
                .font(.largeTitle)

                Button("+") {
                    store.send(.increment)
                }
                .font(.largeTitle)
            }
        }
        .padding()
    }
}
