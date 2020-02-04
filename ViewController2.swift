//
//  ViewController2.swift
//  zoo
//
//  Created by hadwa on 1/27/20.
//  Copyright © 2020 hadwa. All rights reserved.
//

import UIKit

class ViewController2: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var koko: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
animals.append(animal(name: "baboon", des: "baboon is adengerous animal that eat anything and it is a fast animal" , image: "baboon"))
        animals.append(animal(name: "bulldog", des: "bulldog is adengerous animal that eat anything and it is a fast animal" , image: "bulldog"))
        animals.append(animal(name: "panda", des: "dogpandais good animal that eat anything and it is a fast animal" , image: "panda"))
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : mycell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! mycell
        cell.lalabel.text = animals [indexPath.row].name!
        cell.lades.text = animals [indexPath.row].des!
        cell .laimage.image = UIImage(named: animals [indexPath.row].image!)
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    var animals = Array<animal>()
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
