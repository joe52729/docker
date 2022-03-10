# docker
for laravel8 環境
用以取代MAMP MAC M1 chip 可用
1.phpmyadmin 連線到DB 方法：將PMA_HOST參數帶入DB的container name
2.web server採用Nginx 掛載目錄方法 <專案路徑>：/usr/share/nginx/html/<專案名稱>
3.php fpm 掛載路徑需同 web Server
4.Ngixn config設定：
  預設80 port 作為開發用途
  root須設置到webserver容器內專案的public資料夾
  fpm設定為 php容器名稱:該容器對外port號
