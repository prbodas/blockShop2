//
//  BuyerCell.swift
//  BlockShop2
//
//  Created by Prachi Bodas on 2/11/17.
//  Copyright © 2017 Prachi Bodas. All rights reserved.
//

import UIKit

class BuyerCell: UITableViewCell {
    
    var name = UILabel()
    var dinexPrice = UILabel()
    var blockPrice = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        //set self values
        self.backgroundColor = Style.colors["blue"]
        
        //set textLabel values
        name.numberOfLines = 0
        name.text = "Hello"
        name.backgroundColor = UIColor.clear;
        name.textColor = UIColor.black;
        name.font = Style.regFont
        name.textAlignment = NSTextAlignment.center;
        
        //set username values
        dinexPrice.numberOfLines = 0
        dinexPrice.text = "$0.70"
        dinexPrice.backgroundColor = UIColor.clear;
        dinexPrice.textColor = UIColor.black;
        dinexPrice.font = Style.regFont
        dinexPrice.textAlignment = NSTextAlignment.center;
        
        //set timestamp values
        blockPrice.numberOfLines = 0
        blockPrice.text = "$5"
        blockPrice.backgroundColor = UIColor.clear;
        blockPrice.textColor = UIColor.blue;
        blockPrice.font = Style.regFont;
        blockPrice.textAlignment = NSTextAlignment.center;
        
        //add properties to superview
        self.addSubview(blockPrice)
        self.addSubview(dinexPrice)
        self.addSubview(name)
        
        Style.autoViews(parent: self)
        
        self.activateConstraints()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
    
    func activateConstraints()
    {
        //name constraints
        NSLayoutConstraint(item: name, attribute: .leftMargin, relatedBy: .equal, toItem: self, attribute: .leftMargin, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint(item: name, attribute: .rightMargin, relatedBy: .equal, toItem: self, attribute: .rightMargin, multiplier: 0.5, constant: 0.0).isActive = true;
        NSLayoutConstraint(item: name, attribute: .topMargin, relatedBy: .equal, toItem: self, attribute: .topMargin, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint(item: name, attribute: .bottomMargin, relatedBy: .equal, toItem: self, attribute: .bottomMargin, multiplier: 1.0, constant: 0.0).isActive = true;
        
        //dinex price constraints
        NSLayoutConstraint(item: dinexPrice, attribute: .leftMargin, relatedBy: .equal, toItem: self, attribute: .rightMargin, multiplier: 0.5, constant: 0.0).isActive = true;
        NSLayoutConstraint(item: dinexPrice, attribute: .rightMargin, relatedBy: .equal, toItem: self, attribute: .rightMargin, multiplier: 0.75, constant: 0.0).isActive = true;
        NSLayoutConstraint(item: dinexPrice, attribute: .topMargin, relatedBy: .equal, toItem: self, attribute: .topMargin, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint(item: dinexPrice, attribute: .bottomMargin, relatedBy: .equal, toItem: self, attribute: .bottomMargin, multiplier: 1.0, constant: 0.0).isActive = true;
        
        //block price constraints
        NSLayoutConstraint(item: blockPrice, attribute: .leftMargin, relatedBy: .equal, toItem: self, attribute: .rightMargin, multiplier: 0.75, constant: 0.0).isActive = true;
        NSLayoutConstraint(item: blockPrice, attribute: .rightMargin, relatedBy: .equal, toItem: self, attribute: .rightMargin, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint(item: blockPrice, attribute: .topMargin, relatedBy: .equal, toItem: self, attribute: .topMargin, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint(item: blockPrice, attribute: .bottomMargin, relatedBy: .equal, toItem: self, attribute: .bottomMargin, multiplier: 1.0, constant: 0.0).isActive = true;
    }
    
}

