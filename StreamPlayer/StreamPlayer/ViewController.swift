//
//  ViewController.swift
//  StreamPlayer
//
//  Created by simba on 2/28/20.
//  Copyright © 2020 simba. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

  //  private var playerLayer: AVPlayerLayer!
   // private var player: AVPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        playStartVideo()
    }

    private func playStartVideo() {
        
        let fileURL = NSURL(string: "http://www.aaa.com/m3u8/l.m3u8")
        
        let avAsset = AVURLAsset(url: fileURL! as URL, options: nil)
       
        let item = AVPlayerItem(asset: avAsset)
               
        
        let player = AVPlayer(playerItem: item)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.bounds
        self.view.layer.addSublayer(playerLayer)
        player.play()
    }

}

