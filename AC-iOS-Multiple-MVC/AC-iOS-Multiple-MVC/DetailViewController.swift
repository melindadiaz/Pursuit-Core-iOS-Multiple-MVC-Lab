//
//  DetailViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Melinda Diaz on 12/9/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var zooAnimal: ZooAnimal!
    
    @IBOutlet weak var animalImageDVC: UIImageView!
    @IBOutlet weak var animalNameLabel: UILabel!
    @IBOutlet weak var animalClassLabel: UILabel!
    
    @IBOutlet weak var originLabel: UILabel!
    @IBOutlet weak var descriptionText: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }
    
    func loadData() {
        animalImageDVC.image = UIImage(named: "\(zooAnimal.imageNumber)")
        animalNameLabel.text = zooAnimal.name
        animalClassLabel.text = "Class: \(zooAnimal.classification)"
        originLabel.text = "Origin: \(zooAnimal.origin)"
        descriptionText.text = zooAnimal.info
    }
}
