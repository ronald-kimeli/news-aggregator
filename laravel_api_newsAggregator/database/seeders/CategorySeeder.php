<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
   
        $categories = array("business" => "Business", "entertainment" => "Entertainment", "general" => "General", "health" => "Health", "science" => "Science", "sports" => "Sports", "technology" => "Technology");

        $insert_categories = [];
        foreach ($categories as $key => $value) {
            $insert_categories[] = [
                'name' => $value,
                'slug' => $key,
            ];
        }
        
        Category::insert($insert_categories);
    }
}
