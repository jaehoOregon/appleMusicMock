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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // MARK: - listenNowPlaybarView(floating Button over TableView)
        let tabBarheight = self.tabBarController!.tabBar.frame.size.height
        self.navigationController?.view.addSubview(listenNowPlaybarView)
        listenNowPlaybarView.frame = CGRect(x: 0.0, y: self.view.frame.self.height - tabBarheight * 2, width: self.view.frame.width, height: tabBarheight)
        listenNowPlaybarView.backgroundColor = UIColor.systemGray6.withAlphaComponent(0.5)

        // MARK: - jacketImageView - Rounded Corner
        jacketImageView.layer.cornerRadius = jacketImage.layer.frame.size.width / 9
        
        // MARK: - register tableview cell
        listenNowTableView.register(UINib(nibName: "ListenNowMusicGenreTableViewCell", bundle: nil), forCellReuseIdentifier: "ListenNowMusicGenreTableViewCell")

    }
}

extension ListenNowVC: UITableViewDelegate {
    
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



