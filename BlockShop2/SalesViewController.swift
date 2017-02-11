//
//  SalesViewController.swift
//  BlockShop2
//
//  Created by Prachi Bodas on 2/11/17.
//  Copyright © 2017 Prachi Bodas. All rights reserved.
//

//

import UIKit

class SalesViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //IF NOT LOGGED IN, PRESENT LOGIN MENU
        if (true){
            let v: LoginViewController = LoginViewController.init();
            self.present(v, animated: true, completion: nil);
        }
        
        self.view.backgroundColor = UIColor.red;
        
        //block price label
        let blockPrice:UILabel = UILabel.init();
        blockPrice.backgroundColor = UIColor.white;
        blockPrice.textColor = UIColor.black;
        blockPrice.text = "$5/block";
        blockPrice.font = Style.regFontHeader;
        blockPrice.textAlignment = NSTextAlignment.center;
        self.view.addSubview(blockPrice);
        
        //dinex price label
        let dinexPrice:UILabel = UILabel.init();
        dinexPrice.backgroundColor = UIColor.white;
        dinexPrice.textColor = UIColor.black;
        dinexPrice.text = "$0.50/$1 dinex";
        dinexPrice.font = Style.regFontHeader;
        dinexPrice.textAlignment = NSTextAlignment.center;
        self.view.addSubview(dinexPrice);
        
        //buyer button
        let buyerButton = UIButton.init();
        buyerButton.backgroundColor = Style.colors["blue"];
        buyerButton.setTitle("Buyer", for: UIControlState.normal);
        buyerButton.addTarget(self, action: #selector(SalesViewController.onBuyer), for: UIControlEvents.touchUpInside);
        self.view.addSubview(buyerButton);
        
        //seller button
        let sellerButton = UIButton.init();
        sellerButton.backgroundColor = Style.colors["blue"];
        sellerButton.setTitle("Seller", for: UIControlState.normal);
        sellerButton.addTarget(self, action: #selector(SalesViewController.onSeller), for: UIControlEvents.touchUpInside);
        self.view.addSubview(sellerButton);
        
        Style.autoViews(parent: view);
        
        
        //block price label constraints
        NSLayoutConstraint.init(item: blockPrice, attribute: NSLayoutAttribute.leftMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 0.2, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: blockPrice, attribute: NSLayoutAttribute.rightMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 0.8, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: blockPrice, attribute: NSLayoutAttribute.bottomMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 0.3, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: blockPrice, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 0.2, constant: 0.0).isActive = true;
        
        //dinex price label constraints
        NSLayoutConstraint.init(item: dinexPrice, attribute: NSLayoutAttribute.leftMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 0.2, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: dinexPrice, attribute: NSLayoutAttribute.rightMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 0.8, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: dinexPrice, attribute: NSLayoutAttribute.bottomMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 0.45, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: dinexPrice, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 0.35, constant: 0.0).isActive = true;
        
        
        //buyerButton button
        NSLayoutConstraint.init(item: buyerButton, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.left, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: buyerButton, attribute: NSLayoutAttribute.rightMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 0.6, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: buyerButton, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 0.5, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: buyerButton, attribute: NSLayoutAttribute.bottomMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 0.55, constant: 0.0).isActive = true;
        
        //sellerButton button
        NSLayoutConstraint.init(item: sellerButton, attribute: NSLayoutAttribute.leftMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 0.4, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: sellerButton, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.right, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: sellerButton, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 0.7, constant: 0.0).isActive = true;
        NSLayoutConstraint.init(item: sellerButton, attribute: NSLayoutAttribute.bottomMargin, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 0.75, constant: 0.0).isActive = true;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func onBuyer(){
        print("buying");
        let c:BuyerViewController = BuyerViewController.init()
        self.navigationController?.pushViewController(c, animated: true);
    }
    
    func onSeller(){
        print("selling");
        let c:SellerViewController = SellerViewController.init()
        self.navigationController?.pushViewController(c, animated: true);
    }
    
    
}

