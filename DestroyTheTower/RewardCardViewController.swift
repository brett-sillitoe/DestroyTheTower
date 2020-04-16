//
//  RewardCardViewController.swift
//  DestroyTheTower
//
//  Created by Brett Sillitoe on 4/16/20.
//  Copyright © 2020 Brett Sillitoe. All rights reserved.
//

import UIKit

class RewardCardViewController: UIViewController {
    var card:Card?
    @IBOutlet weak var CardTitle: UILabel!
    @IBOutlet weak var CardDescription: UILabel!
    @IBOutlet weak var CardImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        CardTitle.text = card?.cardName
        CardImageView.image = UIImage(named: card!.imageViewName)
        CardDescription.text = card?.cardDescription
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func Choose(_ sender: Any) {
    }
    @IBAction func Cancel(_ sender: Any) {
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
}
