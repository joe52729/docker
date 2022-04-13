# docker
for laravel8 環境 <br>
用以取代MAMP MAC M1 chip 可用 <br>
1.phpmyadmin 連線到DB 方法：將PMA_HOST參數帶入DB的container name <br>
2.web server採用Nginx 掛載目錄方法 <專案路徑>：/usr/share/nginx/html/<專案名稱> <br>
3.php fpm 掛載路徑需同 web Server <br>
4.Ngixn config設定：<br>
  預設80 port 作為開發用途 <br>
  root須設置到webserver容器內專案的public資料夾 <br>
  fpm設定為 php容器名稱:該容器對外port號 <br>
5.未來將會把 網站指向web_source
6.支援多個子站台需求 
### 加入多站台的conf產生方式

- 自動產生wsx.conf需要用到envsubst指令,本地端請先確認是否已安裝gettext,在終端機執行gettext -V查看版本，如尚未安裝，請先進行install,方法如下:

    brew install gettext
    brew link --force gettext
    
- 於此docker資料夾下直接執行 ./wsx.sh,完成後將會在/nginx/sites/自動產生wsx.conf,如未自動生成,請查看錯誤訊息並解決,注意：此bash會自動關閉docker並重新呼叫docker-compose up -d nginx,如想改為手動啟用,請移除最後一行指令即可。

- 編輯wsx.sh:
    變更export WSNUM為站台編號,然後重複第2步驟即可。
