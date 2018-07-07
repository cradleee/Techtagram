//
//  ViewController.swift
//  Techtagram
//
//  Created by kamano yurika on 2018/04/02.
//  Copyright © 2018年 釜野由里佳. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet var cameraImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //撮影する時のメソッド
    @IBAction func useCamera(){
        //カメラが使えるか確認
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            //カメラを起動
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.delegate = self
        picker.allowsEditing = true
            
            present(picker, animated: true, completion:nil)
        } else {
            //カメラを使えない時はエラーがコンソールに出ます
             print("error")
        }
    }
    
    //表示している画像にフィルター加工をする時のメソッド
    @IBAction func applyFilter() {
        
    }
    
    //編集した画像を保存する時のメソッド
    @IBAction func save() {
        
    }

    //カメラロールにあるがそうを読み込むときのメソッド
    @IBAction func openAlbum() {
        
    }
    
    //編集した画像をシェアする時のメソッド
    @IBAction func share() {
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

