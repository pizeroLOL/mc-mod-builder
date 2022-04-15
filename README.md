# mc-1.12.2-auto
forge模组自动编译
## 使用方法
1. fork该库并改为仅自己可见
2. 将自己的文件的下载地址放到.github/workflows/main.yml文件下并修改环境变量（env）下的DL_URL变量，并更改Pack_Name（下载文件的*.zip中的*）与Open_Pack_Name解压缩的文件夹。
如果解压直接有gradlew文件Open_Pack_Name变量可以不填，但一定要把<>和里面的内容删了。以及更改的时候顺便是把<>和里面的内容覆盖不然没用
3. 等待action文件执行完成
4. 进行下载
