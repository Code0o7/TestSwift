//
//  ViewController.swift
//  TestSwift
//
//  Created by MrChen on 2021/6/28.
//

import UIKit

struct Temperature {
  var value: Float = 37.0
}

class Person {
  var temp: Temperature?

  func sick() {
    temp?.value = 41.0
  }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let A = Person()
        let B = Person()
        let temp = Temperature()

        A.temp = temp
        B.temp = temp
        A.sick()
        
        print("\(String(describing: A.temp?.value))")
        print("\(String(describing: B.temp?.value))")
    }
}

