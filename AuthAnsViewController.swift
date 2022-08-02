//
//  AuthAnsViewController.swift
//  Streetalk
//
//  Created by 한태희 on 2022/01/13.
//

import UIKit

class AuthAnsViewController: UIViewController, SendPhoneNumDelegate {

    @IBOutlet weak var lblTimer: UILabel!
    @IBOutlet weak var txtFieldAnswer: UITextField!
    @IBOutlet weak var BtnAuthCheck: UIButton!
    @IBOutlet weak var BtnAuthResend: UIButton!
    @IBOutlet weak var phoneNumberTxtBox: UITextField!
    var Auth : String = ""
    
    var mTimer : Timer?
    var number : Int = 300
//    var pNum : String = "010-0000-0000"

    override func viewWillAppear(_ animated: Bool) {
        BtnAuthCheck.setGradient(color1: UIColor.veryLightPink, color2: UIColor.veryLightPink)
        
        BtnAuthResend.setGradient(color1: UIColor.stkOrange, color2: UIColor.stkPink)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        BtnAuthCheck.isEnabled=false
        DebugPushAlert()
        phoneNumberTxtBox.text = userPhoneNum
        
        
        let AuthNum = Int.random(in: 0...999999)
        let AuthNumStr = String(format: "%06d", AuthNum)
        print(AuthNumStr)
        Auth = AuthNumStr

        txtFieldAnswer.becomeFirstResponder()
        
        if mTimer != nil && mTimer!.isValid {
            mTimer!.invalidate()
        }
     
        //타이머 사용값 초기화
        number = 300
        //1초 간격 타이머 시작
        mTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerCallback), userInfo: nil, repeats: true)

        
    }
    
    @IBAction func AuthNumRemake(_ sender: Any) {
        if (number>280){
            let alert = UIAlertController(title: "재전송 실패", message: "20초 안에 재전송할 수 없습니다\n잠시 후 다시 시도해주세요", preferredStyle: UIAlertController.Style.alert)
            let okAction = UIAlertAction(title: "확인", style: .default) { (action) in
                        
                }
            alert.addAction(okAction)
            present(alert, animated: false, completion: nil)
            return
        }
        APIUserAuth(phoneNum: phoneNumberTxtBox.text!)
        number = 300
        
        DebugPushAlert()
    }
    
    @objc func timerCallback(){
        if(number<=0){
            mTimer?.invalidate()
            mTimer = nil
        }
        else{
            number -= 1
            lblTimer.text = String(format: "%02d",number/60) + ":" + String(format: "%02d",number%60)
        }
        
    }
    @IBAction func AuthCheckBtnEnable(_ sender: Any) {
        if(txtFieldAnswer.text!.count>=6){
            BtnAuthCheck.isEnabled=true
            BtnAuthCheck.setGradient(color1: UIColor.stkOrange, color2: UIColor.stkPink)
        }
        else{
            BtnAuthCheck.isEnabled=false
            BtnAuthCheck.setGradient(color1: UIColor.veryLightPink, color2: UIColor.veryLightPink)
        }
    }
    
    @IBAction func BtnAuthCheck(_ sender: Any) {
        //timer check
        //number check
        print("\(ranNum)")
        
        
        if(number>0){
            if(txtFieldAnswer.text==UserDefaults.standard.string(forKey: "userRandNum")){
                UserDefaults.standard.set(userPhoneNum,forKey: "userPhoneNum")
                performSegue(withIdentifier: "AuthClear", sender: sender)
            }
            else {
                txtFieldAnswer.shake()
                lblTimer.shake()
                print("Incorrect Number")
            }
        }
        else{
            print("Time expired")
        }
    }
    
    func DebugPushAlert(){
        let push = UNMutableNotificationContent()
        push.title = "test Title"
        push.subtitle = "test subTitle"
        push.body = "test body"
        push.badge = 1
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
        let request = UNNotificationRequest(identifier: "test", content: push, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueForPhoneNum" {
            guard let VC: AuthPageViewController = segue.destination as? AuthPageViewController else {return}
//            VC.txtFieldPhoneNum.text! = pNum
            VC.delegate = self
        }
    }
    
    func sendPhoneNum(num: String) {
        print(num)
//        pNum = num
    }
}

