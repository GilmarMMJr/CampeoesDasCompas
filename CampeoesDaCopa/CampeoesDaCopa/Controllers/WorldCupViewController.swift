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
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        tableView.delegate = self
        tableView.dataSource = self
        
        title = "WorldCup \(worldCup.year)"
        winnerImage.image = UIImage(named: worldCup.winner)
        viceImage.image = UIImage(named: worldCup.vice)
        winnerLabel.text = worldCup.winner
        viceLabel.text = worldCup.vice
        scoreLabel.text = "\(worldCup.winnerScore) X \(worldCup.viceScore)"
        
    }

}


extension WorldCupViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return worldCup.matches.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let games = worldCup.matches[section].games
        return games.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! GamesTableViewCell
        let match = worldCup.matches[indexPath.section]
        let game = match.games[indexPath.row]
        cell.prepare(with: game)
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let match = worldCup.matches[section]
        return match.stage
    }
    
    
}

extension WorldCupViewController: UITableViewDelegate {
    
}
