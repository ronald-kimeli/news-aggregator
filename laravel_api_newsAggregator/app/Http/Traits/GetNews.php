<?php

namespace App\Http\Traits;

use App\Models\Author;
use App\Models\Sources;
use App\Models\Category;
use App\Models\Real_Sources;
use Illuminate\Support\Facades\Http;

trait GetNews
{

    public $pageSize;
    public $query;
    public $api_key;
    public $author_slug;
    public $author_name;
    public $source_name;
    public $source_slug;


    public function getNewsAPI($pageSize, $query, $api_key)
    {
        // Construct the NewsAPI URL with query parameters
        $url = "https://newsapi.org/v2/top-headlines?sortBy=popularity&pageSize={$pageSize}&q={$query}&apiKey={$api_key}";

        // Make the HTTP request to the NewsAPI
        $response = Http::get($url);
        $jsonResponse = $response->json();
        $Response = (object) $jsonResponse;

        return $Response;
    }

    public function ifAuthorExists($author_slug, $author_name)
    {
        $authors = Author::Where('slug', $author_slug)->first();

        if (!$authors) {

            $authors = Author::create([
                'name' => $author_name,
                'slug' => $author_slug,
            ]);

            $author_id = $authors->id;

            return $author_id;
        } else {
            $authors_id = $authors->id;
            return $authors_id;
        }
    }

    public function getRealSource_Id($source_slug, $source_name)
    {
        $real_sources = Real_Sources::Where('slug', $source_slug)->first();

        if (!$real_sources) {

            $sources = Real_Sources::create([
                'name' => $source_name,
                'slug' => $source_slug,
            ]);

            $source_id = $sources->id;
            return $source_id;
        } else {
            $real_sources_id = $real_sources->id;
            return $real_sources_id;
        }
    }

    public function getCategoryId($category)
    {
        $categories = Category::Where('slug', $category)->first();

        if (!$categories) {
            return false;
        } else {
            $category_id = $categories->id;
            return $category_id;
        }
    }

    public function getTheGuardianAPI($pageSize, $query, $api_key)
    {
        // Construct the NewsAPI URL with query parameters

        $url = "https://content.guardianapis.com/search?q={$query}&page-size={$pageSize}&format=json&tag=film/film,tone/reviews&show-tags=contributor&show-fields=headline,thumbnail,short-url&order-by=relevance&api-key={$api_key}";
        // Make the HTTP request to the NewsAPI
        $response = Http::get($url);
        $jsonResponse = $response->json();
        $Response = (object) $jsonResponse;
        $finalResponse = (object) $Response->response;

        return $finalResponse;
    }

    public function getNewYorkTimesAPI($pageSize, $query, $api_key)
    {
        // Construct the NewsAPI URL with query parameters

        $url = "https://api.nytimes.com/svc/search/v2/articlesearch.json?q={$query}&sort=newest&api-key={$api_key}";
        // Make the HTTP request to the NewsAPI
        $response = Http::get($url);
        $jsonResponse = $response->json();
        $Response = (object) $jsonResponse;

        return $Response;
    }

    public function populateNews($title, $description, $content, $author_id, $api_source_id, $real_source_id, $category_id, $image_url, $web_url, $published_at)
    {
        $news_array =  [
            'title' => $title,
            'description' => $description,
            'content' => $content,
            'author_id' => $author_id,
            'api_source_id' => $api_source_id,
            'real_source_id' => $real_source_id,
            'category_id' => $category_id,
            'image_url' => $image_url,
            'web_url' => $web_url,
            'published_at' => $published_at
        ];

        return $news_array;
    }

    public function getImageUrl($row, $source_slug)
    {
        // if ($source_slug == 'spiegel-online') {
        //     $explode = explode('/images/', $row->urlToImage);
        //     $urlToImage = 'https://cdn.prod.www.spiegel.de/images/' . end($explode);
        //     return $urlToImage;
        // } else {
            return $row->urlToImage;
        // }
    }
}
