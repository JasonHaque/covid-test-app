//
//  CountryViewController.swift
//  covid-app
//
//  Created by Sanviraj Zahin Haque on 9/8/20.
//  Copyright © 2020 Sanviraj Zahin Haque. All rights reserved.
//

import UIKit

class CountryViewController: UIViewController {
    
    //IB outlets
    
    @IBOutlet weak var CountryName: UILabel!
    
    @IBOutlet weak var DailyConfirmed: UILabel!
    
    @IBOutlet weak var DailyDeaths: UILabel!
    
    @IBOutlet weak var DailyRecovered: UILabel!
    
    @IBOutlet weak var TotalConfirmed: UILabel!
    
    @IBOutlet weak var TotalDeaths: UILabel!
    
    @IBOutlet weak var TotalRecovered: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    

}
