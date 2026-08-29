# EMart Mikroservis Mimarisi Dagitim Projesi

Bu proje, Node.js, Java (Spring), Angular, MySQL ve MongoDB gibi farkli teknolojilerle yazilmis 6 farkli mikroservisi tek bir orkestrasyon altinda birlestiren EMart e-ticaret uygulamasinin tam otomatik sanal ortama dagitimini icerir.

## Proje Icerigi

* **Vagrantfile:** 4GB RAM ve 2 CPU tahsis edilmis, acildigi anda Docker, Docker Compose ve Git kurulumlarini otomatik yapan altyapi betigi.
* **emartapp:** Mikroservislerin kaynak kodlarini ve yayinlanmasini saglayan `docker-compose.yaml` dosyasini barindiran klasor.
* **theme_emart.sh:** Angular projesini yeniden derlemeden, calisan Nginx konteynerine Canli Enjeksiyon (Live Injection) yontemiyle sizarak sitenin kurumsal renklerini degistiren (FLO Turuncusu) ozel DevOps betigi.

## Neler Yapildi?

1. Eski `docker-compose` v1 ile modern `docker-compose.yaml` versiyon uyusmazliklari (v3.8) kalici olarak cozuldu.
2. Java (Books API) derlemesinde alinan, destekten kalkmis `openjdk:8` imaji hatasi, kaynak koddaki Dockerfile icerisine mudahale edilip `eclipse-temurin:8-jdk` ile degistirilerek basariyla asildi.
3. Monolitik sistemden tam anlamiyla bagimsiz mikroservis (Gateway, UI, Backend, DB) mimarisine gecis yapildi.

## Nasil Calistirilir?

1. Depoyu klonlayin ve dizine girin.
2. `vagrant up` komutu ile sunucuyu hazirlayin.
3. `vagrant ssh` ile sunucuya girin ve `/vagrant/emartapp` dizinine gecin.
4. `docker-compose up -d --build` komutuyla tum mikroservisleri derleyip baslatin.
5. Sitenin kurumsal renklerini degistirmek icin `/vagrant` altindaki `bash theme_emart.sh` komutunu calistirin.
