<?php
// Text
$_['text_title']           = 'BitCoin';
$_['text_title_disabled']  = 'BitCoin (<strong id="change-currency-to-btc">change currency to Bitcoin first</strong>)<script>$("input[value=bitcoin]").attr("disabled","disabled").attr("checked",false);$("#change-currency-to-btc").on("click",function(){$.post("%s",{code:"%s"},function(){window.location.href="%s"})});</script>';
$_['text_instruction']     = 'Payment Instructions';
$_['text_description']     = 'Please transfer %s to the following BitCoin Address:';
$_['text_bitcoin_address'] = 'Payment Address: %s';
