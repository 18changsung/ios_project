//
//  BookDetailViewController.swift
//  ViewData
//
//  Created by Tars on 7/27/18.
//  Copyright © 2018 sspog. All rights reserved.
//

import UIKit

class BookDetailViewController: UIViewController {

    var selectedBook:Book?
    var myText:String? //세번째 화면(InputViewController)에서 받을 텍스트필드의 값을 위해 그릇을 준비.

    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidAppear(_ animated: Bool) {
        resultLabel.text = myText
    }
    //viewDidLoad는 modal이 닫힌다고 다시 호출되지 않음. 가려져있는 화면임을 인지해야함.
    //그래서 다시 나타날 때 보이도록 함.

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        guard let book = selectedBook else{
            return
        }

        self.title = book.title
        detailLabel.text = book.writer
        if let coverImage = book.coverImage{
            detailImage.image = coverImage
        }
        //선택된 책이 있다면 해당 책에 대한 상세정보 보여줌.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let inputVC = segue.destination as? InputViewController
        inputVC?.delegate = self
        //세번째 화면에 선언된 delegate 변수에 현재 BookDetailViewController의 주소값을 할당
    }

}
