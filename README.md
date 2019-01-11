![image](https://github.com/WISD-2018/final15/blob/master/index.png?raw=true)
![image](https://github.com/WISD-2018/final15/blob/master/news.png?raw=true)
![image](https://github.com/WISD-2018/final15/blob/master/shop.png?raw=true)
![image](https://github.com/WISD-2018/final15/blob/master/shopdetail.png?raw=true)
![image](https://github.com/WISD-2018/final15/blob/master/user.png?raw=true)
![image](https://github.com/WISD-2018/final15/blob/master/cart.png?raw=true)
# 室內植物盆栽訂購系統

## 網站功能
- 植物新聞(Route::get('news'))&(Route::get('news/detail/{id}'))(3A532034吳駿松)
- 聯絡我們(Route::get('contact'))(3A532050李建德)
- 會員註冊、登入、驗證、資料顯示(Route::auth())&(Route::get('home'))(3A532031江明宸)
- 商品頁面、篩選、搜尋、排序、加入購物車、商品詳細頁面(Route::get('shop/main'))&(Route::get('detail/{id}'))&(Route::get('shop/cleanup'))&(Route::get('shop/cleandown'))&(Route::get('shop/dustup'))&(Route::get('shop/dustdown'))&(Route::get('shopprice/{type}'))&(Route::post('/shop/search'))(3A532034吳駿松&3A532050李建德)
- 購物車頁面、購物車數量修改、購物車品項刪除、個人購物車(Route::get('cart'))&(Route::get('cart/{id}'))&(Route::get('cart/{id}/{q}'))&(Route::delete('cart/{id}'))
- 結帳(Route::get('checkout'))&(Route::post('/orders'))(3A532031江明宸)
- 訂單資訊查詢(Route::get('home'))(3A532050李建德)

## 網站初始專案以及樣板
- 套用bootstrap(網路商店模板)(http://link.zhihu.com/?target=https%3A//colorlib.com/download/1023/)
- DB(三人各自完成所負責部分的DATABASE資料)

## 網站安裝
1. > git clone https://github.com/WISD-2018/final15.git
2. > composer install(專案還原)
3. > 匯入資料庫 https://github.com/WISD-2018/final15/blob/master/plantae.sql

## 使用者測試帳號
帳號:123123@gmail.com 密碼:12345678
帳號:man@gmail.com 密碼:12345678
帳號:ass@gmail.com 密碼:12345678

#### 設計者與工作分配
- [李建德](https://github.com/3A532050)(購物車、商品頁面)
- [江明宸](https://github.com/3A532031)(會員、結帳)
- [吳駿松](https://github.com/3A532034)(植物新聞、植物詳細頁面、搜尋)
