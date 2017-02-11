//
//  ViewController.swift
//  BlockShop2
//
//  Created by Prachi Bodas on 2/10/17.
//  Copyright © 2017 Prachi Bodas. All rights reserved.
//

import UIKit
//import Style

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let v: LoginViewController = LoginViewController.init();
        self.navigationController?.pushViewController(v, animated: true);
        //self.present(v, animated: true, completion: nil);

    }

}

