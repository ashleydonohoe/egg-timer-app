//
//  ViewController.swift
//  Egg Timer
//
//  Created by Gabriele on 7/23/16.
//  Copyright © 2016 Ashley Donohoe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    var timer = Timer()
    
    var seconds = 210
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timerLabel.text = String(seconds)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func processTimer() {
        if seconds >= 1 {
            seconds -= 1
            timerLabel.text = String(seconds)
        }
    }
    
    
    @IBAction func removeTen(_ sender: AnyObject) {
        if seconds >= 10 {
            seconds -= 10
            timerLabel.text = String(seconds)
        }
    }
    
    @IBAction func addTen(_ sender: AnyObject) {
        seconds += 10
        timerLabel.text = String(seconds)
        
    }
    
    @IBAction func resetTimer(_ sender: AnyObject) {
        timer.invalidate()
        seconds = 210
        timerLabel.text = String(seconds)
    }
    
    @IBAction func startTimer(_ sender: AnyObject) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)

    }
    
    @IBAction func pauseTimer(_ sender: AnyObject) {
        timer.invalidate()
        
    }
}

