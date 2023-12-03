//
//  ContentView.swift
//  Better Rest
//
//  Created by Omer Cagri Sayir on 3.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    var body: some View {
        Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...10, step: 0.5)
    }
}

#Preview {
    ContentView()
}
