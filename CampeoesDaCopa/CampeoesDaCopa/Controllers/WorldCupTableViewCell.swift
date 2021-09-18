//
//  WorldCupTableViewCell.swift
//  CampeoesDaCopa
//
//  Created by Gilmar Junior on 18/09/21.
//

import UIKit

class WorldCupTableViewCell: UITableViewCell {
    
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var winnerImage: UIImageView!
    @IBOutlet weak var viceImage: UIImageView!
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var viceLabel: UILabel!
    @IBOutlet weak var scoreWinnerLabel: UILabel!
    @IBOutlet weak var scoreViceLabel: UILabel!
    @IBOutlet weak var coutryLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func prepare(with cup: WorldCup){
        yearLabel.text = "\(cup.year)"
        winnerImage.image = UIImage(named: cup.winner)
        viceImage.image = UIImage(named: cup.vice)
        winnerLabel.text = cup.winner
        viceLabel.text = cup.vice
        coutryLabel.text = cup.country
        scoreWinnerLabel.text = cup.winnerScore
        scoreViceLabel.text = cup.viceScore
        
    }

}
