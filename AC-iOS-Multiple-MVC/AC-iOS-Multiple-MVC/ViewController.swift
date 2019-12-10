//
//  ViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Tom Seymour on 11/2/17.
//  Copyright © 2017 AC-iOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var animal = ZooAnimal.zooAnimals
    
    @IBOutlet weak var animalTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animalTableView.dataSource = self
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? DetailViewController,
            let indexPath = animalTableView.indexPathForSelectedRow else {
                return
                
        }
        dvc.zooAnimal = animal[indexPath.row]
       
    }

}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animal.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath)
        
        
        cell.imageView?.image = UIImage(named: "\(animal[indexPath.row].imageNumber)")
        cell.textLabel?.text = animal[indexPath.row].name
        cell.detailTextLabel?.text = "Origin:\(animal[indexPath.row].origin), Classification \(animal[indexPath.row].classification)"
//        cell.textLabel?.numberOfLines = 0
//        cell.detailTextLabel?.numberOfLines = 0
        return cell
    }
    
    
}
