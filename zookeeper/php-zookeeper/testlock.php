<?php

// https://symfony.com/doc/current/components/lock.html#zookeeperstore

require __DIR__ . '/vendor/autoload.php';

use Symfony\Component\Lock\LockFactory;
use Symfony\Component\Lock\Store\ZookeeperStore;

$host = '192.168.22.102:12181,192.168.22.103:12181,192.168.22.104:12181';
// comma separated zookeeper servers

$zookeeper = new \Zookeeper($host);

$store = new ZookeeperStore($zookeeper);

$factory = new LockFactory($store);

$lock = $factory->createLock('testlock', 30);

if ($lock->acquire()) {
    echo 'lock acquired' . PHP_EOL;

    $lock->release();
}
