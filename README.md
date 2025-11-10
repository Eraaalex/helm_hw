### Запуск

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