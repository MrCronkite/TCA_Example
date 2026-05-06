//
//  TCAApp.swift
//  TCA
//
//  Created by Влад Шимченко on 6.05.26.
//

import SwiftUI
import ComposableArchitecture

@main
struct TCAApp: App {

    let store = Store(initialState: CounterReducer.State()) {
        CounterReducer()
    }

    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
}
