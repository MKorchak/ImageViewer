//
//  ViewController.swift
//  ImageViewer
//
//  Created by Misha Korchak on 25.12.16.
//  Copyright © 2016 Misha Korchak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var img: UIImageView!
    var myPicture: UIImage!
    var myName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = myName
        img.image = myPicture
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

