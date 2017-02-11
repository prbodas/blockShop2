//
//  BuyerViewController.swift
//  BlockShop2
//
//  Created by Prachi Bodas on 2/11/17.
//  Copyright © 2017 Prachi Bodas. All rights reserved.
//


import UIKit
import MapKit
import CoreLocation
import Alamofire
import SwiftyJSON
class BuyerViewController: UIViewController,UITableViewDataSource,UITableViewDelegate,MKMapViewDelegate,CLLocationManagerDelegate {
    
    let tableView = UITableView()
    var mapView: MKMapView!
    var locationManager: CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.red;
        
        //tableview
        self.automaticallyAdjustsScrollViewInsets = false;
        tableView.estimatedRowHeight = 300
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView);
        
        //mapview 
        mapView = MKMapView()
        mapView.mapType = .standard
        mapView.frame = view.frame
        mapView.delegate = self
        
        mapView.showsUserLocation = true;
        view.addSubview(mapView)
        
        //location manager
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        //view.backgroundColor = UIColor.gray
        
        Style.autoViews(parent: tableView);
        Style.autoViews(parent: view);
        
        //add constraints
        
        //mapview constraints
        NSLayoutConstraint(item: mapView, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint(item: mapView, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint(item: mapView, attribute: .bottomMargin, relatedBy: .equal, toItem: view, attribute: .bottomMargin, multiplier: 0.55, constant: 0.0).isActive = true;
        NSLayoutConstraint(item: mapView, attribute: .topMargin, relatedBy: .equal, toItem: view, attribute: .topMargin, multiplier: 1.0, constant: 0.0).isActive = true;
        
        
        //tableview constraints
        NSLayoutConstraint(item: tableView, attribute: .leftMargin, relatedBy: .equal, toItem: view, attribute: .leftMargin, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint(item: tableView, attribute: .rightMargin, relatedBy: .equal, toItem: view, attribute: .rightMargin, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint(item: tableView, attribute: .bottomMargin, relatedBy: .equal, toItem: view, attribute: .bottomMargin, multiplier: 1.0, constant: 0.0).isActive = true;
        NSLayoutConstraint(item: tableView, attribute: .topMargin, relatedBy: .equal, toItem: mapView, attribute: .bottomMargin, multiplier: 1.0, constant: 0.0).isActive = true;
        setSellers()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 19;
    }
    
    func setSellers() {
        Alamofire.request("https://blackshop-backend.herokuapp.com/api/get_sellers").responseJSON { (responseData) -> Void in
            if((responseData.result.value) != nil) {
                let swiftyJsonVar = JSON(responseData.result.value!)
                let sellers = swiftyJsonVar["sellers"]
                let names = sellers.map({$0.1["first_name"]})
                let block_prices = sellers.map({$0.1["block_price"]})
                let dinex_prices = sellers.map({$0.1["dinex_price"]})
                let messenger_usernames = sellers.map({$0.1["messenger_username"]})
                print(names, block_prices, dinex_prices, messenger_usernames)
                print(swiftyJsonVar["sellers"])
            }
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let newcell = BuyerCell()
        //newcell.setUpCell(tweets[indexPath.row], viewcon: self)
        //newcell.tweetText.text = tweets[indexPath.row].text
        return newcell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    
    func mapView(_ mapView:MKMapView, didUpdate userLocation:MKUserLocation)
    {
        var mapRegion = MKCoordinateRegion();
        mapRegion.center = mapView.userLocation.coordinate;
        mapRegion.span.latitudeDelta = 0.01;
        mapRegion.span.longitudeDelta = 0.01;
        mapView.setRegion(mapRegion, animated: true);
    
    }
    
    
}

