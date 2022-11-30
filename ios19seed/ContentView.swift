//
//  ContentView.swift
//  ios19seed
//
//  Created by Tim Apple on 2022-11-30.
//

import SwiftUI

struct ContentView: View {
    @Binding var triggerRespring: Bool
    @State var text = "download free punjabi no virus"
    var body: some View {
        VStack {
            Text("iOS 19")
            Button(action: {
                    self.text = "haha get resprung bozo"
                sleep(UInt32(0.50))
                    print("Clicked")
                    respring()
                }, label: {
                    Text(text)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                })
            
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
