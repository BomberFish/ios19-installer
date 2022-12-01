//
//  ContentView.swift
//  ios19seed
//
//  Created by Tim Apple on 2022-11-30.
//

import SwiftUI

struct ContentView: View {
    @Binding var triggerRespring: Bool
    @State var text = ""
    @State var btntext = "Install"
    var body: some View {
        VStack {
            Text("iOS 19")
                .font(.largeTitle)
            Text("Internal Preview")
                .font(.system(size: 21, weight: .bold, design: .monospaced))
            Button(action: {
                    print("Clicked the big button")
                    // "Installing" yeah right
                    self.btntext = "Installing..."
                    sleep(20)
                    // Restarting = respring lol
                    self.text = "Done! restarting..."
                    sleep(5)
                    // We do a little trolling 😏
                    respring()
                }, label: {
                    Text(btntext)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                })
            Text(text)
                .font(.system(size: 20, weight: .black, design: .monospaced))
            .background(Color.blue)
            .foregroundColor(Color.white)
            .cornerRadius(20)
            Text("For Apple Internal use only. Unauthorized distribution will result in termination and subsequent legal action.")
                .font(.system(size: 12, weight: .bold, design: .monospaced))
        }
        .padding()
    }
    
    func respring() {
        withAnimation(.easeInOut) {
            triggerRespring = true
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(triggerRespring: .constant(false))
    }
}
