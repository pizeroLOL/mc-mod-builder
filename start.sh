name: Build 
on: [ push,pull_request ] #使用条件，默认为push和pull request。需要更改的请自行查找关键词
jobs:
  build:
    runs-on: ubuntu-latest #运行环境
    steps:
      - uses: actions/checkout@v3 
        name: fork repo
    - uses: actions/checkout@v2
    #jdk11不需要就删
    
    - name: Setup Java JDK 11 
      uses: actions/setup-java@v3.3.0
      with: 
        java-version: '11'
        distribution: 'temurin'
        java-package: jdk
        
        #jdk18不需要就删
    - name: Setup Java JDK 18 
      uses: actions/setup-java@v3.3.0
      with: 
        java-version: '18'
        distribution: 'temurin'
        java-package: jdk
        
        #jdk8不需要就删
    - name: Setup Java JDK 8
      uses: actions/setup-java@v3.3.0
      with: 
        java-version: '8'
        distribution: 'temurin'
        java-package: jdk
      - name: build
        run: |
          #jdk8不需要就删
          export JAVA8_HOME=/opt/hostedtoolcache/Java_Temurin-Hotspot_jdk/8.0.332-9/x64
          #jdk18不需要就删
          export JAVA18_HOME=/opt/hostedtoolcache/Java_Temurin-Hotspot_jdk/18.0.1-10/x64
          #jdk11不需要就删
          export JAVA11_HOME=/opt/hostedtoolcache/Java_Temurin-Hotspot_jdk/11.0.15-10/x64   
          sh ./gradlew build --refresh-dependencies -Dfile.encoding=UTF-8 --info
          cp -rf ./build/libs /opt/build
      - name: upload
        uses: actions/upload-artifact@v3
        with:
          name: testbuild
          path: /opt/build #生成的位置
