//
//  DataStore.swift
//  sample
//
//  Created by huin on 2017/08/20.
//  Copyright © 2017年 www.huin.me. All rights reserved.
//

import Foundation

class DataStore: NSObject {
    // swiftlint:disable:next function_body_length
    @objc static func fetchChapters() -> [Chapter] {
        var chapters: [Chapter] = []

        let nagano = Author(name: "永野 哲久", profileImageName: "7gano")
        let shu223 = Author(name: "堤 修一", profileImageName: "shu223")
        let sonson = Author(name: "吉田 悠一", profileImageName: "sonson_tw")
        let ikesyo = Author(name: "池田 翔", profileImageName: "ikesyo")
        let huin = Author(name: "坂田 晃一", profileImageName: "huin")
        let cockscomb = Author(name: "加藤 尋樹", profileImageName: "cockscomb")
        let jeffsuke = Author(name: "川邉 雄介", profileImageName: "jeffsuke")
        let k_katsumi = Author(name: "岸川 克己", profileImageName: "k_katsumi")
        let tokorom = Author(name: "所 友太", profileImageName: "tokorom")

        let chap1 = Chapter(number: 1,
                            title: "iOS 11の概要",
                            lead:"iOS 11の全容、新機能と変更点の概要を解説して確証の詳細へつなげます。",
                            author: nagano)
        chapters.append(chap1)

        let chap2 = Chapter(number: 2,
                            title: "ARKit",
                            lead:"ARKiは非常に注目されているフレームワークなのですでに多くの「動かしてみた」記事が出ていますが、本章ではそこから踏み込んだ機能や実装方法も紹介します。",
                            author: shu223)
        chapters.append(chap2)

        let chap3 = Chapter(number: 3,
                            title: "Core ML",
                            lead:"機械学習をアプリケーションに応用する際の問題の定義, モデル設計, 最適化, 評価, Core MLを使った実装までをシンプルなケースで解説します。",
                            author: sonson)
        chapters.append(chap3)

        let chap4 = Chapter(number: 4,
                            title: "Swift 4の新機能とアップデート",
                            lead:"""
Swift 4でFoundationに導入されるCodableプロトコルとSmart KeyPathsは、
Swiftらしい型安全な仕組みをiOSプログラミングにもたらしてくれます
(もう文字列キーに不安を感じることはありません!)。
これらの新機能を使いこなして、より簡潔で安全なコードを書いていきましょう。
""",
                            author: ikesyo)
        chapters.append(chap4)

        let chap5 = Chapter(number: 5,
                            title: "Xcode 9の新機能",
                            lead:"""
今年発表されたXcode 9は待望のリファクタリング機能に加えて、
より分かりやすくなったビルドエラーやシミュレータの複数実行など、
開発効率を確実にあげる機能が多く追加されています。
Xcodeはアプリ開発者の誰もが利用するツールなので、
これらの新機能をなるべく網羅して説明したいと思ってます。
""",
                            author: huin)
        chapters.append(chap5)

        let chap6 = Chapter(number: 6,
                            title: "Drag and Drop",
                            lead:"""
iOS 11で追加されるDrag and Dropは、アプリ内あるいはアプリ間で、
これまでになく直感的にデータを受け渡すことができます。
Drag and DropのようなUIはどのようなアプリでも当たり前に利用できることが期待されるでしょう。
本章ではUIKitのDrag and Drop APIを最大限に活用して、
効果的なUIを実装する方法について説明します。
""",
                            author: cockscomb)
        chapters.append(chap6)

        let chap7 = Chapter(number: 7,
                            title: "Files と Document Based Application",
                            lead:"""
iOS 11で大きく強化されることになったファイルやドキュメントに関わる数々のAPIは、
これまでのアプリ中心なiOSの世界に、ファイルを中心とした新しい軸をもたらします。
ファイルを介したアプリ間の連携は、これまでにない相乗効果を生み出すでしょう。
この章ではファイルやドキュメントに関するiOS 11の新機能を広く取り上げ、
どのように実装するかを紹介します。
""",
                            author: cockscomb)
        chapters.append(chap7)

        let chap8 = Chapter(number: 8,
                            title: "UIKitのガイドラインの変更点とAutoLayoutの新機能、アップデート",
                            lead:"""
AutoLayoutの変更はUIKitの変更点が深く関わるので
（特にLarge Titles、Navigation Barあたり)、
その点も含む見た目関連をまとめて解説します。
""",
                            author: jeffsuke)
        chapters.append(chap8)

        let chap9 = Chapter(number: 9,
                            title: "Core NFC",
                            lead:
            """
Suicaが読み取れるのか、ユニークなIDを読み取れるのか、
など「これができて、これができない」という点を整理してCore NFCを解説します。
iOS 11の中でも面白い機能なので楽しみです。
""",
                            author: k_katsumi)
        chapters.append(chap9)

        let chap10 = Chapter(number: 10,
                            title: "PDFKit",
                            lead:"macOS では10.4から搭載されていたPDFKitがiOSでも使えるようになりました。詳細に解説します。",
                            author: k_katsumi)
        chapters.append(chap10)

        let chap11 = Chapter(number: 11,
                             title: "SiriKit",
                             lead:"徐々に採用ケースが増えてきたSiriKitをiOS 11における新機能と合わせて解説します。",
                             author: k_katsumi)
        chapters.append(chap11)

        let chap12 = Chapter(number: 12,
                             title: "HomeKit入門とiOS 11における新機能",
                             lead:"""
まずはHomeKit入門でHomeKitの基礎を解説してから、
iOS 11の新機能を解説します。
実際にHomeKit対応製品と連携させて
iOS11ではこういうことが実現できるようになるという内容の予定です。
""",
                             author: tokorom)
        chapters.append(chap12)

        let chap13 = Chapter(number: 13,
                             title: "Metal 2",
                             lead:"""
どういう切り口で書くか具体的には検討中ですが、
本書では「普段からGPUまわりにゴリゴリに触れている既存Metalユーザー向け」というよりも、
「これまでOpenGLやMetalといったレイヤーに直接触れる機会があまりなかったiOSエンジニア向け」に、
Metalのレイヤーをいじれるとこういう場面で役立つ、
という切り口からMetal 2の実装方法を解説していこうかなと考えています。
""",
                             author: shu223)
        chapters.append(chap13)

        let chap14 = Chapter(number: 14,
                             title: "Audio/Media関連 新フレームワークとアップデート",
                             lead:"""
iOS 11で追加になったMusicKit、
AirPlay2を中心にAudio/Media関連のアップデートをiPhone Core Audio プログラミングの続編としても読めるような形で書きます！
（Core Audio本改定まだー？が聞こえてくる） MusicKit, AirPlay 2, その他の変更点
""",
                             author: nagano)
        chapters.append(chap14)

        return chapters
    }
}
