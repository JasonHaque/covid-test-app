//
//  Response.swift
//  covid-app
//
//  Created by Sanviraj Zahin Haque on 9/8/20.
//  Copyright © 2020 Sanviraj Zahin Haque. All rights reserved.
//

import Foundation


class Response {
    var arrayofData = [CountryModel]()
    func getResponse(){
        let addressUrl = URL(string: Constants.API_KEY)
        
        let task = URLSession.shared.dataTask(with: addressUrl!) { (data, response, error) in
            
            guard let data = data else {
              print("Error1: \(error!)")
              return
            }
            let decoder = JSONDecoder()
            
            do{
                let country = try decoder.decode([CountryModel].self, from: data)
                
                self.arrayofData = country
                
               // print(country)
                print(self.arrayofData)
                
            }catch{
                print(error)
            }
        }
        task.resume()
    }
}
