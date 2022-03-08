## 寫一般程式和寫ML程式的差異:
- 一般程式: 重點在程式碼和參數，且通常一次性寫完之後就不需再重複修改。
- ML程式: 除了程式，其他部份也非常重要。常需幾十次至幾百次以上的重複執行來找出最佳的parameters、metrics和model。
## 從Kaggle拿到ML data到可發展成運營管理(MLOps)的演進:
### 基礎: 大部份人的作法 (個人)
- 拿到training data & testing data後，將ML每一階段的程式都寫在同一支程式。
> 優點:
> 1. 檔案結構簡單清楚，容易操作。
> 2. 如果Kaggle有附公開的程式碼，這樣是最快最容易重現結果的作法。
>
> 缺點:
> 1. 雖然ML pipeline中load data -> split data -> train model -> predict的流程都寫在同一支程式並用不同function隔開，但是需要人為記錄目前的stage是在哪個階段，並手動執行那個stage的function。
> 2. 帶有不同parameters的model需要儲存在自訂的資料夾，並手動記錄parameters和metrics value。當training的次數越多時，models、parameters和metrics的管理就會越來越困難。
> 3. 因為data、code、parameters、model和metrics沒有納入version control，所以當一段時間沒碰此專案時，就需要花很多時間回想。如果手上有更多這樣的專案，就會造成無法繼續學習的障礙。
### 初階: 用git管理程式碼 (一般程式)
> 優點:
> 1. 開始有程式碼歷史記錄，可回看之前修改記錄。
> 
> 缺點:
> 1. 程式碼和參數混合在一起。
> 2. Data、parameters、model和metrics沒有納入version control，仍存在前面大部份人作法的缺點1,2,3。
### 進階1: 加入MLOps工具鏈 (按使用順序:cookiecutter、dvc、mlflow、evidently、pytest、Flask、Github Actions和Heroku) (ML程式)
> 優點: 解決上述的缺點。不論是對於專案的改進或是自我學習都會有很大的進步。
> 
> 功能:
> 1. cookiecutter: 可下載適合data science的檔案結構模版，以利於檔案管理。
> 2. dvc: 用來作為data version control。dvc可辨別pipeline stage的差異，使執行pipeline時不用人為記錄就可以執行該執行的stage (不會重複執行已執行過的stage)。透過此專案的檔案結構設計，將params.yaml從程式碼中分出來，使得程式碼和參數可以分開管理 (未來在model tuning時可以針對參數的部份做自動設定，而不會影響程式碼)。
> 3. mlflow: 用來記錄實驗過程中的parameters和metrics變化，並可將report納入git管理。
> 4. evidently: 記錄model performance的數據。
> 5. pytest: 是Unit Test工具。
> 6. flask: web app，用在本地端的prediction網頁測試，是部署到Heroku之前的測試。
> 7. Heroku: 用在部署上線程式的server。
> 8. Github Actions: CI/CD pipeline，用在自動化build code和自動化部署至Heroku。
### 進階2: 將進階1產生的file system建造成Docker image
> 優點: 不用擔心隨著python和package的演進而造成程式無法執行的問題。




