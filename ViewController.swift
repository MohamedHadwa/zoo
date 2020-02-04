//
//  ViewController.swift
//  zoo
//
//  Created by hadwa on 1/27/20.
//  Copyright © 2020 hadwa. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    
    var NOTKILLER = ["cow", "cat","dog" ]
   
    var KILLER = ["lion", "tiger","bear","shark " ]
    var sections = ["NOTKILLER","KILLER"]



    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if indexPath.section == 0 {cell.textLabel?.text = NOTKILLER[indexPath.row]}
         else {cell.textLabel?.text = KILLER[indexPath.row]}
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(NOTKILLER[indexPath.row])
        
    }
    func numberOfSections (in tableview: UITableView) -> Int  {
        return sections.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return sections[section]
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NOTKILLER.count
    }
    
}


