//
//  ViewController.swift
//  PHBaseMoudle
//
//  Created by ronniejia on 12/03/2020.
//  Copyright (c) 2020 ronniejia. All rights reserved.
//

import PHBaseMoudle

class ViewController: PHBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        push(viewController: ViewController(), animated: true)
    }

}

