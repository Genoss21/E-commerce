<?php
class Database {
    private static $host = 'localhost';
    private static $dbname = 'ecommerce';
    private static $username = 'root';
    private static $password = '';

    public static function connect() {
        return new PDO("mysql:host=" . self::$host . ";dbname=" . self::$dbname, self::$username, self::$password);
    }
}
?>
