//
//  GamesTableViewCell.swift
//  CampeoesDaCopa
//
//  Created by Gilmar Junior on 19/09/21.
//

import UIKit

class GamesTableViewCell: UITableViewCell {

    @IBOutlet weak var homeImgeView: UIImageView!
    @IBOutlet weak var awayImageView: UIImageView!
    @IBOutlet weak var homeLabel: UILabel!
    @IBOutlet weak var awayLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    func prepare(with game: Game) {
        
        homeImgeView.image = UIImage(named: game.home)
        awayImageView.image = UIImage(named: game.away)
        homeLabel.text = game.home
        awayLabel.text =  game.away
        scoreLabel.text = game.score
        
        
    }
    
}
