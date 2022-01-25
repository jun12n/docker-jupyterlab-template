# Docker JupyterLab Template

## Overview
Docker上でJupyterLab環境を利用するためのテンプレート

## Usage  
### Docker  
```
# ビルドと起動  
$ docker compose up --build  
# 起動  
$ docker compose up  
# 停止  
$ docker compose stop  
```
  
### JupyterLabを開く  
http://localhost:8888 をブラウザで開く。  
  
  
## Pythonライブラリの追加  
追加したいライブラリはrequirements.txtに追記する  
  

## JupyterLabにインストール済みの拡張機能の確認  
```
$ jupyter serverextension list  
```

## JupyterLabの設定

"Terminal"の"User Preferences"  
```
{
    "fontFamily": "'Monaco', 'Roboto Mono', 'Migu 1M'"
}
```

"Theme"の"User Preferences"  
```
{
    "overrides": {
        "code-font-family": "'Monaco', 'Roboto Mono', 'Migu 1M', Consolas",
        "code-font-size": "10pt",
        "content-font-family": "'Migu 1C'",
        "content-font-size1": null,
        "ui-font-family": null,
        "ui-font-size1": null
    },

    "theme": "JupyterLab Light",
    "theme-scrollbars": false
}
```

"notebook"の"User Preferences"  
```
{
    "codeCellConfig": {
      "lineNumbers": true
    }
}
```
