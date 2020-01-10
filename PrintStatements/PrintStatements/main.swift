//
//  main.swift
//  PrintStatements
//
//  Created by Soni Suman on 10/01/20.
//  Copyright © 2020 Soni Suman. All rights reserved.
//

import Foundation
class Bar: NSObject {
    override var description: String {
        return "Bar descriptions"
    }
    override var debugDescription: String {
        return "Bar debug descriptions"
    }
}

class Foo: CustomStringConvertible, CustomDebugStringConvertible {
    var name = "soni"
    var age = 25
    var description: String {
        return "Foo descriptions"
    }
    //    var debugDescription: String {
    //        let className = type(of: self)
    //        let address = "\(Unmanaged.passRetained(self as AnyObject).toOpaque())"
    //        return "<\(className): \(address)>"
    //    }
}

extension CustomDebugStringConvertible {
    var debugDescription: String {
        let className = type(of: self)
        let address = "\(Unmanaged.passRetained(self as AnyObject).toOpaque())"
        var description = "<\(className): \(address), {"
        
        let mirror = Mirror(reflecting: self)
        description += mirror.children.compactMap {(arg) -> String? in
            let (label, value) = arg
            guard let propertyName = label else {return nil}
            return "\(propertyName): \(value)"
        }.joined(separator: ", ")
        description += "}>"
        return description
    }
}

var bar = Bar()
var foo = Foo()
print(bar)
debugPrint(bar)
print(foo)
debugPrint(foo)
