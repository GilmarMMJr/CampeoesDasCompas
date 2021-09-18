//
//  WorldCupViewController.swift
//  CampeoesDaCopa
//
//  Created by Gilmar Junior on 15/09/21.
//

import UIKit

class WorldCupViewController: UIViewController {
    
    var worldCup: WorldCup!
    
    @IBOutlet weak var winnerImage: UIImageView!
    @IBOutlet weak var viceImage: UIImageView!
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var viceLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        title = "WorldCup \(worldCup.year)"
        winnerImage.image = UIImage(named: worldCup.winner)
        viceImage.image = UIImage(named: worldCup.vice)
        winnerLabel.text = worldCup.winner
        viceLabel.text = worldCup.vice
        scoreLabel.text = "\(worldCup.winnerScore) X \(worldCup.viceScore)"
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
