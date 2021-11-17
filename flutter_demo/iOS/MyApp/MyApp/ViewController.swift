//
//  ViewController.swift
//  MyApp
//
//  Created by 陈栋 on 2021/11/11.
//

import UIKit
import Flutter

class ViewController: FlutterViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }

    required init(coder aDecoder: NSCoder) {
        let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
        super.init(engine: flutterEngine, nibName: nil, bundle: nil)
    }
}
