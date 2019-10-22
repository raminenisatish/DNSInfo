//
//  ViewController.swift
//  DNSApp
//
//  Created by raminenisatishbabu on 22/10/19.
//  Copyright © 2019 raminenisatishbabu. All rights reserved.
//

import UIKit
import CoreTelephony


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getAllTheNetworkRelatedData()
    }

    
    func getAllTheNetworkRelatedData() {
           
        let osVersion: String = UIDevice.current.systemVersion
        let currentVersion = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
        let telephonyNetworkInfo = CTTelephonyNetworkInfo()
        let networkProviderName: String? = telephonyNetworkInfo.subscriberCellularProvider?.carrierName
                               
        print(osVersion)
        print(currentVersion!)
        print(networkProviderName!)
              
    }

}

