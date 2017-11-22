//
//  ViewController.swift
//  TimerKelly
//
//  Created by Kelly Douglass on 11/21/17.
//  Copyright © 2017 Kelly Douglass. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	var number = 60
	
	var timer = Timer()
	
	@IBOutlet weak var counterLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		counterLabel.text = String(number)
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@objc func decreasebyOne() {
		if number > 0 {
		number -= 1
		counterLabel.text = String(number)
		} else {
			timer.invalidate()
		}
	}
	
	@IBAction func startPresses(_ sender: Any) {
			timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.decreasebyOne), userInfo: nil, repeats: true)
		
	}
	
	@IBAction func pausePressed(_ sender: Any) {
		timer.invalidate()
	}
	
	@IBAction func resetPresses(_ sender: Any) {
		
		number = 60
		counterLabel.text = String(number)
	}
	
	@IBAction func subrtractPressed(_ sender: Any) {
		number -= 10
	}
	
	@IBAction func addPressed(_ sender: Any) {
		if number < 50 {
			number += 10
		}
	}
}

