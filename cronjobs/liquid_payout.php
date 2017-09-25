#!/usr/bin/php
<?php

// Change to working directory
chdir(dirname(__FILE__));

// Include all settings and classes
require_once('shared.inc.php');

// Check for RPC connection
if ($bitcoin->can_connect() === true){
$dBalance = $bitcoin->getbalance();

// Check wallet balance
$log->logDebug("The wallet balance is " .$dBalance. "");
$dGetInfo = $bitcoin->getinfo();

// Check for POS mint
if (is_array($dGetInfo) && array_key_exists('newmint', $dGetInfo)) {
$dNewmint = $dGetInfo['newmint'];
$log->logDebug("Current mint is: " .$dNewmint );
} else {
  $dNewmint = -1;
}
} else {
  $dBalance = 0;
  $dNewmint = -1;
  $log->logError('Unable to connect to wallet RPC service');
}

// Fetch locked balance from transactions
$dLockedBalance = $transaction->getLockedBalance();
$log->logDebug("The locked wallet balance for users is: " .$dLockedBalance. "");

// Fetch final wallet balance after transfer
$dFloat = $dLockedBalance + $config['coldwallet']['reserve'];
$dThreshold = $config['coldwallet']['threshold'];
$sendAddress = $config['coldwallet']['address'];
$log->logDebug("The locked wallet balance and float amounts to: " .$dFloat. "");

// Send liquid balance
$send = $dBalance - $dFloat;
$log->logInfo("Liquid amount : " .number_format($send,8). "");
if($send > $dThreshold){
        if($sendAddress !== ''){
                $bitcoin->sendtoaddress($sendAddress, number_format($send,8));
				$log->logInfo("Liquid amount of " .number_format($send,8). " sent to wallet address " .$sendAddress. "");
        }
        else {
                $log->logInfo("No wallet address set");
        }
}
else{
        $log->logInfo("Liquid amount does not exceed the set threshold of " .$dThreshold. "");
}

// Monitoring cleanup and status update
$monitoring->endCronjob($cron_name, 'OK', 0, false, false);
$monitoring->setStatus($cron_name . "_runtime", "time", microtime(true) - $cron_start[$cron_name]);
$monitoring->setStatus($cron_name . "_endtime", "date", time());
