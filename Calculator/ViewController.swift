//
//  ViewController.swift
//  Calculator
//
//  Created by kimwongi on 2020/07/21.
//  Copyright © 2020 kimwongi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var printNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TextField.text = String(printNum)
    }
    
    
    @IBOutlet weak var TextField: UITextField!
    @IBAction func NumPad0(_ sender: Any) {
        numberText(0)
    }
    @IBAction func NumPad1(_ sender: Any) {
        numberText(1)
    }
    @IBAction func Numpad2(_ sender: Any) {
        numberText(2)
    }
    @IBAction func NumPad3(_ sender: Any) {
        numberText(3)
    }
    @IBAction func NumPad4(_ sender: Any) {
        numberText(4)
    }
    @IBAction func NumPad5(_ sender: Any) {
        numberText(5)
    }
    @IBAction func NumPad6(_ sender: Any) {
        numberText(6)
    }
    @IBAction func NumPad7(_ sender: Any) {
        numberText(7)
    }
    @IBAction func NumPad8(_ sender: Any) {
        numberText(8)
    }
    @IBAction func NumPad9(_ sender: Any) {
        numberText(9)
    }
    @IBAction func ClearPad(_ sender: Any) {
        printNum = 0
        TextField.text = "Clear"
    }
    
    // 숫자의 +/- 값을 토글을 이용하여 바꿀 수 있도록
    // ex) 1 -> -1 -> 1
    @IBAction func PlusMinus(_ sender: Any) {
        printNum = printNum * -1
        TextField.text = String(printNum)
    }
    
    @IBAction func Percent(_ sender: Any) {
        printNum = printNum + 1
        //double 형태 필요 수정
    }
    
    var Num1 = 0
    var Num2 = 0
    var resultNum = 0
    
    //계산식 선택
    // 1:+, 2:-, 3:X, 4:/, 0:=
    /* 수정필요
    @IBAction func Process0(_ sender: Any) {
        process(0)
    }
    
    @IBAction func Process1(_ sender: Any) {
        process(1)
    }*/
    
    
    //TextField에 숫자를 입력하도록 하는 함수
    func numberText(_ num:Int) {
        //한 자리 숫자의 계산만 하지 않으므로 10을 곱해 자리수를 높여간다
        printNum = printNum * 10 + num
        //처음 버튼이 눌렸을 때 값이 0이므로 a만 출력
        //두번째 부터는 초기화 되지 않았으므로 전의 값을 불러옴
        TextField.text = String(printNum)
    }
    /* 수정필요
    func process(_ a:Int) {
        switch a {
        case 0:
            TextField.text = String(Num1)+" + "+String(Num2)+" = "+String(resultNum)
            break
        case 1:
            Num1 = printNum
            printNum = 0
            Num2 = printNum
            resultNum = Num1 + Num2
        default:
            break
        }
    }*/

}


//현재 숫자 -> temp
//숫자 초기화 -> 두번째숫자 -> 현재숫자
