//
//  ContentView.swift
//  Practice-Animations02
//
//  Created by Stanley Miller on 4/5/21.
//

import SwiftUI

struct ContentView: View {
    @State private var rotateRecord = false
    @State private var rotateArm = false
    @State private var shouldAnimate = false
    @State private var degrees = 0.0
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 2, endRadius: 500)
                .edgesIgnoringSafeArea(.all)
            ZStack {
                RecordPlayerView()
                RecordView(degrees: $degrees, shouldAnimate: $shouldAnimate)
                ArmView(rotateArm: $rotateArm)
            }
            .padding(.bottom, 180)
            Button(action: {
                shouldAnimate.toggle()
                
                if shouldAnimate {
                    degrees = 36000
                    rotateArm.toggle()
                    play(sound: "music", ofType: "m4a")
                } else {
                    rotateArm.toggle()
                    degrees = 0.0
                    audioPlayer?.stop()
                }
                
            }, label: {
                Label(shouldAnimate ? "Stop" : "Play", systemImage: shouldAnimate ? "stop.fill" : "play.circle.fill")
                    .foregroundColor(.white)
            })
            .padding(.top, 300)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
