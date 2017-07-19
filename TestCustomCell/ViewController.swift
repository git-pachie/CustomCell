//
//  ViewController.swift
//  TestCustomCell
//
//  Created by Archimedes Angeles on 20/7/17.
//  Copyright © 2017 Archimedes Angeles. All rights reserved.
//

import UIKit

struct cellData {
    let cell: Int!
    let text: String!
    let image: UIImage!
}


class TableViewController: UITableViewController {

    var arrayOfData = [cellData]()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        //UIImage(named: "YourImage", in: Bundle(for: self), compatibleWith: nil)
        
        arrayOfData = [cellData(cell: 1, text: "abc", image : UIImage(named: "1")),
        cellData(cell: 2, text: "def", image: UIImage(named: "2")),
        cellData(cell: 3, text: "ghi", image: UIImage(named: "3"))]
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return arrayOfData.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if arrayOfData[indexPath.row].cell ==  1
        {
            let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            
            cell.mainImageView.image = arrayOfData[indexPath.row].image
            cell.mainLabel.text = arrayOfData[indexPath.row].text
            
            return cell
            
        }
        else if arrayOfData[indexPath.row].cell ==  2
        {
            let cell = Bundle.main.loadNibNamed("TableViewCell2", owner: self, options: nil)?.first as! TableViewCell2
            
            cell.mainImageView.image = arrayOfData[indexPath.row].image
            cell.mainLabel.text = arrayOfData[indexPath.row].text
            
            return cell
        }
        else
        {
            let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            
            cell.mainImageView.image = arrayOfData[indexPath.row].image
            cell.mainLabel.text = arrayOfData[indexPath.row].text
            
            return cell
        }

        
    }

    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath ) -> CGFloat {
        if arrayOfData[indexPath.row].cell ==  1
        {
            return 250
            
        }
        else if arrayOfData[indexPath.row].cell ==  2
        {
            return 190
        }
        else
        {
            return 250
        }

    }
    
    

    
    

}

