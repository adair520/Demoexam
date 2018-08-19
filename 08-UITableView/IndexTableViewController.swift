//
//  IndexTableViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/7/16.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class IndexTableViewController: UITableViewController {
    var geolocation:Dictionary<String,[String]> = [
         "A1":["AO", "Angola"],
         "A2":["AF", "Afghanistan"],
         "A3":["AL", "Albania"],
         "A4":["DZ", "Algeria"],
         "A5":["AD", "Andorra"],
         "A6":["AI", "Anguilla"],
         "A7":["AG", "Barbuda Antigua"],
         "A8":["AR", "Argentina"],
         "A9":["AM", "Armenia"],
         "A10":["AU", "Australia"],
         "A11":["AT", "Austria"],
         "A12":["AZ", "Azerbaijan"],
         "B1":["BS", "Bahamas"],
         "B2":["BH", "Bahrain"],
         "B3":["BD", "Bangladesh"],
         "B4":["BB", "Barbados"],
         "B5":["BY", "Belarus"],
         "B6":["BE", "Belgium"],
         "B7":["BZ", "Belize"],
         "B8":["BJ", "Benin"],
         "B9":["BM", "Bermuda Is."],
         "B10":["BO", "Bolivia"],
         "B11":["BW", "Botswana"],
         "B12":["BR", "Brazil"],
         "B13":["BN", "Brunei"],
         "B14":["BG", "Bulgaria"],
         "B15":["BF", "Burkina-faso"],
         "M1":["MM", "Burma"],
         "B16":["BI", "Burundi"],
         "C1": ["CM", "Cameroon"],
         "C2": ["CA", "Canada"],
         "C3": ["CF", "Central African Republic"],
         "T1": ["TD", "Chad"],
         "C4":["CL", "Chile"],
         "C5":["CN", "China"],
         "C6":["CO", "Colombia"],
         "C7":["CG", "Congo"],
         "C8": ["CK", "Cook Is."],
         "C9":["CR", "Costa Rica"],
         "C10":["CU", "Cuba"],
         "C11":["CY", "Cyprus"],
         "C12":["CZ", "Czech Republic"],
         "D13":["DK", "Denmark"],
         "D14":["DJ", "Djibouti"],
         "D15":["DO", "Dominica Rep."],
         "E1":["EC", "Ecuador"],
         "E2": ["EG", "Egypt"],
         "S1": ["SV", "EI Salvador"],
         "E3": ["EE", "Estonia"],
         "E4": ["ET", "Ethiopia"],
         "F1": ["FJ", "Fiji"],
         "F2": ["FI", "Finland"],
         "F3": ["FR", "France"],
         "G1": ["GF", "French Guiana"],
         "G2": ["GA", "Gabon"],
         "G3": ["GM", "Gambia"],
         "G4": ["GE", "Georgia"],
         "D1":["DE", "Germany"],
         "G5":["GH", "Ghana"],
         "G6":["GI", "Gibraltar"]]
    
       var keys:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.frame = CGRect(x: 0, y: 20, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        keys = Array(geolocation.keys).sorted()
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return keys.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return (geolocation[keys[section]]?.count)!
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return keys[section]
    }
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return keys
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellid = "reuseIdentifier"
        var cell = tableView.dequeueReusableCell(withIdentifier:cellid)
        if (cell == nil) {
            cell = UITableViewCell(style: .default, reuseIdentifier: cellid)
            cell?.textLabel?.text = geolocation[keys[(indexPath as NSIndexPath).section]]?[(indexPath as NSIndexPath).row]
        }
        cell?.backgroundColor = UIColor.init(red: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), green: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), blue: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), alpha: 0.5)

        return cell!
    }
 

}
