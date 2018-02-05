//
//  ViewController.swift
//  ItsuDareGame
//test
//  Created by 小西夏穂 on 2017/09/05.
//  Copyright © 2017年 小西夏穂. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var docodeLabel: UILabel!
    @IBOutlet var daregaLabel:UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    let itsuArray: [String] = ["一年前", "一週間前", "昨日", "今日", "何十年も前", "昔々"]
    let docodeArray: [String] = ["山の上で", "アメリカで", "学校で", "クラスで", "砂漠で", "海の中で"]
    let daregaArray: [String] = ["僕が", "大統領が", "先生が", "友達が", "私が", "犬が"]
    let doshitaArray: [String] = ["叫んだ", "演説した", "怒った", "踊った", "笑った", "寝た" ]
    
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func change() {
        
        //　それぞれのラベルに入れつの要素を追加する
        itsuLabel.text = itsuArray[index]
        docodeLabel.text = docodeArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        // indexの値を+1する
        index = index + 1
        
        // indexの値が5より大きくなったら0に戻す
        
        if index > 5 {
            index = 0
        }
    }
    
    @IBAction func reset() {
        
        //　それぞれのラベルを元に戻す
        itsuLabel.text = "____"
        daregaLabel.text = "____"
        docodeLabel.text = "____"
        doshitaLabel.text = "____"
        
        // indexを初期化する
        index = 0
        
    }
    
    @IBAction func random(){
        
        //　乱数を生成して、それぞれのindexの中に入れる
        let itsuIndex = Int(arc4random_uniform(6))
        let docodeIndex = Int(arc4random_uniform(6))
        let daregaIndex = Int(arc4random_uniform(6))
        let doshitaIndex = Int(arc4random_uniform(6))
        
        //　コンソールに出力して、それぞれの値を確かめよう
        print("いつ: \(itsuIndex)")
        print("どこで: \(docodeIndex)")
        print("だれが: \(daregaIndex)")
        print("どうした: \(doshitaIndex)")
        
        //　それぞれのラベルに配列の用紙を追加する
        itsuLabel.text = itsuArray[itsuIndex]
        docodeLabel.text = docodeArray[docodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doshitaLabel.text = docodeArray[doshitaIndex]
        
    }

}

