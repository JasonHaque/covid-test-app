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
    
    @IBOutlet weak var flagImage: UIImageView!
    var countryData : CountryModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        guard countryData != nil else{
            return
        }
        print(countryData!)
        
        CountryName.text = countryData!.country
        DailyConfirmed.text = "Confirmed : \(countryData!.todayCases)"
        DailyDeaths.text = "Deaths : \(countryData!.todayDeaths)"
        DailyRecovered.text = "Recovered : \(countryData!.todayRecovered)"
        
        TotalConfirmed.text = "Confirmed : \(countryData!.cases)"
        TotalDeaths.text = "Deaths : \(countryData!.deaths)"
        TotalRecovered.text = "Recovered : \(countryData!.recovered)"
        
        
        guard let flagUrl = URL(string: countryData!.countryInfo.flag) else {
          print("Flag Error")
          return
        }
        
        let task = URLSession.shared.dataTask(with: flagUrl) { (data, response, error) in
          if let data = data {
            let downloadedImage = UIImage(data: data)
            DispatchQueue.main.async {
              self.flagImage.image = downloadedImage
            }
          }
        }
        task.resume()
        
    }
    

    

}
