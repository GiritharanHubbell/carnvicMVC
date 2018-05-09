//
//  ViewController.swift
//  carnvicMVC
//
//  Created by Giritharan Sugumar on 5/9/18.
//  Copyright © 2018 giritharan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let path = Bundle.main.path(forResource: "UserData", ofType: "") {
            do {
                
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                if let jsonResult = jsonResult as? Dictionary<String, AnyObject>, let person = jsonResult["person"] as? [Any] {
                    // do stuff
                }
            } catch {
                // handle error
            }
        }
    }


}

