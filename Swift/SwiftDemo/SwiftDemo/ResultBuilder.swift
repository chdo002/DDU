//
//  ResultBuilder.swift
//  SwiftDemo
//
//  Created by chendong on 2021/12/27.
//

import Foundation

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

func asfa(name: String, @ViewModeBuilder builder: () -> String) -> String{
    return "\(name) \(builder())"
}

func test() {
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
