//
//  ViewController.swift
//  VideoPlayer
//
//  Created by Paul Choi on 6/1/18.
//  Copyright © 2018 Paul Choi. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var containerView: UIView!
    
    private var controller = AVPlayerViewController()
    private var player = AVPlayer()
    
    override func viewDidAppear(_ animated: Bool) {
        
        containerView.backgroundColor = UIColor.green
        
        let url = URL(fileURLWithPath: "/Users/q1431708/Desktop/dev/test/test/media/Short-test-video.mp4")
        //        let url = URL(fileURLWithPath: "http://qvclvp2.mmdlive.lldns.net/qvclvp2/9aa645c89c5447a8937537011e8f8d0d/manifest.m3u8")
        let asset = AVAsset(url: url as URL)
        let playerItem = AVPlayerItem(asset: asset)
        player = AVPlayer(playerItem: playerItem)
        controller.player = player
        
        containerView.addSubview(controller.view)
        controller.view.frame = containerView.bounds
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

