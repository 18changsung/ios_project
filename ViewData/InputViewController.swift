//
//  InputViewController.swift
//  ViewData
//
//  Created by Tars on 7/27/18.
//  Copyright © 2018 sspog. All rights reserved.
//

import UIKit

class InputViewController: UIViewController {

    var delegate:BookDetailViewController? //앞의 두번째 화면에서 받은 주소.

    @IBOutlet weak var inputText: UITextField!

    @IBAction func inputButton(_ sender: Any) {
        delegate?.myText = inputText.text
        //BookDetailViewController의 주소로 접근해 준비된 myText에 텍스트 필드 값 담기.
        self.dismiss(animated: true, completion: nil)
        //modal로 띄운 창을 닫을 때 사용.

        //self.navigationController?.popViewController(animated: true)
        //show로 띄운 창을 돌아갈때 사용.
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 */

}
