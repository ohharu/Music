//
//  ViewController.swift
//  Music
//
//  Created by 金崎健汰 on 2018/03/31.
//  Copyright © 2018年 LIfe is Tech. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setAudioPlayer(soundName:String,type:String){
        let soundFilePath = Bundle.main.path(forResource:soundName,ofType:type)!
        let fileURL = URL(fileURLWithPath:soundFilePath)
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf:fileURL)
        }
        catch{
            print("音楽フィルが読み込めませんでした")
        }
        
    }
    
    @IBAction func natsuPlayButton(){
        setAudioPlayer(soundName:"natsu",type:"mp3")
        audioPlayer.play()
    }
    
    @IBAction func amePlayButton(){
        setAudioPlayer(soundName:"ame",type:"mp3")
        audioPlayer.play()
    }
    
    @IBAction func akiPlayButton(){
        setAudioPlayer(soundName:"aki",type:"mp3")
        audioPlayer.play()
    }
}

