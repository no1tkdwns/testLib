//
//  ViewController.swift
//  TestLib-pod
//
//  Created by sjpark on 09/21/2023.
//  Copyright (c) 2023 sjpark. All rights reserved.
//

import UIKit
import TestLib

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
                TestLib.present(vc: self)
//        present()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

