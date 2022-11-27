//
//  MusicModel.swift
//  appleMusicMock
//
//  Created by Jaeho Jung on 2022/11/24.
//

import Foundation
import UIKit

struct Song {
    let artist: String
    let albumTitle: String
    let albumJacket: String
    let songIndex: Int
    let songTitle: String
    let playTime: String
    let genre: String
}

class DiskManager {
    
    private var musicStorage: [Song]
    init(musicStorage: [Song]) {
        self.musicStorage = musicStorage
    }
    
    //c
    func create(newSong: Song) {
        self.musicStorage.append(newSong)
    }
    //r
    func read(_ genre: String) -> [Song] {
        var musicByGenre: [Song] = []
        for i in 0...self.musicStorage.count - 1 {
            if self.musicStorage[i].genre == genre {
                musicByGenre.append(self.musicStorage[i])
            }
        }
        return musicByGenre
    }
    //u
    func update(replacement: Song, at: Int) {
        self.musicStorage[at] = replacement
    }
    //d
    func delete(at: Int) {
        self.musicStorage.remove(at: at)
    }
}

private var musicStorage: [Song] = [
    Song(artist: "Maroon5", albumTitle: "Songs About Jane", albumJacket: "SongsAboutJane", songIndex: 1, songTitle: "Harder to Breathe", playTime: "2:53", genre: "Pop"),
     Song(artist: "Maroon5", albumTitle: "Songs About Jane", albumJacket: "SongsAboutJane", songIndex: 1, songTitle: "Harder to Breathe", playTime: "2:53", genre: "Pop"),
     Song(artist: "Maroon5", albumTitle: "Songs About Jane", albumJacket: "SongsAboutJane", songIndex: 3, songTitle: "Shiver", playTime: "2:59", genre: "Pop"),
     Song(artist: "Maroon5", albumTitle: "Songs About Jane", albumJacket: "SongsAboutJane", songIndex: 4, songTitle: "She Will Be Loved", playTime: "4:17", genre: "Alternative"),
     Song(artist: "Maroon5", albumTitle: "It Won't Be Soon Before Long", albumJacket: "ItWontBeSoonBeforeLong", songIndex: 1, songTitle: "If I Never See Your Face Again", playTime: "4:14", genre: "Pop"),
     Song(artist: "Maroon5", albumTitle: "It Won't Be Soon Before Long", albumJacket: "ItWontBeSoonBeforeLong", songIndex: 2, songTitle: "Makes Me Wonder", playTime: "4:36", genre: "Alternative"),
     Song(artist: "Maroon5", albumTitle: "It Won't Be Soon Before Long", albumJacket: "ItWontBeSoonBeforeLong", songIndex: 3, songTitle: "Harder to Breathe", playTime: "2:54", genre: "Pop"),
     Song(artist: "Maroon5", albumTitle: "It Won't Be Soon Before Long", albumJacket: "ItWontBeSoonBeforeLong", songIndex: 4, songTitle: "The Sun", playTime: "8:21", genre: "Pop"),
     Song(artist: "Maroon5", albumTitle: "Hands All Over", albumJacket: "HandsAllOver", songIndex: 1, songTitle: "Misery", playTime: "3:36", genre: "Pop"),
     Song(artist: "Maroon5", albumTitle: "Hands All Over", albumJacket: "HandsAllOver", songIndex: 2, songTitle: "Give a Little More", playTime: "3:16", genre: "Pop"),
     Song(artist: "Maroon5", albumTitle: "Hands All Over", albumJacket: "HandsAllOver", songIndex: 3, songTitle: "Stutter", playTime: "3:16", genre: "Rock"),
     Song(artist: "James Blunt", albumTitle: "Back to Bedlam", albumJacket: "BackToBedlam", songIndex: 1, songTitle: "Goodbye My Lover", playTime: "5:06", genre: "Pop"),
     Song(artist: "James Blunt", albumTitle: "Back to Bedlam", albumJacket: "BackToBedlam", songIndex: 2, songTitle: "You're Beautiful", playTime: "3:31", genre: "Alternative"),
     Song(artist: "James Blunt", albumTitle: "All the Lost Souls", albumJacket: "Allthelostsouls", songIndex: 1, songTitle: "1973", playTime: "4:40", genre: "Pop"),
     Song(artist: "James Blunt", albumTitle: "All the Lost Souls", albumJacket: "Allthelostsouls", songIndex: 2, songTitle: "One of the Brightest Stars", playTime: "3:11", genre: "Pop"),
     Song(artist: "James Blunt", albumTitle: "All the Lost Souls", albumJacket: "Allthelostsouls", songIndex: 3, songTitle: "I'll Take Everything", playTime: "3:05", genre: "Pop"),
     Song(artist: "James Blunt", albumTitle: "All the Lost Souls", albumJacket: "Allthelostsouls", songIndex: 4, songTitle: "Same Mistake", playTime: "4:58", genre: "Rock"),
     Song(artist: "BTS", albumTitle: "Permision To Dance", albumJacket: "PermisionToDance", songIndex: 1, songTitle: "Permision to Dance", playTime: "4:40", genre: "K-Pop")
]

var diskManager = DiskManager(musicStorage: musicStorage)

//diskManager.create(newSong: Song(artist: "Jay Park", albumTitle: "Dank", albumJacket: "Dank", songIndex: 1, songTitle: "Dank", playTime: "3:42", genre: "Pop"))



//let test = diskManager.read("Pop")
//print(test)

//print(diskManager.read("Pop").count)
//print(diskManager.read("Alternative").count)
//print(diskManager.read("Rock").count)
//print(diskManager.read("K-Pop").count)


