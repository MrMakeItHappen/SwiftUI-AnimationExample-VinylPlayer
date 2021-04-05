//
//  RecordPlayerView.swift
//  Practice-Animations02
//
//  Created by Stanley Miller on 4/5/21.
//

import SwiftUI

struct RecordPlayerView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 345, height: 345)
                .cornerRadius(10.0)
            Image("woodGrain")
                .resizable()
                .frame(width: 335, height: 335)
                .shadow(color: .white, radius: 3, x: 0, y: 0)
        }
    }
}

struct RecordPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        RecordPlayerView()
    }
}
