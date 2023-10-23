//
//  ViewController.swift
//  AnimationApp2
//
//  Created by Aleksandr Bochkarev on 10/22/23.
//

import UIKit
import SpringAnimation

class MainViewController: UIViewController {
    
    @IBOutlet var presetValue: UILabel!
    @IBOutlet var curveValue: UILabel!
    @IBOutlet var forceValue: UILabel!
    @IBOutlet var durationValue: UILabel!
    @IBOutlet var delayValue: UILabel!
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var runButton: SpringButton!
    
    var animation1 = Animation.getAnimation1()
    var animation2: Animation!
    var counterButtonPressed = 2

    override func viewDidLoad() {
            presetValue.text = animation1.presetOfAnimation
            curveValue.text = animation1.curveOfAnimation
            forceValue.text = String(Float(animation1.forceOfAnimation))
            durationValue.text = String(Float(animation1.durationOfAnimation))
            delayValue.text = String(Float(animation1.delayOfAnimation))
    }
    
    @IBAction func runButtonPressed(_ sender: SpringButton) {
        if counterButtonPressed > 1 {
            springAnimationView.animation = animation1.presetOfAnimation
            springAnimationView.curve = animation1.curveOfAnimation
            springAnimationView.force = animation1.forceOfAnimation
            springAnimationView.duration = animation1.durationOfAnimation
            springAnimationView.delay = animation1.delayOfAnimation
            
            springAnimationView.animate()
            
            animation2 = Animation.getAnimation2()
            
            sender.setTitle("Run \(animation2.presetOfAnimation)", for: .normal)
            
            counterButtonPressed = 0
            
        } else {
            springAnimationView.animation = animation2.presetOfAnimation
            springAnimationView.curve = animation2.curveOfAnimation
            springAnimationView.force = animation2.forceOfAnimation
            springAnimationView.duration = animation2.durationOfAnimation
            springAnimationView.delay = animation2.delayOfAnimation
            
            presetValue.text = animation2.presetOfAnimation
            curveValue.text = animation2.curveOfAnimation
            forceValue.text = String(Float(animation2.forceOfAnimation))
            durationValue.text = String(Float(animation2.durationOfAnimation))
            delayValue.text = String(Float(animation2.delayOfAnimation))
            
            springAnimationView.animate()
            
            animation2 = Animation.getAnimation2()
            
            sender.setTitle("Run \(animation2.presetOfAnimation)", for: .normal)
            
        }
    }
}

