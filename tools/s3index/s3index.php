<?php

include(__DIR__ . '/S3Lib.php');

$s3cfg = file_get_contents(getenv('HOME') . '/.s3cfg');
preg_match('#secret_key = (.*)#', $s3cfg, $matches);
$secret_key = $matches[1];
preg_match('#access_key = (.*)#', $s3cfg, $matches);
$access_key = $matches[1];

putenv('S3_KEY=' . $access_key);
putenv('S3_SECRET=' . $secret_key);

if (!preg_match('#^s3://#', $_SERVER['argv'][1])) {
    throw new Exception("Usage: s3index s3://bucket/path");
}
S3Lib::buildIndex($_SERVER['argv'][1]);
