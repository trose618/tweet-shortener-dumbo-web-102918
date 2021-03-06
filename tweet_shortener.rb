require 'pry'
# Write your code here.
def word_substituter(tweet)
  words = tweet.split(" ")
 shortened_sent = words.collect do |word|
    if dictionary.keys.include?(word)
        dictionary[word]
      else 
        word
      end
    end 
  #binding.pry
  shortened_sent.join(" ")
end

def dictionary
  {"hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "For" => '4',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def bulk_tweet_shortener(tweets)
  
   tweets.each do |tweet|
   puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
    if tweet.split("").length > 140
      word_substituter(tweet)
    else
      tweet
    end
end

def shortened_tweet_truncator(tweet)
  if tweet.split("").size > 140
    tweet[0..136] << "..."
  else
    tweet
  end
end