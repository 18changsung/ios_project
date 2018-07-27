//
//  BookListTableViewController.swift
//  ViewData
//
//  Created by Tars on 7/27/18.
//  Copyright © 2018 sspog. All rights reserved.
//

import UIKit

class BookListTableViewController: UITableViewController {

    var books:[Book] = []
    //앞서 정의한 BookData의 Book클래스로 만든 books 빈 배열.

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        let book1 = Book(title: "Book1", writer: "Wirter1", coverImage: UIImage(named: "book1"))
        let book2 = Book(title: "Book2", writer: "Wirter2", coverImage: UIImage(named: "book2"))
        let book3 = Book(title: "Book3", writer: "Wirter3", coverImage: UIImage(named: "book3"))
        books = [book1, book2, book3]
        //각 객체를 만들어주고 books배열에 추가.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return books.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath)

        // Configure the cell...
        let book = books[indexPath.row]
        cell.textLabel?.text = book.title
        cell.detailTextLabel?.text = book.writer

        if let coverImage = book.coverImage{
            cell.imageView?.image = coverImage
        }
        //테이블 셀에 책에 대한 정보 표시.

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let secondViewController = segue.destination as? BookDetailViewController
        //destination은 현재 뷰 다음에 나올 뷰를 의미. as?로 다음에 나올 뷰의 BookDetailViewController 클래스에서 필요한 부분 상속.

        let selectedIndexPath = self.tableView.indexPathForSelectedRow
        //현재 선택된 테이블 셀의 위치 정보를 담아둠.

        if let indexPath = selectedIndexPath{
            secondViewController?.selectedBook = books[indexPath.row]
        }
        //만약 선택된 테이블 셀이 있다면 그 정보를 다음에 나올 뷰인 BookDetailViewController의 selectedBook 배열에 books배열의 해당 값을 넘겨줌.

    }

}
