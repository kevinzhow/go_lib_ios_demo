//
//  ViewController.swift
//  go_lib_ios_demo
//
//  Created by 周楷雯 on 2021/6/22.
//

import UIKit
import Hello

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let client = HelloNasaClient()
        client.apiKey = "JOdbdzShYX1MxEflQ0V0u9rNhBorfReMx4CGwg0k"

        do {
            let apod = try client.getAPOD()
            print(apod.title)
            print(apod.explanation)
        } catch let error {
            print(error.localizedDescription)
        }
        // Do any additional setup after loading the view.
    }
}

