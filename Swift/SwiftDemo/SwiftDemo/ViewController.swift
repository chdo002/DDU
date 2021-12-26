//
//  ViewController.swift
//  SwiftDemo
//
//  Created by 陈栋 on 2021/12/26.
//

import UIKit
import SwiftUI

@resultBuilder
struct ViewModeBuilder<T> {
    
    static func buildBlock(_ components: T...) -> T {
        return components.first!
    }
   
}


class ViewController: UIViewController {
    
    func asfa(name: String, @ViewModeBuilder<Int> builder: () -> Int) -> String{
        return "\(name): \(builder())"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(asfa(name: "ss") {
            1
            2
            4
        })
    }
}

