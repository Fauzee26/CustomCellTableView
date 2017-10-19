
//
//  BeritaTableViewCell.swift
//  Custom Cell Table View
//
//  Created by Muhammad Hilmy Fauzi on 19/10/17.
//  Copyright © 2017 Hilmy Corp. All rights reserved.
//

import UIKit

class BeritaTableViewCell: UITableViewCell {

    @IBOutlet weak var labelKategori: UILabel!
    @IBOutlet weak var imgGambar: UIImageView!
    @IBOutlet weak var judulBerita: UILabel!
    @IBOutlet weak var tglBerita: UILabel!
    @IBOutlet weak var isiBerita: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
