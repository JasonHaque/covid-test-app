//
//  ViewController.swift
//  covid-app
//
//  Created by Sanviraj Zahin Haque on 9/8/20.
//  Copyright © 2020 Sanviraj Zahin Haque. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!
    
    var model = Response()
    var countries = [CountryModel]()
    var data : CountryModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        model.getResponse()
        model.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detailsSegue" && tableview.indexPathForSelectedRow != nil {
            let destinationVC = segue.destination as! CountryViewController
            
            data = countries[tableview.indexPathForSelectedRow!.row]
            print(data!)
            destinationVC.countryData = data
        }
    }


}

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath) as! CountryTableViewCell
        
        let countryData = countries[indexPath.row]
        cell.CountryNameLabel.text = countryData.country
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        data = countries[indexPath.row]
    }
    
}

extension ViewController:ModelDelegate{
    func countriesFetched(_ countries: [CountryModel]) {
        self.countries = countries
        tableview.reloadData()
    }
    
    
}
