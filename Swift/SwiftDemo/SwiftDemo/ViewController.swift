//
//  ViewController.swift
//  SwiftDemo
//
//  Created by 陈栋 on 2021/12/26.
//

import UIKit
import SwiftUI

@resultBuilder
struct ViewModeBuilder {
    static func buildOptional(_ component: String?) -> String {
        component ?? "default"
    }
    static func buildArray(_ components: [String]) -> String {
        print("->",components)
        return components.joined()
    }
    static func buildEither(first component: String) -> String {
        component
    }
    static func buildEither(second component: String) -> String {
        component
    }
    static func buildBlock(_ components: String...) -> String {
//        components.joined(separator: "-")
        ""
    }
    static func buildExpression(_ expression: String) -> String {
        print("调了\(expression)---")
        return "\(expression)"
    }
}


class ViewController: UIViewController {
    
    func asfa(name: String, @ViewModeBuilder builder: () -> String) -> String{
        return "\(name) \(builder())"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let a = 1
        let b : String? = nil
        print(asfa(name: "", builder: {
            "1"
            "2"
            if let v = b {
                v
            } else {
                "default2"
            }
            if a == 2 {
                "3"
            } else {
                "4"
            }
            for _ in 0...3 {
                "a"
            }
            for _ in 0...3 {
                "b"
            }
        }))
    }
}
