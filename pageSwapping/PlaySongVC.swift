//
//  PlaySongVC.swift
//  pageSwapping
//
//  Created by Adrian Martinez on 4/19/17.
//  Copyright © 2017 Adrian Made This. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    @IBOutlet weak var labelSongTitle: UILabel!
    
    private var _selectedSong:String!
    var selectedSong: String {
        get {
            return _selectedSong
        } set {
            _selectedSong = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSongTitle.text = _selectedSong
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
