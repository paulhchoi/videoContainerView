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
    
    var playerViewController = AVPlayerViewController()
    var playerView = AVPlayer()
    
    @IBOutlet weak var containerView: UIView!

    override func viewDidAppear(_ animated: Bool) {
        
        containerView.backgroundColor = UIColor.green
        
        let fileURL = NSURL(fileURLWithPath: "/Users/q1431708/Desktop/dev/test/test/Short-test-video.mp4")

        playerView = AVPlayer(url: fileURL as URL)
        playerViewController.player = playerView
        
        
        //addChildViewController(playerViewController) // containerVC is now managing view of childVC
        containerView.addSubview(playerViewController.view)
        
        playerViewController.view.frame = containerView.frame
        playerViewController.view.bounds = containerView.bounds

        //  fix bounds and frame of view
        
//        self.present(playerViewController, animated: true) {
//            self.playerViewController.player?.play()
//        }

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

