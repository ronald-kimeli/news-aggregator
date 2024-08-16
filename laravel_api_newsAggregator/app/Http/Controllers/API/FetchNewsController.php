<?php

namespace App\Http\Controllers\API;

use Exception;
use App\Models\News;
use Illuminate\Support\Str;
use App\Http\Traits\GetNews;
use App\Http\Controllers\Controller;

class FetchNewsController extends Controller
{

    use GetNews;
    /**
     * Display a listing of the resource.
     */
    public function fetchNewsAPI()
    {
        // Set your news_API credentials
        $api_key = config('services.newsapi.news_api_key');

        $NEWS_API_ID = 1;

        try {
            $country = 'us';

            $pageSize = 20;

            $categories = ['general', 'business', 'sports', 'science', 'health', 'entertainment', 'technology'];

            foreach ($categories as $categ) {

                $query = $categ;

                $jsonResponse = $this->getNewsAPI($pageSize, $query, $api_key);

                $status = $jsonResponse->status;

                $totalResults = $jsonResponse->totalResults;

                $articles = $jsonResponse->articles;

                if ($status == 'ok') {

                    $insert_news = [];

                    foreach ($articles as $row) {
                        $row = (object) $row;

                        $source = $row->source;

                        $source = (object) $source;

                        $source_n = $source->name;
                        $source_s = $source->id;

                        $source_n ? $source_name = $source_n : $source_name = 'unknown';
                        $source_s ? $source_slug = $source_s : $source_slug = 'unknown';

                        $author_n = $row->author;
                        $author_n ? $author_name = $author_n : $author_name = 'unknown';

                        $author_slug = Str::slug($author_name);

                        //Fields

                        $title = $row->title;

                        $description = $row->description;

                        $content = $row->content;

                        $author_id = $this->ifAuthorExists($author_slug, $author_name);

                        $api_source_id = $NEWS_API_ID;

                        $real_source_id = $this->getRealSource_Id($source_slug, $source_name);

                        $category_id = $this->getCategoryId($categ);

                        $image = $this->getImageUrl($row,$source_slug);

                        $image ? $image_url = $image : $image_url = '';

                        $web_url = $row->url;

                        $published_at = date('Y-m-d H:i:s', strtotime($row->publishedAt));

                        $insert_news[] = $this->populateNews($title,$description,$content, $author_id, $api_source_id, $real_source_id, $category_id, $image_url,$web_url, $published_at);

                    }

                    News::insertOrIgnore($insert_news);

                    return response()->json(['status' => 'success', 'message' => 'News Saved Successfully'], 200);
                }
            }

        } catch (Exception $e) {
            return response()->json(['error' => $e->getMessage()], 400);
        }

    }


