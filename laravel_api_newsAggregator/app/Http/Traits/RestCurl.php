<?php

namespace App\Http\Traits;

trait RestCurl {
    public static function exec($method, $url, $Headers, $obj = array()) {

        $curl = curl_init();

        switch($method) {
          case 'GET':
            if(strrpos($url, "?") === FALSE) {
              $url .= '?' . http_build_query($obj);
            }
            break;

          case 'POST':
            curl_setopt($curl, CURLOPT_POST, TRUE);
            curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode($obj));
            break;

          case 'PUT':
          case 'DELETE':
          default:
            curl_setopt($curl, CURLOPT_CUSTOMREQUEST, strtoupper($method)); // method
            curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode($obj)); // body
        }

        curl_setopt($curl, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($curl, CURLOPT_HTTPHEADER, $Headers);
        curl_setopt($curl, CURLOPT_USERAGENT,'kimeliryans@gmail.com');
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_HEADER, TRUE);
        curl_setopt($curl, CURLOPT_FOLLOWLOCATION, TRUE);
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($curl,CURLOPT_SSL_VERIFYHOST, FALSE);

        // Exec
        $response = curl_exec($curl);
        $info = curl_getinfo($curl);
        curl_close($curl);

        // Data
        $body = substr($response, $info['header_size']);

        return array('status' => $info['http_code'],'data' => json_decode($body));
      }

      public static function get($url, $obj = array()) {
         return RestCurl::exec("GET", $url, $obj);
      }

      public static function post($url, $obj = array()) {
         return RestCurl::exec("POST", $url, $obj);
      }

      public static function put($url, $obj = array()) {
         return RestCurl::exec("PUT", $url, $obj);
      }

      public static function delete($url, $obj = array()) {
         return RestCurl::exec("DELETE", $url, $obj);
      }
}
