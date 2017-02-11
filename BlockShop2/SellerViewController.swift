//
//  SellerViewController.swift
//  BlockShop2
//
//  Created by Prachi Bodas on 2/11/17.
//  Copyright © 2017 Prachi Bodas. All rights reserved.
//

import UIKit
//import Style

class SellerViewController: UIViewController {
    
    let nowSelling:UIButton = UIButton.init();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.red;
        
        //keyboard dismissal
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap);
        
        //now selling popup
        nowSelling.isHidden = true;
        nowSelling.backgroundColor = Style.colors["beige"];
        nowSelling.setTitle("Now Selling!", for: UIControlState.normal);
        nowSelling.addTarget(self, action: #selector(SellerViewController.onNowSelling), for: UIControlEvents.touchUpInside);
        self.view.addSubview(nowSelling);
        
        //dinex label
        let dinexLabel:UILabel = UILabel.init();
        dinexLabel.backgroundColor = UIColor.green;
        dinexLabel.textColor = UIColor.black;
        dinexLabel.text = "Dinex";
        dinexLabel.font = Style.regFontHeader;
        dinexLabel.textAlignment = NSTextAlignment.center;
        self.view.addSubview(dinexLabel);

        //block label
        let blockLabel:UILabel = UILabel.init();
        blockLabel.backgroundColor = UIColor.green;
        blockLabel.textColor = UIColor.black;
        blockLabel.text = "Blocks";
        blockLabel.font = Style.regFontHeader;
        blockLabel.textAlignment = NSTextAlignment.center;
        self.view.addSubview(blockLabel);
        
        
        //dinexPrice field
        let dinexPrice:UITextField = UITextField.init();
        dinexPrice.backgroundColor = UIColor.white;
        dinexPrice.textColor = UIColor.black;
        dinexPrice.text = "Dinex Price";
        dinexPrice.font = Style.regFontHeader;
        dinexPrice.textAlignment = NSTextAlignment.center;
        dinexPrice.keyboardType = UIKeyboardType.decimalPad;
        self.view.addSubview(dinexPrice);
        
        //blockPrice field
        let blockPrice:UITextField = UITextField.init();
        blockPrice.backgroundColor = UIColor.white;
        blockPrice.textColor = UIColor.black;
        blockPrice.text = "Block Price";
        blockPrice.font = Style.regFontHeader;
        blockPrice.textAlignment = NSTextAlignment.center;
        blockPrice.keyboardType = UIKeyboardType.decimalPad;
        self.view.addSubview(blockPrice);
        
        
        //sell button
        let sellButton = UIButton.init();
        sellButton.backgroundColor = Style.colors["blue"];
        sellButton.setTitle("Ready to Sell", for: UIControlState.normal);
        sellButton.addTarget(self, action: #selector(SellerViewController.onSell), for: UIControlEvents.touchUpInside);
        self.view.addSubview(sellButton);
        
        Style.autoViews(parent: view);
        
        //nowSelling button
        NSLayoutConstraint.init(item: nowSelling, attribute: NSLayoutAttribute.leftMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.leftMargin, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: nowSelling, attribute: NSLayoutAttribute.rightMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: nowSelling, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 0.4, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: nowSelling, attribute: NSLayoutAttribute.bottomMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 0.8, constant: 0.0).isActive = true;
        
        //dinex label constraints
        NSLayoutConstraint.init(item: dinexLabel, attribute: NSLayoutAttribute.leftMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.leftMargin, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: dinexLabel, attribute: NSLayoutAttribute.rightMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: dinexLabel, attribute: NSLayoutAttribute.bottomMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 0.2, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: dinexLabel, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 0.15, constant: 0.0).isActive = true;
        
        //block label constraints
        NSLayoutConstraint.init(item: blockLabel, attribute: NSLayoutAttribute.leftMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.leftMargin, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: blockLabel, attribute: NSLayoutAttribute.rightMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: blockLabel, attribute: NSLayoutAttribute.bottomMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 0.4, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: blockLabel, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 0.35, constant: 0.0).isActive = true;

        
        
        //dinex price constraints
        NSLayoutConstraint.init(item: dinexPrice, attribute: NSLayoutAttribute.leftMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.leftMargin, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: dinexPrice, attribute: NSLayoutAttribute.rightMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: dinexPrice, attribute: NSLayoutAttribute.bottomMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 0.3, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: dinexPrice, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 0.2, constant: 0.0).isActive = true;
        
        //block price constraints
        NSLayoutConstraint.init(item: blockPrice, attribute: NSLayoutAttribute.leftMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.leftMargin, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: blockPrice, attribute: NSLayoutAttribute.rightMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: blockPrice, attribute: NSLayoutAttribute.bottomMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 0.5, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: blockPrice, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 0.4, constant: 0.0).isActive = true;
        
        
        //sell button
        NSLayoutConstraint.init(item: sellButton, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.left, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: sellButton, attribute: NSLayoutAttribute.rightMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 0.6, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: sellButton, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 0.8, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: sellButton, attribute: NSLayoutAttribute.bottomMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 0.85, constant: 0.0).isActive = true;
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func onSell(){
        print("lmao");
        nowSelling.isHidden = false;
    }
    
    func onNowSelling(){
        print("lmao");
        self.navigationController?.popViewController(animated: true);
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    
}

