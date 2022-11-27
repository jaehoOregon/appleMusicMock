//
//  ListenNowVC3.swift
//  appleMusicMock
//
//  Created by Jaeho Jung on 2022/11/25.
//

import UIKit

class ListenNowVC3: UIViewController {

//    var sectionTitle: [String] = ["Made for You", "Recently Played", "From Apple Music With Love", "Pop", "Rock", "Alternative", "K-Pop"]
    var sectionTitles: [String] = ["Pop", "Rock", "K-Pop", "Alternative"]

    let sectionItems = [diskManager.read("Pop"), diskManager.read("Rock"), diskManager.read("K-Pop"), diskManager.read("Alternative")]
    
    let madeForYou: [Song] = []
    
    @IBOutlet weak var listenNowTableView: UITableView!
    @IBOutlet weak var listenNowPlayBarView: UIView!
    @IBOutlet weak var jacketImageView: UIView!
    @IBOutlet weak var musicTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let songs: [Song] = []
//        print("sectionItems: \(sectionItems.count)")
//        print("sectionItems[0]: \(sectionItems[0].count)")
//        for i in 0...(sectionItems.count) {
//            for j in 0...(sectionItems[i].count - 1) {
//                print(j)
//            }
//        }
//
        
//        navigationController?.hidesBarsOnSwipe = true
//        var height = self.tabBarController?.tabBar.frame.height
//        print("heightheight\(height)")
        
        // MARK: - tab bar 배경색 변경 <- 안됨
//        self.tabBarController?.tabBar.backgroundColor = UIColor.systemGray2.withAlphaComponent(0.5)

        // MARK: - listenNowPlaybarView(floating Button over TableView)
        let tabBarheight = self.tabBarController!.tabBar.frame.size.height
        self.navigationController?.view.addSubview(listenNowPlayBarView)
        listenNowPlayBarView.frame = CGRect(x: 0.0, y: self.view.frame.self.height - tabBarheight * 2, width: self.view.frame.width, height: tabBarheight)
        listenNowPlayBarView.backgroundColor = UIColor.systemGray2.withAlphaComponent(0.5)
        
        // MARK: - HeaderView <- tableView Header가 있어서 section header를 위한 view를 못넣음
//        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50))

        // MARK: - jacketImageView - Rounded Corner
        jacketImageView.layer.cornerRadius = jacketImageView.layer.frame.size.width / 9

        
//        print(sectionTitle.count)
//        print(sectionItems[0][0].songTitle)
//        print(diskManager.read("Pop").count)
//        print(diskManager.read("Pop")[0])
//        print(diskManager.read("Pop")[0].songTitle)
//        print(diskManager.read("Rock"))
//        print(diskManager.read("K-Pop"))
        
    }
    
    // MARK: - function to move MusicTitle from right to left when music is played
    func startMusicTitleAnimation() {

        DispatchQueue.main.async(execute: {

            UIView.animate(withDuration: 20.0, delay: 1, options: ([.curveLinear, .repeat]), animations: {() -> Void in
                self.musicTitle.center = CGPoint(x: 0 - self.musicTitle.bounds.size.width / 2, y: self.musicTitle.center.y)

            }, completion:  nil)

        })
    }

    @IBAction func playMusic(_ sender: UIButton) {
        // MARK: - move text from right to left
        startMusicTitleAnimation()
    }
}


extension ListenNowVC3: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let ListenNowMusicDetailVC = storyboard?.instantiateViewController(withIdentifier: "ListenNowMusicDetailVC") as! ListenNowMusicDetailVC
        navigationController?.pushViewController(ListenNowMusicDetailVC, animated: true)
        
    }
}

extension ListenNowVC3: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return self.sectionTitles.count
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
//        headerView.backgroundColor = .green
        let headerViewLabel = UILabel()
        headerViewLabel.frame = CGRect(x: 20, y: headerView.frame.height - 10, width: view.frame.width, height: 60)
        headerViewLabel.text = sectionTitles[section]
        headerViewLabel.font = UIFont.boldSystemFont(ofSize: 35)
        headerView.addSubview(headerViewLabel)
        return headerView
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sectionItems = sectionItems[section]
        return sectionItems.count
//        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = sectionItems[indexPath.section][indexPath.row].albumTitle
//        cell.textLabel?.text = sectionItems[indexPath.section][indexPath.row]
        return cell
    }
}

// MARK: - present  tab bar title when scroll up
//extension ListenNowVC3: UITableViewDelegate {
//    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
//        UIView.animate(withDuration: 0.5) { [weak self] in
//            guard velocity.y != 0 else { return }
//            if velocity.y > 0 {
//                let height = self?.tabBarController?.tabBar.frame.height ?? 0.0
//                self?.tabBarController?.tabBar.alpha = 1.0
//                self?.tabBarController?.tabBar.frame.origin = CGPoint(x: 0, y: UIScreen.main.bounds.maxY - height)
//            } else {
//            self?.tabBarController?.tabBar.alpha = 0.0
//            self?.tabBarController?.tabBar.frame.origin = CGPoint(x: 0, y: UIScreen.main.bounds.maxY)
//            }
//        }
//    }
//}
