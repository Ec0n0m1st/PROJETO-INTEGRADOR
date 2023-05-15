<?php
require('DatabaseConnection.php');

class AppController extends DatabaseConnection {
    public function getByCategory($category) {
        $db = $this->connectDb();
        $query = $db->prepare('
            SELECT * FROM meals WHERE categoria = :category;
        ');
        
        try{
            $query->execute(['category' => $category]);
            return $query->fetchAll();
        } catch(PDOException $e) {
            echo "Statement failed: " . $e->getMessage();
            return false;
        }
    }

    public function getByFilter($category, $term) {
        $db = $this->connectDb();
        $query = $db->prepare('
            SELECT * FROM meals 
            WHERE categoria = :category 
            AND LOWER(nome) LIKE :term;
        ');
        
        try{
            $query->execute([
                'category' => $category, 
                'term' => '%'.strtolower($term).'%'
            ]);

            return $query->fetchAll();
        } catch(PDOException $e) {
            echo "Statement failed: " . $e->getMessage();
            return false;
        }
    }
}