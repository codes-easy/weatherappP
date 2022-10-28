//
//  ViewController.swift
//  weatherAppP
//
//  Created by user227975 on 10/15/22.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    protocol addCitiesDelegate : NSObjectProtocol{
        func updateView ()
    }
    
    class listCitiesViewController: UITableViewController {
        //delegate for updating previous table
        weak var addcitiesDelegate:addCitiesDelegate?
        
        //set list of cities
        var cityList:[City]? = [City]() {
            didSet{
                //reload table when value changes
                tableView.reloadData()
            }
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }
        
        override func numberOfSections(in tableView: UITableView) -> Int {
            //return the number of sections
            return 1
        }
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            //return the number of rows
            return cityList?.count ?? 0
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            //set cell to custom cell class
            let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell", for: indexPath) as! cityTableViewCell
            //iterate through list
            let city = cityList?[indexPath.row]
            //set labels
            cell.lblName.text = city!.name
            cell.lblCode.text = city!.code
            cell.lblCountry.text = city!.country
            
            return cell
        }
        
        override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            //height of row
            return 60
        }
        
        
        
    }
    
}
