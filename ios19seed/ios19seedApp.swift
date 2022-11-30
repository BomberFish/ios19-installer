//
//  ios19seedApp.swift
//  ios19seed
//
//  Created by Tim Apple on 2022-11-30.
//

import SwiftUI

@main
struct ios19seedApp: App {
    @State var triggerRespring = false
    var body: some Scene {
        WindowGroup {
            // Reuse some code from pissra1n yay
            ContentView(triggerRespring: $triggerRespring)
                .scaleEffect(triggerRespring ? 0.95 : 1)
                .brightness(triggerRespring ? -1 : 0)
                #if os(iOS) || os(tvOS) || os(watchOS)
                    .statusBarHidden(triggerRespring)
                #endif
                .onChange(of: triggerRespring) { _ in
                    if triggerRespring == true {
                    #if os(iOS)
                        
                        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { timer in
                            
                            // TY amy for respring bug
                            guard let window = UIApplication.shared.windows.first else { return }
                            while true {
                               window.snapshotView(afterScreenUpdates: false)
                            }
                            
                        }
                    #endif
                    }
                }
        }
    }
}
