//
//  MusicGenre.swift
//  appleMusicMock
//
//  Created by Jaeho Jung on 2022/11/21.
//

import Foundation

struct MusicGenre {
    let name: String
}

let alternative = MusicGenre.init(name: "Alternative")
let pop = MusicGenre.init(name: "Pop")
let kpop = MusicGenre.init(name: "K-Pop")
let rock = MusicGenre.init(name: "Rock")

//class Genres {
//    private var genres: [MusicGenre]
//
//    init(genres: [MusicGenre]) {
//        self.genres = genres
//    }
//}

var currentGenres = [alternative, pop, kpop, rock]

//struct Singer {
//    let album: [Album]
//}
//
//struct Album {
//    let title: String
//    let songs: [Song]
////    let jacketImageName: String, 아마도 자켓 이미지 파일 이름을 title과 동일하게 할 듯
//}
//
struct Song {
//    let albumTitle: String
    let songName: String
    let songIndex: Int
    let playTime: String
//    let musicFile: String
//    let musicFile: mp3, 아마도 음악파일 이름을 songName과 동일하게 할 듯
}


/* Maroon5

[album: "Songs About Jane",
 [["1", "Harder to Breathe", "2:53"],
 ["2", "This Love", "3:26"],
 ["3", "Shiver", "2:59"],
 ["4", "She Will Be Loved", "4:17"]],
 jacket image: "SongsAboutJane"]
 
album: "It Won't Be Soon Before Long"
 1, "If I Never See Your Face Again"    4:14
 2, "Makes Me Wonder"    4:36
 3, "Harder to Breathe"    2:54
 4, "The Sun"    8:21
 5,"Secret"    5:38
 jacket image: "ItWontBeSoonBeforeLong"
 
 album: "Hands All Over"
 1, "Misery", 3:36
 2.    "Give a Little More", 3:00
 3,     "Stutter", 3:16
 jacket image: "HandsAllOver"
 
 */

/* James Blunt
 album: "Back to Bedlam"
 1.    "Goodbye My Lover" (acoustic)    5:06
 2.    "You're Beautiful" (acoustic)    3:31
 3.    "You're Beautiful" (video)    5:06
 4.    "Goodbye My Lover" (video)    5:06
 15.    "High" (video)    3:54
 
 jacket image: "BackToBedlam"
 
 album: "All the Lost Souls"
1, "1973" (James Blunt / Mark Batson) – 4:40
2, "One of the Brightest Stars" (James Blunt / Steve McEwan) – 3:11
3, "I'll Take Everything" (Blunt / Eg White) – 3:05
4, "Same Mistake" (Blunt) – 4:58

jacket image: "Allthelostsouls"
 */

