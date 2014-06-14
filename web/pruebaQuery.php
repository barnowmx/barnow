<?php
include('../app/librerias/adodb/adodb.inc.php');

$server = 'localhost';
$user	= 'root';
$pwd	= '';
$db     = 'barnow';

$DB = NewADOConnection('mysql');
$DB->Connect($server, $user, $pwd, $db);

# M'soft style data retrieval with binds
$rs = $DB->Execute("select * from pais");
while (!$rs->EOF) {
    print_r($rs->fields);
    $rs->MoveNext();
}