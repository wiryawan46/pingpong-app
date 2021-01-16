# pingpong-app built in with node js

#### STEP 1
1. Buat `Dockcerfile`
2. Build `dockerfile` dengan perintah `docker build -t pinpong-app .`
3. Cek apakah image sudah terbuat atau belum dengan perintah `docker ps`
4. Untuk menjalankan image menjadi container lakukan perintah berikut `docker run -p 3000:3000 -e PORT=3000 pingpong-app`

#### STEP 2
1. Buat `deployment` file yang berisi `ConfigMap, Deployment, Services` dan `Ingress`
2. Jalankan minikube dengan perintah `minikube start`
3. Jalankan perintah `minikube docker-env` untuk menghubungkan `minikube internal Docker registry` dengan `local Docker Daemon`
![Alt text](gambar/docker-env.png?raw=true)
4. Lalu, jalanakan sesuai perintah diatas dengan perintah `eval $(minikube -p minikube docker-env)`
5. Untuk menambahkan fitur `ingress` jalankan perintah `minikube addons enable ingress` namun di kasus saya ini akan berbeda
karena saya menggunakan MacOS ada issue di minikube berikut ini `issue`:
![Alt text](gambar/issue.png?raw=true)
6. Maka dari itu saya menggunakan `type: NodePort` pada bagian `Service` agar dapat diakses menggunakan `port`.
7. Jalankan perintah `kubectl create/apply -f deployment.yml`
![Alt text](gambar/apply.png?raw=true)
8. Jalan kan perintah `minikube service pingpong-app-service --url` untuk mendapatkan url
![Alt text](gambar/sc-nodeport.png?raw=true)
9. Cek dengan `curl`

![Alt text](gambar/curl.png?raw=true)
![Alt text](gambar/curl-ping.png?raw=true)

### Screenshot Minikube Dashboard

![Alt text](gambar/minikube-dashboard.png?raw=true)

