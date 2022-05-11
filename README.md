# mc 模组自动编译
基于gradlew文件的模组自动编译，理论上只要有这个文件都能用
## 使用方法
1. fork该库并改为仅自己可见
2. 将自己的文件的下载地址放到.github/workflows/main.yml文件下环境变量（env）下的DL_URL变量
3. 更改Pack_Name变量（下载文件的*.zip中的*）
4. 更改Open_Pack_Name变量（解压缩的文件夹）。如果解压直接有gradlew文件Open_Pack_Name变量可以不填，但一定要把<>和里面的内容删了。以及更改的时候顺便是把<>和里面的内容覆盖不然没用
5. 等待action文件执行完成
6. 进行下载
