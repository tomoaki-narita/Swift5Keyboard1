//
//  ViewController.swift
//  Swift5Keyboard1
//
//  Created by output. on 2020/02/23.
//  Copyright © 2020 output. All rights reserved.
//

import UIKit

//UITextFieldが持っているDelegateメソッドを呼ぶために宣言
//Delegateメソッドとは、ここではAppleが準備している
//プロトコル(仕様書、設計図)の中にあるメソッドのことを言う
class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passWordTextField: UITextField!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //userNameTextFieldとpassWordTextField
        //でdelegateメソッドが使えるよう宣言(呼ぶ)
        //リターンキーを押した時の処理をするメソッドも
        //UITextFieldDelegateに含まれている
        //この自分のViewControllerクラスで使うのでself
        userNameTextField.delegate = self
        
        passWordTextField.delegate = self
    
    }

    //ログインボタンを押した時の処理をかくメソッド
    @IBAction func login(_ sender: Any) {
        
        //ログインボタンが押されたらlogoimageViewの
        //imageに"loginOK"の画像を代入する
        logoImageView.image = UIImage(named: "loginOK")
        
        //userNameLabelのtextにuserNameTextFieldに入力されたtextを反映
        userNameLabel.text = userNameTextField.text
        
        //passwordLabelのtextにpassWordTextFieldに入力されたtextを反映
        passwordLabel.text = passWordTextField.text
        
    }
    
    //タッチでキーボードを閉じる
    //UIViewControllerがタッチした時に呼ばれるメソッドを持っている
    //画面をタッチした時に呼ばれるメソッド
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        //viewのendEditing(編集終了してもいいか)true(yes)
        view.endEditing(true)
    }
    
    //リターンキーを押した時にキーボードを閉じる
    //リターンキーを押した時に呼ばれるメソッド
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        //キーボードを閉じる
        //resignFirstResponderの返り値はBoolになっている
        textField.resignFirstResponder()
        
        //Bool型なのでtrueかfalseで返す
        return true
        
    }
    
}

