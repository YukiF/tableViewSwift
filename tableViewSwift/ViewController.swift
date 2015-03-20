//
//  ViewController.swift
//  tableViewSwift
//
//  Created by Yuki.F on 2015/03/20.
//  Copyright (c) 2015年 Yuki Futagami. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet var tableView : UITableView!
    //空の文字列
    var nameArray = [String]()
    var imageArray = [UIImage]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
        
        nameArray = ["a","b","c","d","e"]
        imageArray.append(UIImage(named: "1.png")!)
        imageArray.append(UIImage(named: "2.png")!)
        imageArray.append(UIImage(named: "3.png")!)
        imageArray.append(UIImage(named: "4.png")!)
        imageArray.append(UIImage(named: "5.png")!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        //1セクションあたりのセル(列)の数
        return nameArray.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        // 再利用できるID付きのセルを取得する
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        // Cellに値を設定する.
        //"indexPath.row"は"何列目"かを表す
        cell.textLabel!.text = nameArray[indexPath.row]
        cell.imageView!.image = imageArray[indexPath.row]
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        //何番目のセルが押されたかをチェックする
        NSLog("%d", indexPath.row)
    }
    


}

