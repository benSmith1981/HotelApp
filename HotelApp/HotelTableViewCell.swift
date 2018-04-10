//
//  HotelTableViewCell.swift
//  HotelApp
//
//  Created by Ben Smith on 10/04/2018.
//  Copyright © 2018 Ben Smith. All rights reserved.
//

import UIKit
import Kingfisher
class HotelTableViewCell: UITableViewCell {

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var background: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setData(offer: Offer) {
        self.background.kf.setImage(with: URL.init(string: offer.image!))
        self.titleLabel.text = offer.name
        self.descriptionLabel.text = offer.description
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
