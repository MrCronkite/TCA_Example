//
//  CounterReducer.swift
//  TCA
//
//  Created by Влад Шимченко on 6.05.26.
//

import Foundation
import ComposableArchitecture

@Reducer
struct CounterReducer {

    @ObservableState
    struct State: Equatable {
        var counter = 0
    }

    enum Action {
        case increment
        case decrement
    }

    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .increment:
                state.counter += 1
                return .none

            case .decrement:
                state.counter -= 1
                return .none
            }
        }
    }
}
