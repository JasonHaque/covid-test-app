//
//  CountryModel.swift
//  covid-app
//
//  Created by Sanviraj Zahin Haque on 9/8/20.
//  Copyright © 2020 Sanviraj Zahin Haque. All rights reserved.
//

import Foundation

struct CountryModel: Codable {
  let country: String
  let cases: Int
  let todayCases: Int
  let deaths: Int
  let todayDeaths: Int
  let recovered: Int
  let todayRecovered: Int
  let countryInfo: CountryInfo
}
struct CountryInfo: Codable {
  let flag: String
}

