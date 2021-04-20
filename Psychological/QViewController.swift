//
//  QViewController.swift
//  Psychological
//
//  Created by Yang Nina on 2021/4/19.
//

import UIKit

class QViewController: UIViewController {

    @IBOutlet weak var yesBtn: UIButton!
    @IBOutlet weak var noBtn: UIButton!
    @IBOutlet weak var Qlabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Qlabel.text = questions[0].description
    }
    var nowNum = 0
    @IBAction func choose(_ sender: UIButton) {
        if sender.currentTitle == "Yes"{
            nowNum = questions[nowNum].yesQuestion - 1
        }
        else{
            nowNum = questions[nowNum].noQuestion - 1
        }
        if nowNum < 21 {
            Qlabel.text = questions[nowNum].description
        }
        else{
            //跳到下一頁
            performSegue(withIdentifier: "end", sender: nil)
            nowNum = 0
            Qlabel.text = questions[0].description
        }
    }
    @IBSegueAction func result(_ coder: NSCoder) -> AViewController? {
        let resultNum = nowNum + 1
        return AViewController(coder: coder, resultNum:resultNum)
        //return AViewController(coder: coder)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
