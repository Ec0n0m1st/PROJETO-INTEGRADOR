<?php

abstract class DatabaseConnection {
    protected function connectDb() {
        $databasePath = dirname(__DIR__) . '/database/powerplant.db';
        return new PDO("sqlite:" . $databasePath);
    }
}