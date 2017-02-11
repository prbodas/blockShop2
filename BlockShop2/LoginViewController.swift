//
//  LoginViewController.swift
//  BlockShop2
//
//  Created by Prachi Bodas on 2/11/17.
//  Copyright © 2017 Prachi Bodas. All rights reserved.
//

import UIKit
//import Style

class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.red;
        
        //title label
        let title:UILabel = UILabel.init();
        title.backgroundColor = UIColor.white;
        title.textColor = UIColor.black;
        title.text = "Block Shop!";
        title.font = Style.regFontHeader;
        title.textAlignment = NSTextAlignment.center;
        self.view.addSubview(title);
        
        //logo imageview
        let imageView:UIImageView = UIImageView.init();
        imageView.image = UIImage.init(named: "scottydog");
        self.view.addSubview(imageView);
        
        //login button
        let loginButton = UIButton.init();
        loginButton.backgroundColor = Style.colors["blue"];
        loginButton.setTitle("Log In", for: UIControlState.normal);
        loginButton.addTarget(self, action: #selector(LoginViewController.onLogin), for: UIControlEvents.touchUpInside);
        self.view.addSubview(loginButton);
        
        Style.autoViews(parent: view);
        
        
        //title constraints
        NSLayoutConstraint.init(item: title, attribute: NSLayoutAttribute.leftMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.leftMargin, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: title, attribute: NSLayoutAttribute.rightMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: title, attribute: NSLayoutAttribute.bottomMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 0.2, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: title, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 0.1, constant: 0.0).isActive = true;
        
        
        //logo constraints
        NSLayoutConstraint.init(item: imageView, attribute: NSLayoutAttribute.leftMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 0.2, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: imageView, attribute: NSLayoutAttribute.rightMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 0.8, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: imageView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: imageView, attribute: NSLayoutAttribute.width, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: imageView, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 0.3, constant: 0.0).isActive = true;
        
        //login button
        NSLayoutConstraint.init(item: loginButton, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.left, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: loginButton, attribute: NSLayoutAttribute.rightMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 0.6, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: loginButton, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 0.8, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: loginButton, attribute: NSLayoutAttribute.bottomMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 0.85, constant: 0.0).isActive = true;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func onLogin(){
        print("lmao");
        self.dismiss(animated: true, completion: nil)
    }
    
    
}

