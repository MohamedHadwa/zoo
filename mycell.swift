//
//  mycell.swift
//  zoo
//
//  Created by hadwa on 2/4/20.
//  Copyright © 2020 hadwa. All rights reserved.
//

import UIKit

class mycell: UITableViewCell {

    @IBOutlet weak var laimage: UIImageView!
    @IBOutlet weak var lalabel: UILabel!
    @IBOutlet weak var lades: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