    public function fetchTheGurdianAPI()
    {
        // Set your news_API credentials
        $api_key = config('services.thegurdianapi.the_gurdian_api_key');

        $THE_GURDIAN_API = 3;

        try {

            $pageSize = 50;

            $categories = ['general', 'business', 'sports', 'science', 'health', 'entertainment', 'technology'];

            foreach ($categories as $categ) {

                $query = $categ;

                $jsonResponse = $this->getTheGuardianAPI($pageSize, $query, $api_key);

                $status = $jsonResponse->status;

                $totalResults = $jsonResponse->total;

                $totalpages = $jsonResponse->pages;

                $articles = $jsonResponse->results;

                if ($status == 'ok') {

                    $insert_news = [];

                    foreach ($articles as $row) {
                        $row = (object) $row;

                        $tags = $row->tags[0];
                        $tags = (object) $tags;

                        $fields = $row->fields;
                        $fields = (object) $fields;

                        $source_n = "The Gurdian";
                        $source_s = 'the-gurdian';

                        $source_n ? $source_name = $source_n : $source_name = 'unknown';
                        $source_s ? $source_slug = $source_s : $source_slug = 'unknown';

                        $author_n = @$tags->webTitle;
                        $author_n ? $author_name = $author_n : $author_name = 'unknown';

                        $author_slug = Str::slug($author_name);

                        //Fields

                        $title = $row->webTitle;

                        $description = $fields->headline;

                        $content = $row->sectionName;

                        $author_id = $this->ifAuthorExists($author_slug, $author_name);

                        $api_source_id = $THE_GURDIAN_API;

                        $real_source_id = $this->getRealSource_Id($source_slug, $source_name);

                        $category_id = $this->getCategoryId($categ);

                        $image = $fields->thumbnail;

                        $image ? $image_url = $image : $image_url = 'https://th.bing.com/th/id/OIP.QhTDYQE7jtXcW5zIIi2YIgHaHa?w=160&h=180&c=7&r=0&o=5&pid=1.7';

                        $web_url = $row->webUrl;

                        $published_at = date('Y-m-d H:i:s', strtotime($row->webPublicationDate));

                        $insert_news[] = $this->populateNews($title,$description,$content, $author_id, $api_source_id, $real_source_id, $category_id, $image_url,$web_url, $published_at);

                    }

                    News::insertOrIgnore($insert_news);

                    return response()->json(['status' => 'success', 'message' => 'News Saved Successfully'], 200);
                }

            }

        } catch (Exception $e) {
            return response()->json(['error' => $e->getMessage()], 400);
        }

    }



    public function fetchNewYorkTimesAPI()
    {
        // Set your news_API credentials
        $api_key = config('services.newyorktimes.the_newyorktimes_api_key');

        $THE_NEW_YORK_TIMES_API = 2;

        try {

            $pageSize = 50;

            $categories = ['general', 'business', 'sports', 'science', 'health', 'entertainment', 'technology'];

            // https://static01.nyt.com/

            foreach ($categories as $categ) {

                $query = $categ;

                $jsonResponse = $this->getNewYorkTimesAPI($pageSize, $query, $api_key);

                $status = $jsonResponse->status;

                $response = (object) $jsonResponse->response;

                $articles = (object) $response->docs;

                if ($status == 'OK') {

                    $insert_news = [];

                    foreach ($articles as $row) {
                        $row = (object) $row;

                        $multimedia = (object) $row->multimedia;

                        $byline = (object) $row->byline;
                        $name = trim($byline->original, "By");

                        $source_n = $row->source;
                        $source_s = Str::slug($source_n);

                        $source_n ? $source_name = $source_n : $source_name = 'unknown';
                        $source_s ? $source_slug = $source_s : $source_slug = 'unknown';

                        //Fields

                        $title = $row->section_name;

                        $description = $row->abstract;

                        $content = $row->lead_paragraph;

                        $api_source_id = $THE_NEW_YORK_TIMES_API;

                        $real_source_id = $this->getRealSource_Id($source_slug, $source_name);

                        $name ? $author_name = $name : $author_name = 'unknown';

                        $author_slug = Str::slug($author_name);

                        $author_id = $this->ifAuthorExists($author_slug, $author_name);
                        $category_id = $this->getCategoryId($categ);

                        foreach ($multimedia as $img) {
                            $img = (object) $img;
                            if ($img->subtype == 'jumbo') {
                                $image = 'https://static01.nyt.com/'.$img->url;

                                $image ? $image_url = $image : $image_url = '';
                            }
                        }

                        $web_url = $row->web_url;

                        $published_at = date('Y-m-d H:i:s', strtotime($row->pub_date));

                        $insert_news[] = $this->populateNews($title,$description,$content, $author_id, $api_source_id, $real_source_id, $category_id, $image_url,$web_url, $published_at);

                    }

                    News::insertOrIgnore($insert_news);

                    return response()->json(['status' => 'success', 'message' => 'News Saved Successfully'], 200);
                }

            }

        } catch (Exception $e) {
            return response()->json(['error' => $e->getMessage()], 400);
        }

    }

}
