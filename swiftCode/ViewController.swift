//
//  ViewController.swift
//  swiftCode
//
//  Created by Yujunming on 16/7/22.
//  Copyright © 2016年 Yujunming. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Thread.sleep(forTimeInterval: 2.0);
        print("helll");
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//git ceshi yujunming
//hello
    @IBAction func btnClick(){
        let myAlert = UIAlertController(title: "初学Swite，请见谅", message: "怎么才能学好swift", preferredStyle: .alert);
//        let cancelAction = UIAlertAction(title: "取消", style: .Cancel, handler: {action in [
//            
//            self.alertViewClick(0,nil)
//            
//            ]})
//        let sureAction = UIAlertAction(title: "确定", style: .Default, handler: {
//        action in self.alertViewClick(1)
//        })
//        
//        let sA = UIAlertAction(title: "确定", style: .Default) { (UIAlertAction) -> Void in
//            self.alertViewClick(1)
//        }
        
         let s = UIAlertAction(title: "确定", style: .default) { (action: UIAlertAction!) -> Void in
            let textF = myAlert.textFields?.last
            self.alertViewClick(1,str: (textF?.text)! as NSString)
        }
        
        //myAlert.addAction(cancelAction);
        myAlert.addAction(s);
        
        myAlert.addTextField { (textField:UITextField) -> Void in
            textField.placeholder = "请输入你想说的话";
        }
        
        self.present(myAlert, animated: true) { () -> Void in
            print("弹出框结束了")
        }
    }
    
    fileprivate func alertViewClick(_ a : Int ,str :NSString)
    {
        if a == 0 {print("hello,大家好,我点击了取消")}
        else{
         let myAlert1 = UIAlertController(title: "笨猪", message: "你这个大傻逼，你刚刚输的是不是:"+(str as String), preferredStyle: .alert);
        let s = UIAlertAction(title: "确定", style: .default) { (action: UIAlertAction!) -> Void in
            
            }
            myAlert1.addAction(s);
            self.present(myAlert1, animated: true) { () -> Void in
               
            }



        }
    }
    
    func getString()->NSString{
        return "hello";
    }
}

