//
//  ViewController.swift
//  AlamofireSampleProject
//
//  Created by Jayaram G on 01/03/19.
//  Copyright © 2019 Jayaram G. All rights reserved.
//

import UIKit
import Alamofire
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        getData()
    }
    
    func getData(){
        Alamofire.request("http://productdemourl.com/community/public/api/v1/authenticate", method: .post, parameters: ["username" : "jayaram", "password" : "demopass"], encoding: URLEncoding.default).responseJSON { (respJson) in
            print(respJson)
        }
    }
}

