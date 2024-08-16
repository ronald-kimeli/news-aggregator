<?php

namespace Database\Seeders;

use App\Models\Sources;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class SourcesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $sources = array("newsapi" => "The News API", "newyorktimes" => "The New York Times", "the-gurdian" => "The Gurdian");

        $insert_sources = [];
        foreach ($sources as $key => $value) {
            $insert_sources[] = [
                'name' => $value,
                'slug' => $key,
            ];
        }
        
        Sources::insert($insert_sources);
    }
}
