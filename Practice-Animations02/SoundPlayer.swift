//
//  SoundPlayer.swift
//  Practice-Animations02
//
//  Created by Stanley Miller on 4/5/21.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func play(sound: String, ofType: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: ofType) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Unable to locate or play sound file...")
        }
    }
}

