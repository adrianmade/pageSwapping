//
//  MusicListViewController.swift
//  pageSwapping
//
//  Created by Adrian Martinez on 4/18/17.
//  Copyright © 2017 Adrian Made This. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
    }
    
    @IBAction func buttonBackPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func loadThirdScreenPressed(_ sender: Any) {
        let songTitle = "Quit Playing Games"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
    }

}
