<?php 
function encrypt($sData, $sKey='LamThanhBinh'){
    $sData .= '|||' . microtime();
    $sResult = '';
    for($i=0;$i<strlen($sData);$i++){
        $sChar    = substr($sData, $i, 1);
        $sKeyChar = substr($sKey, ($i % strlen($sKey)) - 1, 1);
        $sChar    = chr(ord($sChar) + ord($sKeyChar));
        $sResult .= $sChar;
    }
    return encode_base64($sResult);
}

function decrypt($sData, $sKey='LamThanhBinh'){
    $sResult = '';
    $sData   = decode_base64($sData);
    for($i=0;$i<strlen($sData);$i++){
        $sChar    = substr($sData, $i, 1);
        $sKeyChar = substr($sKey, ($i % strlen($sKey)) - 1, 1);
        $sChar    = chr(ord($sChar) - ord($sKeyChar));
        $sResult .= $sChar;
    }
    $pos = strrpos($sResult, '|||');
    $sResult = substr($sResult, 0, $pos);
    return $sResult;
}
function encode_base64($sData){
        $sBase64 = base64_encode($sData);
        return substr(strtr($sBase64, '+/', '-_'), 0, -1);
}

function decode_base64($sData){
        $sBase64 = strtr($sData, '-_', '+/');
        return base64_decode($sBase64.'==');
}