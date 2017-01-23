//
//  TableViewController.swift
//  ImageViewer
//
//  Created by Misha Korchak on 25.12.16.
//  Copyright © 2016 Misha Korchak. All rights reserved.
//

import UIKit
var num: Int!

class TableViewController: UITableViewController {
    
    let bundlePath: String = Bundle.main.path(forResource: "images", ofType: "bundle")!
    var images = [myCell]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.images = self.addDataToCell()
        
        self.tableView.reloadData()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell

        cell.picture?.image = images[indexPath.row].pict
        cell.name?.text = images[indexPath.row].txt
        cell.picture.transform = CGAffineTransform(rotationAngle: CGFloat.pi * 3 / 2)
        return cell
    }
    
    func addDataToCell() -> [myCell] {
        let image: String = "image"
        
        for index in 1...6 {
            let addCell = myCell()
            addCell.pict = UIImage(named: image + "\(index).jpg", in: Bundle(path: bundlePath), compatibleWith: nil)
            addCell.txt = "Image \(index)"
            images.append(addCell)
            //print(image + "\(index).jpg")
        }
        
        return images
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showImage" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! ViewController
                destinationController.myPicture = images[indexPath.row].pict
                destinationController.myName = images[indexPath.row].txt
            }
        }
    }
}
