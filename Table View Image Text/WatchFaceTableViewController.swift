//
//  WatchFaceTableViewController.swift
//  Table View Image Text
//
//  Created by Mirko Cukich on 8/25/19.
//  Copyright © 2019 Digital Mirko. All rights reserved.
//
//  Swift TableView Image & Text Demo - Demo 12 of 30

import UIKit

struct HeadLine {
    
    var id: Int
    var title : String
    var text : String
    var image : String
}

class WatchFaceTableViewController: UITableViewController {
    // Note: using 50x50 image graphics for row graphics - show up nicer then larger ones do since height is 60
    var headlines = [
        HeadLine(id: 1, title: "Rolex", text: "Blue Submariner", image: "01RolexBlue50"),
        HeadLine(id: 2, title: "Tudor", text: "Petagos Blue", image: "02TudorPetagos50"),
        HeadLine(id: 3, title: "Breitling", text: "Bentley Motors", image: "03BreitlingBentley50"),
        HeadLine(id: 4, title: "Arnold & Son HM", text: "Double Hemisphere Perpetual Moon", image: "04ArnoldSonDoubleHemi50"),
        HeadLine(id: 5, title: "Rolex", text: "Oyster Perpetual Air-King", image: "05RolexOysterPerp50"),
        HeadLine(id: 6, title: "Rolex", text: "Oyster Perpetual Milgauss", image: "06RolexOyster50"),
        HeadLine(id: 7, title: "Rolex", text: "Blue Submariner", image: "07RolexBlueSub50"),
        HeadLine(id: 8, title: "Ferrari", text: "Yann Ferrari", image: "08FerrariYann50"),
        HeadLine(id: 9, title: "Corum", text: "Admiral's Cup", image: "09CorumAdmiralsCup50"),
        HeadLine(id: 10, title: "Omega", text: "Seamaster Professional", image: "10OmegaSeamasterPro50")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return headlines.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        
        let headline = headlines[indexPath.row]
        cell.textLabel?.text = headline.title
        cell.detailTextLabel?.text = headline.text
        cell.imageView?.image = UIImage(named: headline.image)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "Swift TableView Image & Text Demo"
        
    }

}
