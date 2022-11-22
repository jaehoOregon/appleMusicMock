//
//  ListenNowMusicGenreTableViewCell.swift
//  appleMusicMock
//
//  Created by Jaeho Jung on 2022/11/22.
//

import UIKit

class ListenNowMusicGenreTableViewCell: UITableViewCell {

    var sectionTitle: [String] = ["abc", "bcd", "cde", "def"]
    
    @IBOutlet weak var listenNowTableViewCellTitle: UILabel!
    @IBOutlet weak var lstenNowTableViewCellCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension ListenNowMusicGenreTableViewCell: UICollectionViewDelegate  {
    
}

extension ListenNowMusicGenreTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = lstenNowTableViewCellCollectionView.dequeueReusableCell(withReuseIdentifier: "ListenNowMusicGenreCollectionViewCell", for: indexPath) as! ListenNowMusicGenreCollectionViewCell
        cell.backgroundColor = .purple
        return cell
    }
    
    
}
