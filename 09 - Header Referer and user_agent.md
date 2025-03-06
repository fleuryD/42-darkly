# Darkly - École 42

## 09. Header Referer and user_agent

- On click sur `© BornToSec` en bas de page

- On arrive sur une page avec un gros pigeon-marin, on affiche le code (ctrl+U)

- (il ne faut pas "inspecter" avec F12 car les commentaires ne sont pas affiches)

- On peut scroll DOWN et scroll RIGHT pour voir les commentaires :

```
<!--
You must come from : "https://www.nsa.gov/".
...
Let's use this browser : "ft_bornToSec". It will help you a lot.
-->

```

Dans une requête HTTP, vous pouvez modifier divers éléments du header, tels que :

- User-Agent : Identifie le logiciel utilisateur (par exemple, le navigateur) utilisé pour effectuer la requête.
- Referer : Spécifie l'URL de la page précédente à partir de laquelle la requête a été déclenchée.

```
clear; chmod 777 ./09-script-header.sh && ./09-script-header.sh
```

### 09-script-header.sh :

```
#!/bin/bash

url="http://10.12.200.47/?page=b7e44c7a40c5f80139f0a50f3650fb2bd8d00b0d24667c4c2ca32c88e13b758f"
referer="https://www.nsa.gov/"
user_agent="ft_bornToSec"

curl -H "Referer: $referer" -A "$user_agent" $url

```

ou executer cette commande :

```
curl -H "Referer: https://www.nsa.gov/" -A "ft_bornToSec" "http://10.12.200.47/?page=b7e44c7a40c5f80139f0a50f3650fb2bd8d00b0d24667c4c2ca32c88e13b758f"
```
