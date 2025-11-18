### HW

См. папку charts

* В модуль muffin-wallet в чарт добавлена зависимость muffin-currency, указывается в файле:
  charts/muffin-wallet/Chart.yaml
  (просто так)

При сборке загружается командой

```
helm dependency build charts/muffin-wallet
```

Для удобства развёртывания создан helmfile управляет установкой релиза muffin-wallet, подхватывает зависимость
muffin-currency, разворачивает оба сервиса

Все можно развернуть через: 
```bash
helm upgrade --install muffin-wallet charts/muffin-wallet
```
или
```bash
helmfile sync
```

------
Old:

### Запуск muffin-currency

В папке чарта:

```
helm install muffin .
kubectl get deploy,svc,pods -l app=muffin-currency
```

Доступ к сервису:

```
kubectl port-forward svc/muffin-currency 8083:8083
```

Обновления через:

```
helm upgrade muffin . --set <variable>=<value>
```

Пример обновления отката:

```
helm upgrade muffin . --set image.tag=1.0.1

helm history muffin
helm rollback muffin 1
```