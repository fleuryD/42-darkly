# Darkly - École 42

## 08. XSS Feedback

- Sur la page feedback

- J'ai essayé je l'injection SQL, mais on a pas d'erreur qui s'affiche
- J'ai modifié maxlength sur les 2 inputs pour envoyer des valeurs plus grandes. (le nom peut etre plus long, mais pas le message)

- `<script>` >>> VIDE

- `<?php` >>> VIDE

- `<img href="sdfsdfsdf" />` >>> VIDE

- `<script>alert(1)</script>` >>> `alert(1)`

- `&lt;script&gt;` >>> `&lt;script&gt;`

- `qqq < www > eee <rrr>` >>> `qqq < www > eee`

- `alert(1)` >>> `alert(1)`

- `alert` >>> FLAG !!!!
