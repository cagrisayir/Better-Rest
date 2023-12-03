//
//  ContentView.swift
//  Better Rest
//
//  Created by Omer Cagri Sayir on 3.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date.now
    
    @State private var sleepAmount = 8.0
    var body: some View {
        VStack {
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...10, step: 0.5)
            DatePicker("Please enter a time", selection: $wakeUp, in: Date.now...)
        }
        
        
    }
    
    func exampleDate() {
        let tomorrow = Date.now.addingTimeInterval(86400)
        let range = Date.now...tomorrow
    }
    
    func trivialExample() {
        var components = DateComponents()
        components.hour = 8
        components.minute = 0
        let date = Calendar.current.date(from: components) ?? Date.now
        
    }
}

#Preview {
    ContentView()
}
