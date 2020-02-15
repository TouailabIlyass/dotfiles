<?php
set_time_limit(0);
function curl_($num){
$ch = curl_init();
curl_setopt($ch, CURLOPT_POST, 0);
curl_setopt($ch, CURLOPT_URL, "http://natiga.nezakr.org/api.php?accesstoken=123456788&appkey=123456788&t=num&k".$num);
curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36");
//curl_setopt( $ch, CURLOPT_REFERER, "http://natega.youm7.com/");
curl_setopt ($ch, CURLOPT_SSL_VERIFYHOST, 3);
curl_setopt ($ch, CURLOPT_SSL_VERIFYPEER, 0);
curl_setopt ($ch, CURLOPT_FORBID_REUSE, 1);
//curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

// curl_setopt($ch, CURLOPT_POSTFIELDS, $jscc);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_HEADER, 0);
$result = curl_exec($ch);
return $result;
curl_close($ch);
}

يعني لو انا عايز اجيب نتيجة اول 100000 طالب مثلا هكتب
for($num = 1;$num <= 100000;$num++){
echo curl_($num);
}
com2
$nume = 613412;
for($i = 0; $i <= 1000;$i++):
echo "<br>";
echo curl_($nume++);
echo "<br>";
echo "#########+++++++++++++++++++++++++++++++++++++++++++++++++++++++";
flush();
ob_flush();
endfor;
comx
حولها ل json
json_decode(curl($num));