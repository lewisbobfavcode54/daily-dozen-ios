//
//  ServingsCell.swift
//  DailyDozen
//
//  Created by Konstantin Khokhlov on 23.10.17.
//  Copyright © 2017 Nutritionfacts.org. All rights reserved.
//

import UIKit

class ServingsCell: UITableViewCell {

    // MARK: - Outlets
    @IBOutlet private weak var itemImage: UIImageView!
    @IBOutlet private weak var streakLabel: UILabel!
    @IBOutlet private weak var itemLabel: UILabel!
    @IBOutlet weak var stateCollection: UICollectionView!
    @IBOutlet private weak var infoButton: UIButton!
    @IBOutlet private weak var calendarButton: UIButton!

    // MARK: - Methods
    /// Sets the cell with the current name, image name and tag.
    ///
    /// - Parameter name: The current name.
    /// - Parameter tag: The current tag.
    /// - Parameter tag: The image name tag.
    func configure(with name: String, tag: Int, imageName: String, streak: Int = 0) {
        itemLabel.text = name
        stateCollection.tag = tag
        infoButton.tag = tag
        calendarButton.tag = tag
        itemImage.image = UIImage(named: imageName)

        if streak > 1 {
            streakLabel.text = "\(streak) days"
            streakLabel.superview?.isHidden = false
        } else {
            streakLabel.superview?.isHidden = true
        }
    }
}
