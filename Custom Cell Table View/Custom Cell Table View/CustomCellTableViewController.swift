//
//  CustomCellTableViewController.swift
//  Custom Cell Table View
//
//  Created by Muhammad Hilmy Fauzi on 19/10/17.
//  Copyright © 2017 Hilmy Corp. All rights reserved.
//

import UIKit

class CustomCellTableViewController: UITableViewController {

    let category:[String] = ["Sejarah", "Aqidah", "Science", "Adab", "Muamalah"]
    let tglData : [String] = ["Minggu, 22 Oktober 2017","Senin, 23 Oktober 2017", "Selasa, 24 Oktober 2017", "Rabu, 25 Oktober 2017", "Kamis, 26 Oktober 2017"]
    let judulBerita : [String] = ["Go Pay itu Riba?","Naik Angkot Gak Bayar", "Darah Haid Makanan Jin?","Orang Gila Di Surga atau Neraka?","Di Sinilah Benteng Yakjuj dan Makjuj"]
    let isiBerita:[String] = ["GO-PAY adalah dompet virtual yang bisa Anda gunakan untuk melakukan pembayaran semua transaksi dalam aplikasi GO-JEK. Mulai dari transportasi seperti GO-RIDE, GO-CAR, dan GO-BUSWAY, membeli makanan dengan GO-FOOD, …, semua bisa dibayar menggunakan GO-PAY.","Jika dulu pernah naik angkot gak bayar, naik bis kota gak bayar, apa yg harus dilakukan? Krn jd kepikiran. Sementara tdk memungkinkan utk mencari supirnya atau pemilik angkot…","Apakah darah haid juga termasuk makanan jin? Kami tidak menjumpai adanya keterangan maupun riwayat yang menyatakan bahwa darah haid adalah makanannya jin. Sementara masalah gaib, pada asalnya manusia tidak tahu, kecuali dia memiliki sumber informasi dari dalil atau peristiwa yang ditampakkan kepadanya. Jika tidak, maka informasinya  tidak diterima.Demikian, Allahu a’lam.","Anak yang terlahir dalam keadaan cacat akal, hukumnya seperti orang gila, dia tidak dibebani syariat. Oleh karenanya, amal perbuatannya tidak akan disidang (di-hisab) di hari kiamat nanti. Bila ia berasal dari kedua orangtua yang muslim atau salah satunya muslim, maka status dia mengikuti orangtuanya yang beragama islam. Maksudnya anak ini menjadi muslim sehingga dia dimasukkan surga. (Majmu’ Fatawa Wa Rasa-il Ibni ‘Utsaimin 2/18).","Mereka berkata: “Hai Dzulkarnain, sesungguhnya Ya’juj dan Ma’juj itu orang-orang yang membuat kerusakan di muka bumi, maka dapatkah kami memberikan sesuatu pembayaran kepadamu, supaya kamu membuat dinding antara kami dan mereka?” Dzulkarnain berkata: “Apa yang telah dikuasakan oleh Tuhanku kepadaku terhadapnya adalah lebih baik, maka tolonglah aku dengan kekuatan (manusia dan alat-alat), agar aku membuatkan dinding antara kamu dan mereka. (QS. Al-Kahfi: 94 – 95)"]
    
    let gambarBerita : [String] = ["Angkot Gabayar.jpeg", "Benteng.png", "Darah Haid.jpg", "GoPay.jpeg", "Orang Gila.jpg"]

        override func viewDidLoad() {
        super.viewDidLoad()
            
            //setting height table view
            tableView.estimatedRowHeight = 650.0
            tableView.rowHeight = UITableViewAutomaticDimension

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
        return judulBerita.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellBerita", for: indexPath) as! BeritaTableViewCell

        // Configure the cell...

        cell.labelKategori.text = category[indexPath.row]
        cell.judulBerita.text = judulBerita[indexPath.row]
        cell.tglBerita.text = tglData[indexPath.row]
        cell.isiBerita.text = isiBerita[indexPath.row]

        
//        let dataImage :UIImage = UIImage(named: gambarBerita[indexPath.row])!
//        cell.imgGambar.image = dataImage


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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
