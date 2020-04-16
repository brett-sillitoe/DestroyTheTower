//
//  RewardOptionsViewController.swift
//  DestroyTheTower
//
//  Created by Brett Sillitoe on 4/16/20.
//  Copyright © 2020 Brett Sillitoe. All rights reserved.
//

import UIKit

class RewardOptionsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    var cards: [Card] = []
    var index = 0
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cards.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)
        cell.textLabel?.text = cards[indexPath.row].cardName
        return cell
    }
    

    @IBOutlet weak var MyTable2: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        MyTable2.dataSource = self
        MyTable2.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func generateRewardCards(){
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
          self.index = indexPath.row
          performSegue(withIdentifier: "rewardCardSeg", sender: self)
      }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destination = segue.destination as! RewardCardViewController
        destination.card = cards[index]
       
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
