//
//  main.swift
//  BreakPoints
//
//  Created by Soni Suman on 10/01/20.
//  Copyright © 2020 Soni Suman. All rights reserved.
//

import Foundation

class Person: CustomStringConvertible {
    var name: String
    var age: Int
    
    init(name: String,age: Int) {
        self.name = name
        self.age = age
    }
    var description: String {
        return "\(name): \(age)"
    }
}

let person1 = Person(name: "soni", age: 25)
let person2 = Person(name: "suman", age: 26)
let person3 = Person(name: "rajeev", age: 27)
let people = [person1,person2,person3]
//print(people)

for person in people {
    print(person)
}

/*
 Important commands :-

1) Po -: Print out the description of an object
 2) help po -:
      Evaluate an expression on the current thread.  Displays any returned value
      with formatting controlled by the type's author.  Expects 'raw' input (see
      'help raw-input'.)

 Syntax: po <expr>

 Command Options Usage:
   po <expr>

 'po' is an abbreviation for 'expression -O  --'
 
 3) experssion -: (e)to change the value of the object
 
 e person1.name = "Anshu"
 
4) continue -:(c)  (run the continue)
 
 * (lldb) e person1.name = "Anshu"
 * (lldb) c
 * Process 15551 resuming
 * [Anshu: 25, suman: 26, rajeev: 27]
 * Program ended with exit code: 0
 
 */


