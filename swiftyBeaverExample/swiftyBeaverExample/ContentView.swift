//
//  ContentView.swift
//  swiftyBeaverExample
//
//  Created by JULIAN OSORIO RAMIREZ on 26/12/24.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    @State private var counter = 0

    var body: some View {
        VStack(spacing: 20) {
            Text("SwiftyBeaver Logging Example")
                .font(.largeTitle)
                .padding()

            Text("Counter: \(counter)")
                .font(.title)
                .padding()

            HStack {
                Button(action: incrementCounter) {
                    Text("Increment")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }

                Button(action: resetCounter) {
                    Text("Reset")
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }

            Spacer()
        }
        .padding()
        .onAppear {
            // Initial logging when the view appears
            LogManager.shared.logInfo("ContentView appeared.")
            LogManager.shared.logDebug("Debugging the ContentView appearance.")
        }
    }

    private func incrementCounter() {
        counter += 1
        LogManager.shared.logDebug("Counter incremented: \(counter)")  // Log the counter value
    }

    private func resetCounter() {
        counter = 0
        LogManager.shared.logInfo("Counter reset.")  // Log reset action
    }
}

#Preview {
    ContentView()
}
