require 'rubygems'
require 'redis'
require 'Oj'
redis = Redis.new(:host => "localhost", :port => 6379)
word_hash = {
	"words" => [
		{
			"name" => "umbrella",
			"correlation" => [
				"open",
				"rain",
				"raincoat"
			],
			"show" => [1,1,0,0,0,0,0,0],
			"AI" => [0,0,1,2,3,4,5,6]
		},
		{
			"name" => "book",
			"correlation" => [
				"read",
				"paper",
				"study"
			],
			"show" => [1,0,0,0],
			"AI" => [0,1,2,3]
		}
	]
}
redis.set "test_json" Oj.dump(word_hash)