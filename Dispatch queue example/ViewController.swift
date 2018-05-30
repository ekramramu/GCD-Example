//
//  ViewController.swift
//  Dispatch queue example
//
//  Created by Ekramul Hoque on 30/5/18.
//  Copyright © 2018 Ekramul Hoque. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        simpleQueue()
     
    }

    func simpleQueue() {
        //create cuostom Queue
        let queue = DispatchQueue(label: "com.simpleQueue.Ekram")
        
        //Sync Custom Queue
        queue.sync {
            for i in 0..<10 {
                print("Custom Green Love: 💚",i)
            }
        }
        
//        // Async Custom Queue
//        queue.async {
//            for i in 0..<10 {
//                print("Custom Green Love: 💚",i)
//            }
//        }
//
        //Main Queue
        for i in 100..<110 {
            print("Crazy Red Love : ❤️",i)
        }
        
    }

}

