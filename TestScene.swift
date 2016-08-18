//
//  TestScene.swift
//

import Foundation
import SpriteKit

class TestScene:SKScene {
    
    var birdNode1:SKSpriteNode!
    var birdNode2:SKSpriteNode!
    
    //現在シーン設定時の呼び出しメソッド
    override func didMoveToView(view: SKView) {
        
        //背景画像のノードを作成する。
        let backNode = SKSpriteNode(imageNamed: "mountain")
        
        //背景画像のサイズをシーンと同じにする。
        backNode.size = self.frame.size
        
        //背景画像の位置をシーンの中央にする。
        backNode.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        
        
        //鳥のノードを作成する。
        birdNode1 = SKSpriteNode(imageNamed: "bird1")
        birdNode2 = SKSpriteNode(imageNamed: "bird2")
        
        //鳥の座標を指定する。
        birdNode1.position = CGPointMake(self.frame.width / 3, CGRectGetMidY(self.frame));
        birdNode2.position = CGPointMake(self.frame.width * 2 / 3, CGRectGetMidY(self.frame));
        
        //ノードをシーンに追加する。
        self.addChild(backNode)
        self.addChild(birdNode1)
        self.addChild(birdNode2)
    }
    
}
