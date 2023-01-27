//
//  OneQuestionTableViewCell.swift
//  World Cup Qatar Quiz
//
//  Created by Adrian Derdaś on 24/01/2023.
//

import UIKit

class OneQuestionTableViewCell: UITableViewCell {
 
    @IBOutlet weak var oneQuestionText: UILabel!
    
    @IBOutlet weak var oneIcon: UIImageView!
    @IBOutlet weak var questionText: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
