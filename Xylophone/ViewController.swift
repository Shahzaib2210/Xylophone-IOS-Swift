//
//  ViewController.swift
//  Xylophone
//
//  Created by Shahzaib Mumtaz on 22/08/2022.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    var player : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func KeyPressed(_ sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!)
    }
    
    // Mark:- Function to Play Sound

    func playSound(soundName: String) {
        
           let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
           player = try! AVAudioPlayer(contentsOf: url!)
           player.play()
    }
}

