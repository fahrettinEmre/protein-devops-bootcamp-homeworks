# 2.Hafta 1.Ödev

## Table of contents

1. [Aciklama](#aciklama)
2. [Not](#not)
3. [Usage](#usage)

---

#### Aciklama:
Kullanıcı projenin sadece belirli bir branch'ini derlemek istediğinde kullanabileceği yardimci bir script yazılmıştır.
1. Kullanici build istedigi branch ismini verebilir ve o anda o branch uzerinde degilse o branch'e gecmelibilir ve o sekilde build islemi baslar.
2. Main / Master branchlerinde ise `master veya main branchini build edeceksiniz ! y/n` uyarısını alır.
3. Kullanıcı istediği zaman yeni bir branch açabilir.
4. Kullanici build islemi bittikten sonra cikan artifact'lerin hangi formatta compress edilecegini secebilmelir. `sıkıstırma türünü seciniz. tar/zip` seçenekleri sunulmaktadır.
5. Kullanıcı compress edilen artifact'lerin hangi dizine taşınacağını şşeçebilir.`Taşımak istediğiniz full path'i giriniz exp:/home/../Desktop` örneklendirmesi yapılmıştır.

---

#### Not:

- Burada verilen proje `Golang` ile yazilmistir ve `go build` ile paket yönetimi yapılmıştır.
- Compress örnekleri example_ss klasörü içerisinde bulunmaktadır.