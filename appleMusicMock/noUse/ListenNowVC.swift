//
//  ListenNowVC.swift
//  appleMusicMock
//
//  Created by Jaeho Jung on 2022/11/21.
//

import UIKit

class ListenNowVC: UIViewController {

    var sectionTitle: [String] = ["abc", "bcd", "cde", "def"]
    
    @IBOutlet weak var listenNowTableView: UITableView!
    @IBOutlet weak var listenNowPlaybarView: UIView!
    @IBOutlet weak var jacketImageView: UIView!
    @IBOutlet weak var jacketImage: UIImageView!
    @IBOutlet weak var titleOfMusicPlayed: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        self.navigationController?.navigationBar.isHidden = true
        self.navigationController?.isNavigationBarHidden = true
        
        // MARK: - hide Title
        navigationItem.title = .none

        // MARK: - listenNowPlaybarView(floating Button over TableView)
        let tabBarheight = self.tabBarController!.tabBar.frame.size.height
        self.navigationController?.view.addSubview(listenNowPlaybarView)
        listenNowPlaybarView.frame = CGRect(x: 0.0, y: self.view.frame.self.height - tabBarheight * 2, width: self.view.frame.width, height: tabBarheight)
        listenNowPlaybarView.backgroundColor = UIColor.systemGray6.withAlphaComponent(0.5)

        // MARK: - jacketImageView - Rounded Corner
        jacketImageView.layer.cornerRadius = jacketImage.layer.frame.size.width / 9
        
        // MARK: - register tableview cell
        listenNowTableView.register(UINib(nibName: "ListenNowMusicGenreTableViewCell", bundle: nil), forCellReuseIdentifier: "ListenNowMusicGenreTableViewCell")
        
//        diskManager.create(newSong: Song(artist: "Jay Park", albumTitle: "Dank", albumJacket: "Dank", songIndex: 1, songTitle: "Dank", playTime: "3:42", genre: "Pop"))
        
//        var diskManager = DiskManager(musicStorage: musicStorage)
        print(diskManager.read("Pop").count)
        print(diskManager.read("Rock"))
        print(diskManager.read("K-Pop"))
    }
    
}

extension ListenNowVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
}

extension ListenNowVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListenNowMusicGenreTableViewCell") as? ListenNowMusicGenreTableViewCell
        cell?.listenNowTableViewCellTitle.text = sectionTitle[indexPath.row]
        return cell!
        
    }
}



