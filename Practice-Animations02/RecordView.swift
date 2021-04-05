//
//  RecordView.swift
//  Practice-Animations02
//
//  Created by Stanley Miller on 4/5/21.
//

import SwiftUI

struct RecordView: View {
    @Binding var degrees: Double
    @Binding var shouldAnimate: Bool
    
    var body: some View {
        Image("record")
            .resizable()
            .frame(width: 275, height: 275)
            .shadow(color: .gray, radius: 1, x: 0.1, y: 0.1)
            .rotationEffect(Angle.degrees(degrees))
            .animation(Animation.linear(duration: shouldAnimate ? 60 : 0).delay(2.35))
    }
}

struct RecordView_Previews: PreviewProvider {
    static var previews: some View {
        RecordView(degrees: .constant(0.1), shouldAnimate: .constant(true))
    }
}
