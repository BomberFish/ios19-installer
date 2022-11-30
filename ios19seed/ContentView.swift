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
    var body: some View {
        VStack {
            Text(text)
                .font(.system(size: 42, weight: .black, design: .serif))
            Text("iOS 19")
                .font(.largeTitle)
            Text("Internal Preview")
                .font(.system(size: 21, weight: .bold, design: .monospaced))
            Button(action: {
                    self.text = "haha get resprung bozo"
                    sleep(1)
                    print("Clicked")
                    respring()
                }, label: {
                    Text("download free punjabi no virus")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                })
            .background(Color.blue)
            .foregroundColor(Color.white)
            .cornerRadius(10)
            
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
